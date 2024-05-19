import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../PropertyDetails/domain/propertyDetailsObject.dart';
//import 'package:rentl/set_timings/domain/timingDetails.dart';
part 'visitVerification_object.g.dart';

@JsonSerializable(explicitToJson: true)
class VisitVerification{
  @JsonKey(
    fromJson: firestoreTimestampFromJson,
    toJson: firestoreTimestampToJson,
  )
  Timestamp? verificationDateAndTime;
  @JsonKey(
    fromJson: firestoreTimestampFromJson,
    toJson: firestoreTimestampToJson,
  )
  Timestamp? requestTime;
  String? markerId;
  String? userId;
  bool? verificationCompleted;
  String? message;
  String? propertyId;
  String? userName;
  bool? feedback;
  String? viewingStatus;
  String? docId;

  VisitVerification(
      {
        this.verificationDateAndTime,
        this.markerId,
        this.userId,
        this.verificationCompleted,
        this.message,
        this.propertyId,
        this.userName,
        this.feedback,
        this.requestTime,
        this.viewingStatus,
        this.docId,
      });
  Map<String, dynamic>? toJson() => _$VisitVerificationToJson(this);
  factory VisitVerification.fromJson(Map<String, dynamic> json) =>
      _$VisitVerificationFromJson(json);
}