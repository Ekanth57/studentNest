part of 'preferredTenants_bloc.dart';

@freezed
class PreferredTenantsState with _$PreferredTenantsState {
  const factory PreferredTenantsState({
    required String propertyId,
    required String userType,
    required PreferredTenantsObject preferredTenants,
    required Option<Either<PreferredTenantsFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _PreferredTenantsState;
  factory PreferredTenantsState.initial() => PreferredTenantsState(
    propertyId: '',
    userType: '',
    preferredTenants: PreferredTenantsObject(),
    authFailureOrSuccessOption: none(),
  );
}