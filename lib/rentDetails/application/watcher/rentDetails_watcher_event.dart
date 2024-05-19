part of 'rentDetails_watcher_bloc.dart';

@freezed
class RentDetailsWatcherEvent with _$RentDetailsWatcherEvent {
  const factory RentDetailsWatcherEvent.watchAllStarted(String id) =
  _WatchAllStarted;
  const factory RentDetailsWatcherEvent.rentDetailsReceived(
      Either<RentDetailsFailure, RentDetailsObject?>failureOrRentDetails) = _RentDetailsReceived;
}
