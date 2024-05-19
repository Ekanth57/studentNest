
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';
import 'package:studentnest/listProperty/domain/listProperty_facade.dart';
import 'package:studentnest/listProperty/domain/listProperty_failure.dart';

@LazySingleton(as: IListPropertyFacade)
class ListPropertyRepository implements IListPropertyFacade {
  @override
  Stream<Either<ListPropertyFailure, List<PropertyDetailsObject>>> propertyWatch() async* {
      yield* FirebaseFirestore.instance
          .collection("properties")
          .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .orderBy('timestamp', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<ListPropertyFailure, List<PropertyDetailsObject>>(
          snapshot.docs
              .map((doc) => PropertyDetailsObject.fromJson(doc.data()))
              .toList(),
        ),
      )
          .onErrorReturnWith((e, stackTrace) {
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION_DENIED')) {
          return left(const ListPropertyFailure.insufficientPermission());
        } else {
          return left(const ListPropertyFailure.unexpected());
        }
      });
  }

  @override
  Stream<Either<ListPropertyFailure, PropertyDetailsObject>> singlePropertyWatch(
      String propertyId) async* {
    yield* FirebaseFirestore.instance
        .collection("rentlAssets")
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
