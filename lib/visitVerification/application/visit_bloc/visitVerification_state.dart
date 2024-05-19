part of 'visitVerification_bloc.dart';

@freezed
class VisitVerificationState with _$VisitVerificationState {
  const factory VisitVerificationState({
    required String propertyId,
    required String userType,
    required VisitVerification visitVerification,
    required Option<Either<VisitVerificationFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _VisitVerificationState;
  factory VisitVerificationState.initial() => VisitVerificationState(
    propertyId: '',
    userType: '',
    visitVerification: VisitVerification(),
    authFailureOrSuccessOption: none(),
  );
}