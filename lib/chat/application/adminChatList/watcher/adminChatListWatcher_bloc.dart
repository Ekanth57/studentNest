import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:studentnest/chat/domain/chat_facade.dart';

import '../../../domain/chat_failure.dart';
import '../../../domain/chat_object.dart';




part 'adminChatListWatcher_bloc.freezed.dart';
part 'adminChatListWatcher_event.dart';
part 'adminChatListWatcher_state.dart';

@injectable
class AdminChatListWatcherBloc extends Bloc<AdminChatListWatcherEvent, AdminChatListWatcherState> {
  final IChatFacade adminChatListWatcherRepository;

  AdminChatListWatcherBloc(this.adminChatListWatcherRepository)
      : super(const AdminChatListWatcherState.initial());

  late StreamSubscription<Either<ChatFailure, List<ChatObject>>>
  propertyStreamSubscription;

  @override
  Stream<AdminChatListWatcherState> mapEventToState(
      AdminChatListWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const AdminChatListWatcherState.loadInProgress();
        propertyStreamSubscription =
            adminChatListWatcherRepository.chatListWatch(e.markerId).listen(
                  (failureOrBookings) =>
                  add(AdminChatListWatcherEvent.chatWatched(failureOrBookings)),
            );
      },
      chatWatched: (e) async* {
        yield e.failureOrProperty.fold(
              (f) => AdminChatListWatcherState.loadFailure(f),
              (assets) => AdminChatListWatcherState.loadSuccess(assets),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
