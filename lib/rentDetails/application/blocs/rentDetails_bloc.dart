import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domian/rentDetails_facade.dart';
import '../../domian/rentDetails_failure.dart';
import '../../domian/rentDetails_object.dart';

part 'rentDetails_bloc.freezed.dart';
part 'rentDetails_event.dart';
part 'rentDetails_state.dart';

@injectable
class RentDetailsBloc
    extends Bloc<RentDetailsEvent, RentDetailsState> {
  final IRentDetailsFacade _rentDetailsFacade;

  RentDetailsBloc(this._rentDetailsFacade)
      : super(RentDetailsState.initial());

  @override
  Stream<RentDetailsState> mapEventToState(
      RentDetailsEvent event,) async* {
    yield* event.map(
      spaceid: (e) async* {
        yield state.copyWith(
          propertyId: e.propertyId,
          authFailureOrSuccessOption: none(),
        );
      },
      userType: (e) async* {
        yield state.copyWith(
          userType:e.userTpe,
          authFailureOrSuccessOption: none(),
        );
      },
      rentDetails: (e) async* {
        yield state.copyWith(
          rentDetails: e.rentDetails,
          authFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        Either<RentDetailsFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _rentDetailsFacade.rentDetailsSubmit(
            propertyId: state.propertyId, rentDetailsObject: state.rentDetails, userType: state.userType);
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}