part of 'contactDetails_watcher_bloc.dart';

@freezed
class ContactDetailsWatcherEvent with _$ContactDetailsWatcherEvent {
  const factory ContactDetailsWatcherEvent.watchAllStarted(String id) =
  _WatchAllStarted;
  const factory ContactDetailsWatcherEvent.contactDetailsReceived(
      Either<ContactDetailsFailure, ContactDetailsObject?>
      failureOrContactDetails,
      ) = _ContactDetailsReceived;
}
