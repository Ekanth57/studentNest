
part of 'listProperty_watcher_bloc.dart';

@freezed
class ListPropertyWatcherState with _$ListPropertyWatcherState {
  const factory ListPropertyWatcherState.initial() = _Initial;
  const factory ListPropertyWatcherState.loadInProgress() = _LoadInProgress;
  const factory ListPropertyWatcherState.loadSuccess(
      List<PropertyDetailsObject> propertyList) = _LoadSuccess;
  const factory ListPropertyWatcherState.loadFailure(
      ListPropertyFailure listPropertyFailure) = _LoadFailure;
}