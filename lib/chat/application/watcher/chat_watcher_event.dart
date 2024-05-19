part of 'chat_watcher_bloc.dart';

@freezed
class ChatWatcherEvent with _$ChatWatcherEvent {
  const factory ChatWatcherEvent.watchAllStarted(String id) =
  _WatchAllStarted;

  const factory ChatWatcherEvent.watchAllStartedAdmin(String id,String userId) =
  _WatchAllStartedAdmin;
  const factory ChatWatcherEvent.chatReceived(Either<ChatFailure, ChatObject?>failureOrChat,
      ) = _ChatReceived;

  const factory ChatWatcherEvent.chatReceivedAdmin(Either<ChatFailure, ChatObject?>failureOrChat,
      ) = _ChatReceivedAdmin;
}
