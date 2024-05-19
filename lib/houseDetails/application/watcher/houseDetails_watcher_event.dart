part of 'houseDetails_watcher_bloc.dart';

@freezed
class HouseDetailsWatcherEvent with _$HouseDetailsWatcherEvent {
  const factory HouseDetailsWatcherEvent.watchAllStarted(String id) =
  _WatchAllStarted;
  const factory HouseDetailsWatcherEvent.houseDetailsReceived(
      Either<HouseDetailsFailure, HouseDetailsObject?>
      failureOrHouseDetails,
      ) = _HouseDetailsReceived;
}
