part of 'preferredTenants_bloc.dart';

@freezed
class PreferredTenantsEvent with _$PreferredTenantsEvent {
  const factory PreferredTenantsEvent.spaceid(String propertyId,) = Spaceid;
  const factory PreferredTenantsEvent.userType(String userType) = UserType;

  const factory PreferredTenantsEvent.preferredTenants(
      PreferredTenantsObject preferredTenants) = _ContactDetails;

  const factory PreferredTenantsEvent.submitted() = Submitted;
}