part of 'timingDetails_bloc.dart';

@freezed
class TimingDetailsEvent with _$TimingDetailsEvent {
  const factory TimingDetailsEvent.propertyid(String propertyId,) = Spaceid;
  const factory TimingDetailsEvent.timingDetails(
      TimingDetailsObject timingDetails) = _TimingDetails;
  const factory TimingDetailsEvent.userType(String userType) = UserType;

  const factory TimingDetailsEvent.submitted() = Submitted;
}