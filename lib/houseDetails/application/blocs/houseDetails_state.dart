part of 'houseDetails_bloc.dart';

@freezed
class HouseDetailsState with _$HouseDetailsState {
  const factory HouseDetailsState({
    required String propertyId,
    required String userType,
    required HouseDetailsObject houseDetails,
    required Option<Either<HouseDetailsFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _HouseDetailsState;
  factory HouseDetailsState.initial() => HouseDetailsState(
    propertyId: '',
    userType: '',
    houseDetails: HouseDetailsObject(),
    authFailureOrSuccessOption: none(),
  );
}