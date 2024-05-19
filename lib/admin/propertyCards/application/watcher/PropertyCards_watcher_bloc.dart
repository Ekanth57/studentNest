import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/domain/listProperty_facade.dart';
import 'package:studentnest/listProperty/domain/listProperty_failure.dart';

import '../../domain/PropertyCards_facade.dart';
import '../../domain/PropertyCards_failure.dart';

part 'PropertyCards_watcher_bloc.freezed.dart';
part 'PropertyCards_watcher_event.dart';
part 'PropertyCards_watcher_state.dart';

@injectable
class PropertyCardWatcherBloc extends Bloc<PropertyCardWatcherEvent, PropertyCardWatcherState> {
  final IPropertyCardFacade propertyCardWatcherRepository;

  PropertyCardWatcherBloc(this.propertyCardWatcherRepository)
      : super(const PropertyCardWatcherState.initial());

  late StreamSubscription<Either<PropertyCardFailure, List<PropertyDetailsObject>>>
  propertyStreamSubscription;

  @override
  Stream<PropertyCardWatcherState> mapEventToState(
      PropertyCardWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const PropertyCardWatcherState.loadInProgress();
        propertyStreamSubscription =
            propertyCardWatcherRepository.propertyWatch().listen(
                  (failureOrBookings) =>
                  add(PropertyCardWatcherEvent.propertyWatched(failureOrBookings)),
            );
      },
      propertyWatched: (e) async* {
        yield e.failureOrProperty.fold(
              (f) => PropertyCardWatcherState.loadFailure(f),
              (assets) => PropertyCardWatcherState.loadSuccess(assets),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
