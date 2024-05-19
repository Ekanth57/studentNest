part of 'visitVerification_watcher_bloc.dart';

@freezed
class VisitVerificationWatcherState with _$VisitVerificationWatcherState {
  const factory VisitVerificationWatcherState.initial() = _Initial;
  const factory VisitVerificationWatcherState.loadInProgress() = _LoadInProgress;
  const factory VisitVerificationWatcherState.loadSuccess(List<VisitVerification>? visitVerificationObject) = _LoadSuccess;
  const factory VisitVerificationWatcherState.loadFailure(VisitVerificationFailure visitVerificationFailure) = _LoadFailure;
}
