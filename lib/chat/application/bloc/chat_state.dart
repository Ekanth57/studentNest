part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required String propertyId,
    required String userType,
    required ChatObject chat,
    required Option<Either<ChatFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _ChatState;
  factory ChatState.initial() => ChatState(
    propertyId: '',
    userType: '',
    chat: ChatObject(),
    authFailureOrSuccessOption: none(),
  );
}