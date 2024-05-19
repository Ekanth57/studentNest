// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationDetailsObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationDetailsObject _$LocationDetailsObjectFromJson(
        Map<String, dynamic> json) =>
    LocationDetailsObject(
      json['address'] as String,
      _fromJsonGeoPoint(json['geoLocation'] as GeoPoint),
    );

Map<String, dynamic> _$LocationDetailsObjectToJson(
        LocationDetailsObject instance) =>
    <String, dynamic>{
      'address': instance.address,
      'geoLocation': _toJsonGeoPoint(instance.geoLocation),
    };
