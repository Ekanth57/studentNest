part of 'rentDetails_watcher_bloc.dart';

@freezed
class RentDetailsWatcherState with _$RentDetailsWatcherState {
  const factory RentDetailsWatcherState.initial() = _Initial;
  const factory RentDetailsWatcherState.loadInProgress() = _LoadInProgress;
  const factory RentDetailsWatcherState.loadSuccess(
      RentDetailsObject? rentDetailsObject) = _LoadSuccess;
  const factory RentDetailsWatcherState.loadFailure(
      RentDetailsFailure rentDetailsFailure) = _LoadFailure;
}
