// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactDetails_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDetailsObject _$ContactDetailsObjectFromJson(
        Map<String, dynamic> json) =>
    ContactDetailsObject(
      name: json['name'] as String?,
      agencyName: json['agencyName'] as String?,
      email: json['email'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      listedBy: json['listedBy'] as String?,
      contactDetailsOf: json['contactDetailsOf'] as String?,
    );

Map<String, dynamic> _$ContactDetailsObjectToJson(
        ContactDetailsObject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'agencyName': instance.agencyName,
      'email': instance.email,
      'mobileNumber': instance.mobileNumber,
      'listedBy': instance.listedBy,
      'contactDetailsOf': instance.contactDetailsOf,
    };
