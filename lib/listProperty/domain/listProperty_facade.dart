import 'package:dartz/dartz.dart';

import '../../PropertyDetails/domain/propertyDetailsObject.dart';
import 'listProperty_failure.dart';


abstract class IListPropertyFacade {
  Stream<Either<ListPropertyFailure, List<PropertyDetailsObject>>> propertyWatch();

  Stream<Either<ListPropertyFailure,PropertyDetailsObject >> singlePropertyWatch(String assetId);
}