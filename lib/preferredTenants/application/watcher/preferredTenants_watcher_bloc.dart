import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/preferredTenants_facade.dart';
import '../../domain/preferredTenants_failure.dart';
import '../../domain/preferredTenants_object.dart';

part 'preferredTenants_watcher_bloc.freezed.dart';
part 'preferredTenants_watcher_event.dart';
part 'preferredTenants_watcher_state.dart';

@injectable
class PreferredTenantsWatcherBloc
    extends Bloc<PreferredTenantsWatcherEvent, PreferredTenantsWatcherState> {
  final IPreferredTenantsFacade _preferredTenantsRepository;
  PreferredTenantsWatcherBloc(this._preferredTenantsRepository)
      : super(const PreferredTenantsWatcherState.initial());

  StreamSubscription<Either<PreferredTenantsFailure, PreferredTenantsObject?>>?
  _streamSubscription;

  @override
  Stream<PreferredTenantsWatcherState> mapEventToState(
      PreferredTenantsWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const PreferredTenantsWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _preferredTenantsRepository
            .preferredTenantsWatchAll(e.id)
            .listen((failureOrBookings) {
          add(PreferredTenantsWatcherEvent.preferredTenantsReceived(
              failureOrBookings));
        });
      },
      preferredTenantsReceived: (e) async* {
        yield e.failureOrPreferredTenants.fold(
              (f) => PreferredTenantsWatcherState.loadFailure(f),
              (filters) => PreferredTenantsWatcherState.loadSuccess(filters),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
