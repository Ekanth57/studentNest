
import 'package:dartz/dartz.dart';

import 'contactDetails_failure.dart';
import 'contactDetails_object.dart';

abstract class IContactDetailsFacade {
  Future<Either<ContactDetailsFailure, Unit>> contactDetailsSubmit(
      {required String propertyId, required ContactDetailsObject contactDetailsObject, required String userType});

  Stream<Either<ContactDetailsFailure, ContactDetailsObject?>> contactDetailsWatchAll(String propertyId);
}


