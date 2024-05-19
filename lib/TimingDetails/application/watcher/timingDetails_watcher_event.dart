part of 'timingDetails_watcher_bloc.dart';

@freezed
class TimingDetailsWatcherEvent with _$TimingDetailsWatcherEvent {
  const factory TimingDetailsWatcherEvent.watchAllStarted(String id) =
  _WatchAllStarted;
  const factory TimingDetailsWatcherEvent.timingDetailsReceived(
      Either<TimingFailure, TimingDetailsObject?>
      failureOrTimingDetails,
      ) = _TimingDetailsReceived;
}

