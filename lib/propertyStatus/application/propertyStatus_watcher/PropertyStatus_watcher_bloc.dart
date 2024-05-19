import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/domain/listProperty_facade.dart';
import 'package:studentnest/listProperty/domain/listProperty_failure.dart';

import '../../domain/propertyStatus_facade.dart';

part 'PropertyStatus_watcher_bloc.freezed.dart';
part 'PropertyStatus_watcher_event.dart';
part 'PropertyStatus_watcher_state.dart';

@injectable
class PropertyStatusWatcherBloc extends Bloc<PropertyStatusWatcherEvent, PropertyStatusWatcherState> {
  final IPropertyStatusFacade propertyStatusWatcherRepository;

  PropertyStatusWatcherBloc(this.propertyStatusWatcherRepository)
      : super(const PropertyStatusWatcherState.initial());

  late StreamSubscription<Either<ListPropertyFailure, PropertyDetailsObject>>
  propertyStreamSubscription;
  @override
  Stream<PropertyStatusWatcherState> mapEventToState(
      PropertyStatusWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const PropertyStatusWatcherState.loadInProgress();
        propertyStreamSubscription =
            propertyStatusWatcherRepository.propertyWatch(e.propertyId).listen(
                  (failureOrBookings) =>
                  add(PropertyStatusWatcherEvent.propertyWatched(failureOrBookings)),
            );
      },
      propertyWatched: (e) async* {
        yield e.failureOrProperty.fold(
              (f) => PropertyStatusWatcherState.loadFailure(f),
              (assets) => PropertyStatusWatcherState.loadSuccess(assets),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
