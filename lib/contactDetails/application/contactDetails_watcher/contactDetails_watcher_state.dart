part of 'contactDetails_watcher_bloc.dart';

@freezed
class ContactDetailsWatcherState with _$ContactDetailsWatcherState {
  const factory ContactDetailsWatcherState.initial() = _Initial;
  const factory ContactDetailsWatcherState.loadInProgress() = _LoadInProgress;
  const factory ContactDetailsWatcherState.loadSuccess(
      ContactDetailsObject? contactDetailsDetails) = _LoadSuccess;
  const factory ContactDetailsWatcherState.loadFailure(
      ContactDetailsFailure contactDetailsFailure) = _LoadFailure;
}
