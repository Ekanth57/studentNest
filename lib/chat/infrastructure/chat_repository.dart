import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/chat_facade.dart';
import '../domain/chat_failure.dart';
import '../domain/chat_object.dart';



@LazySingleton(as: IChatFacade)
class ChatFacade implements IChatFacade {
  @override
  Future<Either<ChatFailure, Unit>> chatSubmit(
      {
        required String propertyId, required ChatObject chatObject, required String userType}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    String user = auth.currentUser!.uid;
    try {

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatFailure.serverError());
      } else {
        return left(const ChatFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<ChatFailure, ChatObject?>> chatWatchAll(String spaceId) async* {

    FirebaseAuth auth = FirebaseAuth.instance;
    String user = auth.currentUser!.uid;
    print('inside chat repo------$user------$spaceId');

    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId).collection('chat').doc(user)
        .snapshots()
        .map((snapshot) =>
        right<ChatFailure, ChatObject?>(
            ChatObject.fromJson(snapshot.get('chatObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatFailure.insufficientPermission());
      } else {
        return left(const ChatFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ChatFailure, ChatObject?>> chatWatchAllAdmin(String spaceId,String userId) async* {

    FirebaseAuth auth = FirebaseAuth.instance;
    String user = auth.currentUser!.uid;

    yield* FirebaseFirestore.instance
        .collection("properties")
        .doc(spaceId).collection('chat').doc(userId)
        .snapshots()
        .map((snapshot) =>
        right<ChatFailure, ChatObject?>(
            ChatObject.fromJson(snapshot.get('chatObject'))))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatFailure.insufficientPermission());
      } else {
        return left(const ChatFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ChatFailure, List<ChatObject>>> chatListWatch(String markerId) async* {
    yield* FirebaseFirestore.instance
        .collection("properties").doc(markerId).collection('chat')
        // .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        // .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ChatFailure, List<ChatObject>>(
        snapshot.docs
            .map((doc) => ChatObject.fromJson(doc.data()))
            .toList(),
      ),
    )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException &&
          e.message!.contains('PERMISSION_DENIED')) {
        return left(const ChatFailure.insufficientPermission());
      } else {
        return left(const ChatFailure.unexpected());
      }
    });
  }

}