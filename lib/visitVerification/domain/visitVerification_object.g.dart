// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visitVerification_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisitVerification _$VisitVerificationFromJson(Map<String, dynamic> json) =>
    VisitVerification(
      verificationDateAndTime:
          firestoreTimestampFromJson(json['verificationDateAndTime']),
      markerId: json['markerId'] as String?,
      userId: json['userId'] as String?,
      verificationCompleted: json['verificationCompleted'] as bool?,
      message: json['message'] as String?,
      propertyId: json['propertyId'] as String?,
      userName: json['userName'] as String?,
      feedback: json['feedback'] as bool?,
      requestTime: firestoreTimestampFromJson(json['requestTime']),
      viewingStatus: json['viewingStatus'] as String?,
      docId: json['docId'] as String?,
    );

Map<String, dynamic> _$VisitVerificationToJson(VisitVerification instance) =>
    <String, dynamic>{
      'verificationDateAndTime':
          firestoreTimestampToJson(instance.verificationDateAndTime),
      'requestTime': firestoreTimestampToJson(instance.requestTime),
      'markerId': instance.markerId,
      'userId': instance.userId,
      'verificationCompleted': instance.verificationCompleted,
      'message': instance.message,
      'propertyId': instance.propertyId,
      'userName': instance.userName,
      'feedback': instance.feedback,
      'viewingStatus': instance.viewingStatus,
      'docId': instance.docId,
    };
