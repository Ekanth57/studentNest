part of 'visitVerification_watcher_bloc.dart';

@freezed
class VisitVerificationWatcherEvent with _$VisitVerificationWatcherEvent {
  const factory VisitVerificationWatcherEvent.watchAllStarted(String markerId,String userID,String type) =_WatchAllStarted;
  const factory VisitVerificationWatcherEvent.visitVerificationReceived(
      Either<VisitVerificationFailure, List<VisitVerification>?>failureOrVisitVerification) = _visitVerificationReceived;
}
