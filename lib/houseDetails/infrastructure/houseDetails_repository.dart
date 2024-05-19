import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/houseDetails_facade.dart';
import '../domain/houseDetails_failure.dart';
import '../domain/houseDetails_object.dart';

@LazySingleton(as: IHouseDetailsFacade)
class HouseDetailsFacade implements IHouseDetailsFacade {
  @override
  Future<Either<HouseDetailsFailure, Unit>> houseDetailsSubmit(
      {required String propertyId, required HouseDetailsObject houseDetailsObject, required String userType}) async{
    // TODO: implement HouseDetailsSubmit
    try {
      if(userType=='user'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'houseDetailsObject':houseDetailsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'flags': {
              'isHouseDetailsAdded':true,
            }
          },SetOptions(merge: true));
        });
      }
      else if(userType=='admin'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'houseDetailsObject':houseDetailsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'verificationFlag': {
              'isHouseDetailsVerified':true,
            }
          },SetOptions(merge: true));
        });
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const HouseDetailsFailure.serverError());
      } else {
        return left(const HouseDetailsFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<HouseDetailsFailure, HouseDetailsObject?>>
  houseDetailsWatchAll(String spaceId) async* {
    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId)
        .snapshots()
        .map((snapshot) =>
        right<HouseDetailsFailure, HouseDetailsObject?>(
            HouseDetailsObject.fromJson(snapshot.get('houseDetailsObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const HouseDetailsFailure.insufficientPermission());
      } else {
        return left(const HouseDetailsFailure.unexpected());
      }
    });
  }


}