
import 'package:dartz/dartz.dart';
import 'package:studentnest/visitVerification/domain/visitVerification_failure.dart';
import 'package:studentnest/visitVerification/domain/visitVerification_object.dart';



abstract class IVisitVerificationFacade {
  Future<Either<VisitVerificationFailure, Unit>> visitVerificationSubmit(
      {required String propertyId,
        required VisitVerification visitVerificationObject, required String userType});

  Stream<Either<VisitVerificationFailure, List<VisitVerification>?>> visitVerificationWatchAll(String markerId,String userID,String type);
}


