import 'package:dartz/dartz.dart';

import '../../PropertyDetails/domain/propertyDetailsObject.dart';
import '../../listProperty/domain/listProperty_failure.dart';


abstract class IPropertyStatusFacade {
  Stream<Either<ListPropertyFailure, PropertyDetailsObject>> propertyWatch(String propertyId);

// Stream<Either<ListPropertyFailure,PropertyDetailsObject >> singlePropertyWatch(String assetId);
}