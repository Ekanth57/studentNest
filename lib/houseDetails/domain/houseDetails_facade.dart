import 'package:dartz/dartz.dart';

import 'houseDetails_failure.dart';
import 'houseDetails_object.dart';


abstract class IHouseDetailsFacade {
  Future<Either<HouseDetailsFailure, Unit>> houseDetailsSubmit(
      {required String propertyId,
        required HouseDetailsObject houseDetailsObject, required String userType});

  Stream<Either<HouseDetailsFailure, HouseDetailsObject?>>
  houseDetailsWatchAll(String propertyId);
}
