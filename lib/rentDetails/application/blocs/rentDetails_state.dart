part of 'rentDetails_bloc.dart';

@freezed
class RentDetailsState with _$RentDetailsState {
  const factory RentDetailsState({
    required String propertyId,
    required String userType,
    required RentDetailsObject rentDetails,
    required Option<Either<RentDetailsFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _RentDetailsState;
  factory RentDetailsState.initial() => RentDetailsState(
    propertyId: '',
    userType: '',
    rentDetails: RentDetailsObject(),
    authFailureOrSuccessOption: none(),
  );
}