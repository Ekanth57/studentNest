import 'package:dartz/dartz.dart';

import 'chat_failure.dart';
import 'chat_object.dart';



abstract class IChatFacade {
  Future<Either<ChatFailure, Unit>> chatSubmit(
      {required String propertyId, required ChatObject chatObject, required String userType});
  Stream<Either<ChatFailure, List<ChatObject>>> chatListWatch(String markerId);

  Stream<Either<ChatFailure, ChatObject?>> chatWatchAll(String propertyId);
  Stream<Either<ChatFailure, ChatObject?>> chatWatchAllAdmin(String propertyId,String markerId);

}

