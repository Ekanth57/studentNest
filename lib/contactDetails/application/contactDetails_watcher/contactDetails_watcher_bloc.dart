import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/contactDetail_facade.dart';
import '../../domain/contactDetails_failure.dart';
import '../../domain/contactDetails_object.dart';

part 'contactDetails_watcher_bloc.freezed.dart';
part 'contactDetails_watcher_event.dart';
part 'contactDetails_watcher_state.dart';

@injectable
class ContactDetailsWatcherBloc
    extends Bloc<ContactDetailsWatcherEvent, ContactDetailsWatcherState> {
  final IContactDetailsFacade _contactDetailsRepository;
  ContactDetailsWatcherBloc(this._contactDetailsRepository)
      : super(const ContactDetailsWatcherState.initial());

  StreamSubscription<Either<ContactDetailsFailure, ContactDetailsObject?>>?
  _streamSubscription;

  @override
  Stream<ContactDetailsWatcherState> mapEventToState(
      ContactDetailsWatcherEvent event,
      ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ContactDetailsWatcherState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _contactDetailsRepository
            .contactDetailsWatchAll(e.id)
            .listen((failureOrBookings) {
          add(ContactDetailsWatcherEvent.contactDetailsReceived(
              failureOrBookings));
        });
      },
      contactDetailsReceived: (e) async* {
        yield e.failureOrContactDetails.fold(
              (f) => ContactDetailsWatcherState.loadFailure(f),
              (filters) => ContactDetailsWatcherState.loadSuccess(filters),
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
