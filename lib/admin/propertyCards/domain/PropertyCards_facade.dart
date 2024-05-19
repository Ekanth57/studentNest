import 'package:dartz/dartz.dart';

import '../../../PropertyDetails/domain/propertyDetailsObject.dart';
import 'PropertyCards_failure.dart';


abstract class IPropertyCardFacade {
  Stream<Either<PropertyCardFailure, List<PropertyDetailsObject>>> propertyWatch();
}