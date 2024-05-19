import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/visitVerification_facade.dart';
import '../../domain/visitVerification_failure.dart';
import '../../domain/visitVerification_object.dart';


part 'visitVerification_bloc.freezed.dart';
part 'visitVerification_event.dart';
part 'visitVerification_state.dart';

@injectable
class VisitVerificationBloc
    extends Bloc<VisitVerificationEvent, VisitVerificationState> {
  final IVisitVerificationFacade _visitVerificationFacade;

  VisitVerificationBloc(this._visitVerificationFacade)
      : super(VisitVerificationState.initial());

  @override
  Stream<VisitVerificationState> mapEventToState(
      VisitVerificationEvent event,) async* {
    yield* event.map(
      spaceid: (e) async* {
        yield state.copyWith(
          propertyId: e.propertyId,
          authFailureOrSuccessOption: none(),
        );
      },
      userType: (e) async* {
        yield state.copyWith(
          userType:e.userType,
          authFailureOrSuccessOption: none(),
        );
      },
      visitVerification: (e) async* {
        yield state.copyWith(
          visitVerification: e.visitVerification,
          authFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        Either<VisitVerificationFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _visitVerificationFacade.visitVerificationSubmit(
            propertyId: state.propertyId, visitVerificationObject: state.visitVerification, userType: state.userType);
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}