import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/houseDetails_facade.dart';
import '../../domain/houseDetails_failure.dart';
import '../../domain/houseDetails_object.dart';


part 'houseDetails_watcher_bloc.freezed.dart';
part 'houseDetails_watcher_event.dart';
part 'houseDetails_watcher_state.dart';

@injectable
class HouseDetailsWatcherBloc
    extends Bloc<HouseDetailsWatcherEvent, HouseDetailsWatcherState> {
  final IHouseDetailsFacade _houseDetailsRepository;
  HouseDetailsWatcherBloc(this._houseDetailsRepository)
      : super(const HouseDetailsWatcherState.initial());

  StreamSubscription<Either<HouseDetailsFailure, HouseDetailsObject?>>?
  _streamSubscription;

  @override
  Stream<HouseDetailsWatcherState> mapEventToState(
      HouseDetailsWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const HouseDetailsWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _houseDetailsRepository
            .houseDetailsWatchAll(e.id)
            .listen((failureOrBookings) {
          add(HouseDetailsWatcherEvent.houseDetailsReceived(
              failureOrBookings));
        });
      },
      houseDetailsReceived: (e) async* {
        yield e.failureOrHouseDetails.fold(
              (f) => HouseDetailsWatcherState.loadFailure(f),
              (filters) => HouseDetailsWatcherState.loadSuccess(filters),
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
