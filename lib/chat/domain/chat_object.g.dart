// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObject _$ChatObjectFromJson(Map<String, dynamic> json) => ChatObject(
      chatMessages: (json['chatMessages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      markerId: json['markerId'] as String?,
      userId: json['userId'] as String?,
      name: json['name'] as String?,
      seen: json['seen'] as bool?,
    );

Map<String, dynamic> _$ChatObjectToJson(ChatObject instance) =>
    <String, dynamic>{
      'chatMessages': instance.chatMessages?.map((e) => e.toJson()).toList(),
      'markerId': instance.markerId,
      'userId': instance.userId,
      'name': instance.name,
      'seen': instance.seen,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      messageContent: json['messageContent'] as String?,
      messageType: json['messageType'] as String?,
      timestamp: firestoreTimestampFromJson(json['timestamp']),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'messageContent': instance.messageContent,
      'messageType': instance.messageType,
      'timestamp': firestoreTimestampToJson(instance.timestamp),
    };

ChatObjectList _$ChatObjectListFromJson(Map<String, dynamic> json) =>
    ChatObjectList(
      chatMessages: json['chatMessages'] == null
          ? null
          : Message.fromJson(json['chatMessages'] as Map<String, dynamic>),
      markerId: json['markerId'] as String?,
      userId: json['userId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ChatObjectListToJson(ChatObjectList instance) =>
    <String, dynamic>{
      'chatMessages': instance.chatMessages?.toJson(),
      'markerId': instance.markerId,
      'userId': instance.userId,
      'name': instance.name,
    };
