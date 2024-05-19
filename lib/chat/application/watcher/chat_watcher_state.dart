part of 'chat_watcher_bloc.dart';

@freezed
class ChatWatcherState with _$ChatWatcherState {
  const factory ChatWatcherState.initial() = _Initial;
  const factory ChatWatcherState.loadInProgress() = _LoadInProgress;
  const factory ChatWatcherState.loadSuccess(
      ChatObject? chatObject) = _LoadSuccess;
  const factory ChatWatcherState.loadFailure(
      ChatFailure chatFailure) = _LoadFailure;
}
