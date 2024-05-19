import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:studentnest/TimingDetails/domain/timingDetails_facade.dart';
import 'package:studentnest/TimingDetails/domain/timingDetails_object.dart';
import 'package:studentnest/TimingDetails/domain/timing_failure.dart';


@LazySingleton(as: ITimingDetailsFacade)
class TimingDetailsFacade implements ITimingDetailsFacade {
  @override
  Future<Either<TimingFailure, Unit>> timingDetailsSubmit(
      {required String propertyId, required TimingDetailsObject timingDetailsObject, required String userType}) async{
    // TODO: implement contactDetailsSubmit
    try {
      if(userType=='user'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'timingDetailsObject':timingDetailsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'flags': {
              'isTimingDetailsAdded':true,
            }
          },SetOptions(merge: true));
        });
      }else if(userType=='admin'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'timingDetailsObject':timingDetailsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'verificationFlag': {
              'isTimingDetailsVerified':true,
            }
          },SetOptions(merge: true));
        });
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimingFailure.serverError());
      } else {
        return left(const TimingFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<TimingFailure, TimingDetailsObject?>>
  timingDetailsWatchAll(String spaceId) async* {
    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId)
        .snapshots()
        .map((snapshot) =>
        right<TimingFailure, TimingDetailsObject?>(
            TimingDetailsObject.fromJson(snapshot.get('timingDetailsObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimingFailure.insufficientPermission());
      } else {
        return left(const TimingFailure.unexpected());
      }
    });
  }
  }
