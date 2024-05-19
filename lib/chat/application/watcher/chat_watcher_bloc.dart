import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat_facade.dart';
import '../../domain/chat_failure.dart';
import '../../domain/chat_object.dart';



part 'chat_watcher_bloc.freezed.dart';
part 'chat_watcher_event.dart';
part 'chat_watcher_state.dart';

@injectable
class ChatWatcherBloc
    extends Bloc<ChatWatcherEvent, ChatWatcherState> {
  final IChatFacade _chatRepository;
  ChatWatcherBloc(this._chatRepository)
      : super(const ChatWatcherState.initial());

  StreamSubscription<Either<ChatFailure, ChatObject?>>?
  _streamSubscription;

  @override
  Stream<ChatWatcherState> mapEventToState(
      ChatWatcherEvent event,
      ) async* {
    yield* event.map(

      watchAllStarted: (e) async* {
        yield const ChatWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _chatRepository
            .chatWatchAll(e.id)
            .listen((failureOrBookings) {
          add(ChatWatcherEvent.chatReceived(
              failureOrBookings));
        });
      },
      watchAllStartedAdmin: (e) async* {
        yield const ChatWatcherState.loadInProgress();
            await _streamSubscription?.cancel();
            _streamSubscription =_chatRepository
                .chatWatchAllAdmin(e.id, e.userId)
                .listen((failureOrBookings) {
              add(ChatWatcherEvent.chatReceived(
                  failureOrBookings));
            });

      },
      chatReceived: (e) async* {
        yield e.failureOrChat.fold(
              (f) => ChatWatcherState.loadFailure(f),
              (filters) => ChatWatcherState.loadSuccess(filters),
        );
      },
      chatReceivedAdmin: (e) async* {
        yield e.failureOrChat.fold(
              (f) => ChatWatcherState.loadFailure(f),
              (filters) => ChatWatcherState.loadSuccess(filters),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
