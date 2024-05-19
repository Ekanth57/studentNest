part of 'adminChatListWatcher_bloc.dart';

@freezed
class AdminChatListWatcherEvent with _$AdminChatListWatcherEvent {
  const factory AdminChatListWatcherEvent.watchAllStarted(String markerId) =
  _WatchAllStarted;
  const factory AdminChatListWatcherEvent.chatWatched(
      Either<ChatFailure, List<ChatObject>> failureOrProperty,
      ) = _chatReceived;
}

