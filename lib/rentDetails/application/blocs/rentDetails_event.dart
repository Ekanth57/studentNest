part of 'rentDetails_bloc.dart';

@freezed
class RentDetailsEvent with _$RentDetailsEvent {
  const factory RentDetailsEvent.spaceid(String propertyId,) = Spaceid;
  const factory RentDetailsEvent.userType(String userTpe,) = UserType;

  const factory RentDetailsEvent.rentDetails(
      RentDetailsObject rentDetails) = _RentDetails;

  const factory RentDetailsEvent.submitted() = Submitted;
}