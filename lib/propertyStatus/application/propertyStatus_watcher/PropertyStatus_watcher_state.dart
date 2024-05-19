part of 'PropertyStatus_watcher_bloc.dart';

@freezed
class PropertyStatusWatcherState with _$PropertyStatusWatcherState {
  const factory PropertyStatusWatcherState.initial() = _Initial;
  const factory PropertyStatusWatcherState.loadInProgress() = _LoadInProgress;
  const factory PropertyStatusWatcherState.loadSuccess(
      PropertyDetailsObject propertyList) = _LoadSuccess;
  const factory PropertyStatusWatcherState.loadFailure(
      ListPropertyFailure listPropertyFailure) = _LoadFailure;
}