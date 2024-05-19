// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferredTenants_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferredTenantsObject _$PreferredTenantsObjectFromJson(
        Map<String, dynamic> json) =>
    PreferredTenantsObject(
      university: (json['university'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      universityList: (json['universityList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PreferredTenantsObjectToJson(
        PreferredTenantsObject instance) =>
    <String, dynamic>{
      'university': instance.university,
      'universityList': instance.universityList,
    };
