import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/contactDetail_facade.dart';
import '../domain/contactDetails_failure.dart';
import '../domain/contactDetails_object.dart';

@LazySingleton(as: IContactDetailsFacade)
class ContactDetailsFacade implements IContactDetailsFacade {
  @override
  Future<Either<ContactDetailsFailure, Unit>> contactDetailsSubmit(
      {required String propertyId, required ContactDetailsObject contactDetailsObject, required String userType}) async{
    // TODO: implement contactDetailsSubmit
    print("---infrastructure contat details-----${userType}");

      try {
        if(userType=='user'){
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'contactDetailsObject':contactDetailsObject.toJson()
          },SetOptions(merge: true));
        }else if(userType=="admin"){
          FirebaseFirestore.instance
              .collection('properties')
              .doc(propertyId)
              .set({
            'contactDetailsObject':contactDetailsObject.toJson()
          },SetOptions(merge: true)).then((value) {
            FirebaseFirestore.instance
                .collection('properties')
                .doc(propertyId)
                .set({
              'verificationFlag': {
                'isContactDetailsVerified':true,
              }
            }, SetOptions(merge: true));
          });
        }

        return right(unit);
      } on FirebaseException catch (e) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const ContactDetailsFailure.serverError());
        } else {
          return left(const ContactDetailsFailure.serverError());
        }
      }
  }

  @override
  Stream<Either<ContactDetailsFailure, ContactDetailsObject?>>
  contactDetailsWatchAll(String spaceId) async* {
    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId)
        .snapshots()
        .map((snapshot) =>
        right<ContactDetailsFailure, ContactDetailsObject?>(
            ContactDetailsObject.fromJson(snapshot.get('contactDetailsObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ContactDetailsFailure.insufficientPermission());
      } else {
        return left(const ContactDetailsFailure.unexpected());
      }
    });
  }


}