
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/domain/listProperty_failure.dart';

import '../domain/propertyStatus_facade.dart';

@LazySingleton(as: IPropertyStatusFacade)
class PropertyStatusRepository implements IPropertyStatusFacade {
  @override
  Stream<Either<ListPropertyFailure, PropertyDetailsObject>> propertyWatch(
      String propertyId) async* {
    print("infrastrucersffsi9i6904------${propertyId}");
    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(propertyId)
        .snapshots()
        .map((snapshot) => right<ListPropertyFailure, PropertyDetailsObject>(
        PropertyDetailsObject.fromJson(snapshot.data()!)))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListPropertyFailure.insufficientPermission());
      } else {
        return left(const ListPropertyFailure.unexpected());
      }
    });
  }
}
