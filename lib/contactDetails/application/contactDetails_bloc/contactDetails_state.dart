part of 'contactDetails_bloc.dart';

@freezed
class ContactDetailsState with _$ContactDetailsState {
  const factory ContactDetailsState({
    required String propertyId,
    required ContactDetailsObject contactDetails,
    required String userType,
    required Option<Either<ContactDetailsFailure, Unit>>
    authFailureOrSuccessOption,
  }) = _ContactDetailsState;
  factory ContactDetailsState.initial() => ContactDetailsState(
    propertyId: '',
    userType: '',
    contactDetails: ContactDetailsObject(),
    authFailureOrSuccessOption: none(),
  );
}