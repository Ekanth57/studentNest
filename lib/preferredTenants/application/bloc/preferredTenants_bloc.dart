import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/preferredTenants_facade.dart';
import '../../domain/preferredTenants_failure.dart';
import '../../domain/preferredTenants_object.dart';


part 'preferredTenants_bloc.freezed.dart';
part 'preferredTenants_event.dart';
part 'preferredTenants_state.dart';

@injectable
class PreferredTenantsBloc
    extends Bloc<PreferredTenantsEvent, PreferredTenantsState> {
  final IPreferredTenantsFacade _preferredTenantsFacade;

  PreferredTenantsBloc(this._preferredTenantsFacade)
      : super(PreferredTenantsState.initial());

  @override
  Stream<PreferredTenantsState> mapEventToState(
      PreferredTenantsEvent event,) async* {
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
      preferredTenants: (e) async* {
        yield state.copyWith(
          preferredTenants: e.preferredTenants,
          authFailureOrSuccessOption: none(),
        );
      },
      submitted: (e) async* {
        Either<PreferredTenantsFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _preferredTenantsFacade.preferredTenantsSubmit(
            propertyId: state.propertyId, preferredTenantsObject: state.preferredTenants,userType: state.userType);
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}