import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/contactDetail_facade.dart';
import '../../domain/contactDetails_failure.dart';
import '../../domain/contactDetails_object.dart';
part 'contactDetails_bloc.freezed.dart';
part 'contactDetails_event.dart';
part 'contactDetails_state.dart';

@injectable
class ContactDetailsBloc extends Bloc<ContactDetailsEvent, ContactDetailsState> {
  final IContactDetailsFacade _contactDetailsFacade;
  ContactDetailsBloc(this._contactDetailsFacade) : super(ContactDetailsState.initial());
  @override
  Stream<ContactDetailsState> mapEventToState(
      ContactDetailsEvent event,) async* {
    yield* event.map(
      spaceid: (e) async* {
        yield state.copyWith(
          propertyId: e.propertyId,
          authFailureOrSuccessOption: none(),
        );},
      userType: (e) async* {
        yield state.copyWith(
          userType: e.userType,
          authFailureOrSuccessOption: none(),
        );},
      contactDetails: (e) async* {
        yield state.copyWith(
          contactDetails: e.contactDetails,
          authFailureOrSuccessOption: none(),
        );},
      submitted: (e) async* {
        Either<ContactDetailsFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _contactDetailsFacade.contactDetailsSubmit(
            propertyId: state.propertyId, contactDetailsObject: state.contactDetails, userType: state.userType,);
        yield state.copyWith(authFailureOrSuccessOption: optionOf(failureOrSuccess),);
      },
    );
  }
}