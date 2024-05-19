part of 'visitVerification_bloc.dart';

@freezed
class VisitVerificationEvent with _$VisitVerificationEvent {
  const factory VisitVerificationEvent.spaceid(String propertyId,) = Spaceid;
  const factory VisitVerificationEvent.userType(String userType) = UserType;

  const factory VisitVerificationEvent.visitVerification(VisitVerification visitVerification) = _VisitVerification;

  const factory VisitVerificationEvent.submitted() = Submitted;
}