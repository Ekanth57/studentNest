import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat_facade.dart';
import '../../domain/chat_failure.dart';
import '../../domain/chat_object.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc
    extends Bloc<ChatEvent, ChatState> {
  final IChatFacade _chatFacade;

  ChatBloc(this._chatFacade)
      : super(ChatState.initial());

  @override
  Stream<ChatState> mapEventToState(
      ChatEvent event,) async* {
    yield* event.map(
      spaceid: (e) async* {
        yield state.copyWith(
          propertyId: e.propertyId,
          authFailureOrSuccessOption: none(),
        );
      },
      userType: (e) async* {
        yield state.copyWith(
          userType: e.userType,
          authFailureOrSuccessOption: none(),
        );
      },
      chat: (e) async* {
        yield state.copyWith(
          chat: e.chat,
          authFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        Either<ChatFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _chatFacade.chatSubmit(
            propertyId: state.propertyId, chatObject: state.chat,userType: state.userType);
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}