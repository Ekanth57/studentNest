
part of 'adminChatListWatcher_bloc.dart';

@freezed
class AdminChatListWatcherState with _$AdminChatListWatcherState {
  const factory AdminChatListWatcherState.initial() = _Initial;
  const factory AdminChatListWatcherState.loadInProgress() = _LoadInProgress;
  const factory AdminChatListWatcherState.loadSuccess(
      List<ChatObject> chatList) = _LoadSuccess;
  const factory AdminChatListWatcherState.loadFailure(
      ChatFailure chatFailure) = _LoadFailure;
}