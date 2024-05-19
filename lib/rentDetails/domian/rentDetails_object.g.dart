// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rentDetails_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RentDetailsObject _$RentDetailsObjectFromJson(Map<String, dynamic> json) =>
    RentDetailsObject(
      rent: json['rent'] as String?,
      deposit: json['deposit'] as String?,
      councilTax: json['councilTax'] as String?,
      electricityIncluded: json['electricityIncluded'] as String?,
      waterIncluded: json['waterIncluded'] as String?,
      gasIncluded: json['gasIncluded'] as String?,
      wifiIncluded: json['wifiIncluded'] as String?,
    );

Map<String, dynamic> _$RentDetailsObjectToJson(RentDetailsObject instance) =>
    <String, dynamic>{
      'rent': instance.rent,
      'deposit': instance.deposit,
      'councilTax': instance.councilTax,
      'electricityIncluded': instance.electricityIncluded,
      'waterIncluded': instance.waterIncluded,
      'gasIncluded': instance.gasIncluded,
      'wifiIncluded': instance.wifiIncluded,
    };
