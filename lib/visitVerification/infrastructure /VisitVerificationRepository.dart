
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/visitVerification_facade.dart';
import '../domain/visitVerification_failure.dart';
import '../domain/visitVerification_object.dart';

@LazySingleton(as: IVisitVerificationFacade)
class VisitVerificationRepository implements IVisitVerificationFacade {

  @override
  Stream<Either<VisitVerificationFailure, List<VisitVerification>>> visitVerificationWatchAll(String markerId,String userID,String type) async* {
    FirebaseAuth auth = FirebaseAuth.instance;
    String user = auth.currentUser!.uid;
    if(type=='user'){
      yield* FirebaseFirestore.instance
          .collection("viewing").where('userId',isEqualTo:user ).orderBy('verificationDateAndTime')
          .snapshots()
          .map(
            (snapshot) => right<VisitVerificationFailure, List<VisitVerification>>(
          snapshot.docs
              .map((doc) => VisitVerification.fromJson(doc.data()))
              .toList(),
        ),
      ). onErrorReturnWith((e, stackTrace) {
        if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
          return left(const VisitVerificationFailure.insufficientPermission());
        } else {
          return left(const VisitVerificationFailure.unexpected());
        }
      });
    }else if(type=='owner'){
      yield* FirebaseFirestore.instance
          .collection("viewing").where('markerId',isEqualTo:markerId ).orderBy('verificationDateAndTime')
          .snapshots()
          .map(
            (snapshot) => right<VisitVerificationFailure, List<VisitVerification>>(
          snapshot.docs
              .map((doc) => VisitVerification.fromJson(doc.data()))
              .toList(),
        ),
      )    . onErrorReturnWith((e, stackTrace) {
        if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
          return left(const VisitVerificationFailure.insufficientPermission());
        } else {
          return left(const VisitVerificationFailure.unexpected());
        }
      });
    }else{
      yield* FirebaseFirestore.instance
          .collection("viewing")
          .snapshots()
          .map(
            (snapshot) => right<VisitVerificationFailure, List<VisitVerification>>(
          snapshot.docs
              .map((doc) => VisitVerification.fromJson(doc.data()))
              .toList(),
        ),
      )    . onErrorReturnWith((e, stackTrace) {
        if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
          return left(const VisitVerificationFailure.insufficientPermission());
        } else {
          return left(const VisitVerificationFailure.unexpected());
        }
      });
    }


  }

  @override
  Future<Either<VisitVerificationFailure, Unit>> visitVerificationSubmit({required String propertyId, required VisitVerification visitVerificationObject, required String userType}) async
  {
    // TODO: implement HouseDetailsSubmit
    try {
        FirebaseFirestore.instance
            .collection('properties')
            .doc(propertyId)
            .set({
          'houseDetailsObject':visitVerificationObject.toJson()
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
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const VisitVerificationFailure.serverError());
      } else {
        return left(const VisitVerificationFailure.serverError());
      }
    }
  }


}
