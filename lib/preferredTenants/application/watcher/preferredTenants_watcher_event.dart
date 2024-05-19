part of 'preferredTenants_watcher_bloc.dart';

@freezed
class PreferredTenantsWatcherEvent with _$PreferredTenantsWatcherEvent {
  const factory PreferredTenantsWatcherEvent.watchAllStarted(String id) =
  _WatchAllStarted;
  const factory PreferredTenantsWatcherEvent.preferredTenantsReceived(
      Either<PreferredTenantsFailure, PreferredTenantsObject?>
      failureOrPreferredTenants,
      ) = _PreferredTenantsReceived;
}
