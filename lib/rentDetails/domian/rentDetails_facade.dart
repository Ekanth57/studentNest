
import 'package:dartz/dartz.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_failure.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';


abstract class IRentDetailsFacade {
  Future<Either<RentDetailsFailure, Unit>> rentDetailsSubmit(
      {required String propertyId,
        required RentDetailsObject rentDetailsObject, required String userType});

  Stream<Either<RentDetailsFailure, RentDetailsObject?>>
  rentDetailsWatchAll(String propertyId);
}


