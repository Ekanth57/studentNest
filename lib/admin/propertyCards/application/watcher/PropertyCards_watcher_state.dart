
part of 'PropertyCards_watcher_bloc.dart';


@freezed
class PropertyCardWatcherState with _$PropertyCardWatcherState {
  const factory PropertyCardWatcherState.initial() = _Initial;
  const factory PropertyCardWatcherState.loadInProgress() = _LoadInProgress;
  const factory PropertyCardWatcherState.loadSuccess(
      List<PropertyDetailsObject> propertyList) = _LoadSuccess;
  const factory PropertyCardWatcherState.loadFailure(
      PropertyCardFailure propertyCardFailure) = _LoadFailure;
}