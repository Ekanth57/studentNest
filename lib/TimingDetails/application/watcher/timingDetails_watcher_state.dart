part of 'timingDetails_watcher_bloc.dart';

@freezed
class TimingDetailsWatcherState with _$TimingDetailsWatcherState {
  const factory TimingDetailsWatcherState.initial() = _Initial;
  const factory TimingDetailsWatcherState.loadInProgress() = _LoadInProgress;
  const factory TimingDetailsWatcherState.loadSuccess(
      TimingDetailsObject? timingDetailsDetails) = _LoadSuccess;
  const factory TimingDetailsWatcherState.loadFailure(
      TimingFailure timingDetailsFailure) = _LoadFailure;
}
