part of 'PropertyStatus_watcher_bloc.dart';

@freezed
class PropertyStatusWatcherEvent with _$PropertyStatusWatcherEvent {
  const factory PropertyStatusWatcherEvent.watchAllStarted(String propertyId) =
  _WatchAllStarted;
  const factory PropertyStatusWatcherEvent.propertyWatched(
      Either<ListPropertyFailure, PropertyDetailsObject> failureOrProperty,
      ) = _PropertyReceived;
}