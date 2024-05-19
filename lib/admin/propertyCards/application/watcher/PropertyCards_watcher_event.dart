part of 'PropertyCards_watcher_bloc.dart';



@freezed
class PropertyCardWatcherEvent with _$PropertyCardWatcherEvent {
  const factory PropertyCardWatcherEvent.watchAllStarted() =
  _WatchAllStarted;
  const factory PropertyCardWatcherEvent.propertyWatched(
      Either<PropertyCardFailure, List<PropertyDetailsObject>> failureOrProperty,
      ) = _PropertyReceived;
}

