part of 'contactDetails_bloc.dart';

@freezed
class ContactDetailsEvent with _$ContactDetailsEvent {
  const factory ContactDetailsEvent.spaceid(String propertyId) = Spaceid;
  const factory ContactDetailsEvent.userType(String userType) = UserType;

  const factory ContactDetailsEvent.contactDetails(
      ContactDetailsObject contactDetails) = _ContactDetails;

  const factory ContactDetailsEvent.submitted() = Submitted;
}