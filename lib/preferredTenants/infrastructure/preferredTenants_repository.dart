import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/preferredTenants_facade.dart';
import '../domain/preferredTenants_failure.dart';
import '../domain/preferredTenants_object.dart';



@LazySingleton(as: IPreferredTenantsFacade)
class PreferredTenantsFacade implements IPreferredTenantsFacade {
  @override
  Future<Either<PreferredTenantsFailure, Unit>> preferredTenantsSubmit(
      {required String propertyId, required PreferredTenantsObject preferredTenantsObject, required String userType}) async{
    // TODO: implement PreferredTenantsSubmit
    try {
      if(userType=='user'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'preferredTenantsObject':preferredTenantsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'flags': {
              'isPreferredTenantsAdded':true,
            }
          },SetOptions(merge: true));
        });
      }
      else if(userType=='admin'){
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'preferredTenantsObject':preferredTenantsObject.toJson()
        }, SetOptions(merge: true)).then((value) {
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'verificationFlag': {
              'isPreferredTenantsVerified':true,
            }
          },SetOptions(merge: true));
        });
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PreferredTenantsFailure.serverError());
      } else {
        return left(const PreferredTenantsFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<PreferredTenantsFailure, PreferredTenantsObject?>>
  preferredTenantsWatchAll(String spaceId) async* {
    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId)
        .snapshots()
        .map((snapshot) =>
        right<PreferredTenantsFailure, PreferredTenantsObject?>(
            PreferredTenantsObject.fromJson(snapshot.get('preferredTenantsObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const PreferredTenantsFailure.insufficientPermission());
      } else {
        return left(const PreferredTenantsFailure.unexpected());
      }
    });
  }


}