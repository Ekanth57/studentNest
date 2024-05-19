import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/domain/listProperty_facade.dart';
import 'package:studentnest/listProperty/domain/listProperty_failure.dart';

part 'listProperty_watcher_bloc.freezed.dart';
part 'listProperty_watcher_event.dart';
part 'listProperty_watcher_state.dart';

@injectable
class ListPropertyWatcherBloc extends Bloc<ListPropertyWatcherEvent, ListPropertyWatcherState> {
  final IListPropertyFacade listPropertyWatcherRepository;

  ListPropertyWatcherBloc(this.listPropertyWatcherRepository)
      : super(const ListPropertyWatcherState.initial());

  late StreamSubscription<Either<ListPropertyFailure, List<PropertyDetailsObject>>>
  propertyStreamSubscription;

  @override
  Stream<ListPropertyWatcherState> mapEventToState(
      ListPropertyWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ListPropertyWatcherState.loadInProgress();
        propertyStreamSubscription =
            listPropertyWatcherRepository.propertyWatch().listen(
                  (failureOrBookings) =>
                  add(ListPropertyWatcherEvent.propertyWatched(failureOrBookings)),
            );
      },
      propertyWatched: (e) async* {
        yield e.failureOrProperty.fold(
              (f) => ListPropertyWatcherState.loadFailure(f),
              (assets) => ListPropertyWatcherState.loadSuccess(assets),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
