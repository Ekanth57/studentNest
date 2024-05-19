part of 'houseDetails_watcher_bloc.dart';

@freezed
class HouseDetailsWatcherState with _$HouseDetailsWatcherState {
  const factory HouseDetailsWatcherState.initial() = _Initial;
  const factory HouseDetailsWatcherState.loadInProgress() = _LoadInProgress;
  const factory HouseDetailsWatcherState.loadSuccess(
      HouseDetailsObject? houseDetailsObject) = _LoadSuccess;
  const factory HouseDetailsWatcherState.loadFailure(
      HouseDetailsFailure houseDetailsFailure) = _LoadFailure;
}
