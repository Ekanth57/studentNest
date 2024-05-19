
import 'package:dartz/dartz.dart';
import 'package:studentnest/TimingDetails/domain/timingDetails_object.dart';

import 'timing_failure.dart';


abstract class ITimingDetailsFacade {
  Future<Either<TimingFailure, Unit>>timingDetailsSubmit(
      {required String propertyId,
        required TimingDetailsObject timingDetailsObject, required String userType});

  Stream<Either<TimingFailure, TimingDetailsObject?>>
  timingDetailsWatchAll(String propertyId);
}


