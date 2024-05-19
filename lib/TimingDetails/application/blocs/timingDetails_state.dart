part of 'timingDetails_bloc.dart';

@freezed
class TimingDetailsState with _$TimingDetailsState {
  const factory TimingDetailsState({
    required String propertyId,
    required String userType,

    required TimingDetailsObject timingDetails,
    required Option<Either<TimingFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _TimingDetailsState;
  factory TimingDetailsState.initial() => TimingDetailsState(
    propertyId: '',
    userType: '',
    timingDetails: TimingDetailsObject(),
    authFailureOrSuccessOption: none(),
  );
}