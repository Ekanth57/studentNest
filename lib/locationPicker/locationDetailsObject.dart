import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'locationDetailsObject.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationDetailsObject {
  String address;
  @JsonKey(fromJson: _fromJsonGeoPoint, toJson: _toJsonGeoPoint)
  GeoPoint geoLocation;
  LocationDetailsObject(
      this.address,
      this.geoLocation,
      );
  Map<String, dynamic> toJson() => _$LocationDetailsObjectToJson(this);
  factory LocationDetailsObject.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsObjectFromJson(json);
}

GeoPoint _fromJsonGeoPoint(GeoPoint geoPoint) {
  return geoPoint;
}

GeoPoint _toJsonGeoPoint(GeoPoint geoPoint) {
  return geoPoint;
}
