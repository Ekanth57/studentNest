import 'package:freezed_annotation/freezed_annotation.dart';

part 'visitVerification_failure.freezed.dart';

@freezed
class VisitVerificationFailure with _$VisitVerificationFailure {
  const factory VisitVerificationFailure.unexpected() = _Unexpected;
  const factory VisitVerificationFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory VisitVerificationFailure.unableToUpdate() = _UnableToUpdate;
  const factory VisitVerificationFailure.serverError() = ServerError;
}