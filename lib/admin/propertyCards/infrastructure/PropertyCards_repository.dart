
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';

import '../domain/PropertyCards_facade.dart';
import '../domain/PropertyCards_failure.dart';


@LazySingleton(as: IPropertyCardFacade)
class PropertyCardRepository implements IPropertyCardFacade {
  @override
  Stream<Either<PropertyCardFailure, List<PropertyDetailsObject>>> propertyWatch() async* {
    yield* FirebaseFirestore.instance
        .collection("properties").snapshots()
        .map(
          (snapshot) => right<PropertyCardFailure, List<PropertyDetailsObject>>(
        snapshot.docs
            .map((doc) => PropertyDetailsObject.fromJson(doc.data()))
            .toList(),
      ),
    )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException &&
          e.message!.contains('PERMISSION_DENIED')) {
        return left(const PropertyCardFailure.insufficientPermission());
      } else {
        return left(const PropertyCardFailure.unexpected());
      }
    });
  }



}
