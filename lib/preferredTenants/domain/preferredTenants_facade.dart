import 'package:dartz/dartz.dart';
import 'package:studentnest/preferredTenants/domain/preferredTenants_failure.dart';
import 'package:studentnest/preferredTenants/domain/preferredTenants_object.dart';


abstract class IPreferredTenantsFacade {
  Future<Either<PreferredTenantsFailure, Unit>> preferredTenantsSubmit(
      {required String propertyId,
        required PreferredTenantsObject preferredTenantsObject, required String userType});

  Stream<Either<PreferredTenantsFailure, PreferredTenantsObject?>>
  preferredTenantsWatchAll(String propertyId);
}
