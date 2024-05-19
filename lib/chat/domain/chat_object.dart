
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_object.g.dart';

@JsonSerializable(explicitToJson: true)
class ChatObject {
  List<Message>? chatMessages;
  String? markerId;
  String? userId;
  String? name;
  bool? seen;
  ChatObject(
      {
        this.chatMessages,
        this.markerId,
        this.userId,
        this.name,
        this.seen,
      });
  Map<String, dynamic> toJson() => _$ChatObjectToJson(this);
  factory ChatObject.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectFromJson(json);
}


@JsonSerializable(explicitToJson: true)
class Message {
  String? messageContent;
  String? messageType;
  @JsonKey(
    fromJson: firestoreTimestampFromJson,
    toJson: firestoreTimestampToJson,
  )
  Timestamp? timestamp;

  Message(
      {
        this.messageContent,
        this.messageType,
        this.timestamp,
      });
  Map<String, dynamic> toJson() => _$MessageToJson(this);
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

Timestamp? firestoreTimestampFromJson(dynamic value) {
  return value;
}

/// This method only stores the "timestamp" data type back in the Firestore
dynamic firestoreTimestampToJson(dynamic value) => value;


@JsonSerializable(explicitToJson: true)
class ChatObjectList {
  Message? chatMessages;
  String? markerId;
  String? userId;
  String? name;
  ChatObjectList(
      {
        this.chatMessages,
        this.markerId,
        this.userId,
        this.name,
      });
  Map<String, dynamic> toJson() => _$ChatObjectListToJson(this);
  factory ChatObjectList.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectListFromJson(json);
}