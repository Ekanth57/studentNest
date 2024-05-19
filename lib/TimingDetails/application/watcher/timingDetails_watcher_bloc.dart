import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/timing_failure.dart';
import '../../domain/timingDetails_facade.dart';
import '../../domain/timingDetails_object.dart';


part 'timingDetails_watcher_bloc.freezed.dart';
part 'timingDetails_watcher_event.dart';
part 'timingDetails_watcher_state.dart';

@injectable
class TimingDetailsWatcherBloc
    extends Bloc<TimingDetailsWatcherEvent, TimingDetailsWatcherState> {
  final ITimingDetailsFacade _timingDetailsRepository;
  TimingDetailsWatcherBloc(this._timingDetailsRepository)
      : super(const TimingDetailsWatcherState.initial());

  StreamSubscription<Either<TimingFailure, TimingDetailsObject?>>?
  _streamSubscription;

  @override
  Stream<TimingDetailsWatcherState> mapEventToState(
      TimingDetailsWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const TimingDetailsWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _timingDetailsRepository.timingDetailsWatchAll(e.id)
            .listen((failureOrBookings) {
          add(TimingDetailsWatcherEvent.timingDetailsReceived(
              failureOrBookings));
        });
      },
      timingDetailsReceived: (e) async* {
        yield e.failureOrTimingDetails.fold(
              (f) => TimingDetailsWatcherState.loadFailure(f),
              (filters) => TimingDetailsWatcherState.loadSuccess(filters),
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
