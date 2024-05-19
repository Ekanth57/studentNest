part of 'houseDetails_bloc.dart';

@freezed
class HouseDetailsEvent with _$HouseDetailsEvent {
  const factory HouseDetailsEvent.spaceid(String propertyId,) = Spaceid;
  const factory HouseDetailsEvent.userType(String userType) = UserType;

  const factory HouseDetailsEvent.houseDetails(
      HouseDetailsObject houseDetails) = _ContactDetails;

  const factory HouseDetailsEvent.submitted() = Submitted;
}