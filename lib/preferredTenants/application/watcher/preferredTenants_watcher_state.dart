part of 'preferredTenants_watcher_bloc.dart';

@freezed
class PreferredTenantsWatcherState with _$PreferredTenantsWatcherState {
  const factory PreferredTenantsWatcherState.initial() = _Initial;
  const factory PreferredTenantsWatcherState.loadInProgress() = _LoadInProgress;
  const factory PreferredTenantsWatcherState.loadSuccess(
      PreferredTenantsObject? preferredTenantsObject) = _LoadSuccess;
  const factory PreferredTenantsWatcherState.loadFailure(
      PreferredTenantsFailure preferredTenantsFailure) = _LoadFailure;
}
