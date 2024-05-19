


import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/timing_failure.dart';
import '../../domain/timingDetails_facade.dart';
import '../../domain/timingDetails_object.dart';

part 'timingDetails_bloc.freezed.dart';
part 'timingDetails_event.dart';
part 'timingDetails_state.dart';

@injectable
class TimingDetailsBloc
    extends Bloc<TimingDetailsEvent, TimingDetailsState> {
  final ITimingDetailsFacade _timingDetailsFacade;

  TimingDetailsBloc(this._timingDetailsFacade)
      : super(TimingDetailsState.initial());

  @override
  Stream<TimingDetailsState> mapEventToState(
      TimingDetailsEvent event,) async* {
    yield* event.map(
      propertyid: (e) async* {
        yield state.copyWith(
          propertyId: e.propertyId,
          authFailureOrSuccessOption: none(),
        );
      },
      timingDetails: (e) async* {
        yield state.copyWith(
          timingDetails: e.timingDetails,
          authFailureOrSuccessOption: none(),
        );
      },
      userType: (e) async* {
        yield state.copyWith(
          userType: e.userType,
          authFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        Either<TimingFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _timingDetailsFacade.timingDetailsSubmit(
            propertyId: state.propertyId, timingDetailsObject: state.timingDetails, userType: state.userType);
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
         );
      },
    );
  }
}