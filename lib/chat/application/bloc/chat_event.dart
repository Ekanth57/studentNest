part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.spaceid(String propertyId,) = Spaceid;
  const factory ChatEvent.userType(String userType) = UserType;

  const factory ChatEvent.chat(
      ChatObject chat) = _Chat;

  const factory ChatEvent.submitted() = Submitted;
}