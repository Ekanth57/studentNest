import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/visitVerification_facade.dart';
import '../../domain/visitVerification_failure.dart';
import '../../domain/visitVerification_object.dart';

part 'visitVerification_watcher_bloc.freezed.dart';
part 'visitVerification_watcher_event.dart';
part 'visitVerification_watcher_state.dart';

@injectable
class VisitVerificationWatcherBloc
    extends Bloc<VisitVerificationWatcherEvent, VisitVerificationWatcherState> {
  final IVisitVerificationFacade _visitVerificationRepository;
  VisitVerificationWatcherBloc(this._visitVerificationRepository)
      : super(const VisitVerificationWatcherState.initial());

  StreamSubscription<Either<VisitVerificationFailure, List<VisitVerification>?>>?
  _streamSubscription;

  @override
  Stream<VisitVerificationWatcherState> mapEventToState(
      VisitVerificationWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const VisitVerificationWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _visitVerificationRepository
            .visitVerificationWatchAll(e.markerId,e.userID,e.type)
            .listen((failureOrBookings) {
          add(VisitVerificationWatcherEvent.visitVerificationReceived(
              failureOrBookings));
        });
      },
      visitVerificationReceived: (e) async* {
        yield e.failureOrVisitVerification.fold(
              (f) => VisitVerificationWatcherState.loadFailure(f),
              (filters) => VisitVerificationWatcherState.loadSuccess(filters),
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
