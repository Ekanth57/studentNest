import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/houseDetails_facade.dart';
import '../../domain/houseDetails_failure.dart';
import '../../domain/houseDetails_object.dart';

part 'houseDetails_bloc.freezed.dart';
part 'houseDetails_event.dart';
part 'houseDetails_state.dart';

@injectable
class HouseDetailsBloc
    extends Bloc<HouseDetailsEvent, HouseDetailsState> {
  final IHouseDetailsFacade _houseDetailsFacade;

  HouseDetailsBloc(this._houseDetailsFacade)
      : super(HouseDetailsState.initial());

  @override
  Stream<HouseDetailsState> mapEventToState(
      HouseDetailsEvent event,) async* {
    yield* event.map(
      spaceid: (e) async* {
        yield state.copyWith(
          propertyId: e.propertyId,
          authFailureOrSuccessOption: none(),
        );
      },
      userType: (e) async* {
        yield state.copyWith(
          userType: e.userType,
          authFailureOrSuccessOption: none(),
        );
      },
      houseDetails: (e) async* {
        yield state.copyWith(
          houseDetails: e.houseDetails,
          authFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        Either<HouseDetailsFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _houseDetailsFacade.houseDetailsSubmit(
            propertyId: state.propertyId, houseDetailsObject: state.houseDetails,userType: state.userType);
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}