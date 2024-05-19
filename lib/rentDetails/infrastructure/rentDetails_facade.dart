import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domian/rentDetails_facade.dart';
import '../domian/rentDetails_failure.dart';
import '../domian/rentDetails_object.dart';


@LazySingleton(as: IRentDetailsFacade)
class RentDetailsFacade implements IRentDetailsFacade {
  @override
  Future<Either<RentDetailsFailure, Unit>> rentDetailsSubmit(
      {required String propertyId, required RentDetailsObject rentDetailsObject, required String userType}) async{
    // TODO: implement RentDetailsSubmit
    try {
      if(userType=='user')
      {
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'rentDetailsObject':rentDetailsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'flags': {
              'isRentDetailsAdded':true,
            }
          },SetOptions(merge: true));
        });
      }
      else if(userType=='admin'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'rentDetailsObject':rentDetailsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'verificationFlag': {
              'isRentDetailsVerified':true,
            }
          },SetOptions(merge: true));
        });
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const RentDetailsFailure.serverError());
      } else {
        return left(const RentDetailsFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<RentDetailsFailure, RentDetailsObject?>> rentDetailsWatchAll(String spaceId) async* {
    print('infrastructure --------${spaceId}');
    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId)
        .snapshots()
        .map((snapshot) =>
        right<RentDetailsFailure, RentDetailsObject?>(
            RentDetailsObject.fromJson(snapshot.get('rentDetailsObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const RentDetailsFailure.insufficientPermission());
      } else {
        return left(const RentDetailsFailure.unexpected());
      }
    });
  }
}