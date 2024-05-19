import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domian/rentDetails_facade.dart';
import '../../domian/rentDetails_failure.dart';
import '../../domian/rentDetails_object.dart';


part 'rentDetails_watcher_bloc.freezed.dart';
part 'rentDetails_watcher_event.dart';
part 'rentDetails_watcher_state.dart';

@injectable
class RentDetailsWatcherBloc
    extends Bloc<RentDetailsWatcherEvent, RentDetailsWatcherState> {
  final IRentDetailsFacade _rentDetailsRepository;
  RentDetailsWatcherBloc(this._rentDetailsRepository)
      : super(const RentDetailsWatcherState.initial());

  StreamSubscription<Either<RentDetailsFailure, RentDetailsObject?>>?
  _streamSubscription;

  @override
  Stream<RentDetailsWatcherState> mapEventToState(
      RentDetailsWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const RentDetailsWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _rentDetailsRepository
            .rentDetailsWatchAll(e.id)
            .listen((failureOrBookings) {
          add(RentDetailsWatcherEvent.rentDetailsReceived(
              failureOrBookings));
        });
      },
      rentDetailsReceived: (e) async* {
        yield e.failureOrRentDetails.fold(
              (f) => RentDetailsWatcherState.loadFailure(f),
              (filters) => RentDetailsWatcherState.loadSuccess(filters),
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
