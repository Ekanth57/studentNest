part of 'listProperty_watcher_bloc.dart';

@freezed
class ListPropertyWatcherEvent with _$ListPropertyWatcherEvent {
  const factory ListPropertyWatcherEvent.watchAllStarted() =
  _WatchAllStarted;
  const factory ListPropertyWatcherEvent.propertyWatched(
      Either<ListPropertyFailure, List<PropertyDetailsObject>> failureOrProperty,
      ) = _PropertyReceived;
}

