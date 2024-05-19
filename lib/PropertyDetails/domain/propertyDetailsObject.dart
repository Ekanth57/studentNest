import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studentnest/TimingDetails/domain/timingDetails_object.dart';
import 'package:studentnest/contactDetails/domain/contactDetails_object.dart';
import 'package:studentnest/houseDetails/domain/houseDetails_object.dart';
import 'package:studentnest/locationPicker/locationDetailsObject.dart';
import 'package:studentnest/preferredTenants/domain/preferredTenants_object.dart';
import 'package:studentnest/rentDetails/domian/rentDetails_object.dart';

part 'propertyDetailsObject.g.dart';

@JsonSerializable(explicitToJson: true)
class PropertyDetailsObject {
  String? markerID;
  String? rating;
  String? propertyId;
  bool? isVerified;
  bool? isSentForVerification;
  String? userId;
  bool? isRentedOut;
  String? tokenId;
  FlagObject? flags;
  VerificationFlag? verificationFlag;
  LocationDetailsObject? locationDetailsObject;
  ContactDetailsObject? contactDetailsObject;
  RentDetailsObject? rentDetailsObject;
  TimingDetailsObject? timingDetailsObject;
  HouseDetailsObject? houseDetailsObject;
  PreferredTenantsObject? preferredTenantsObject;
  List<String>? photos;
  @JsonKey(
    fromJson: firestoreTimestampFromJson,
    toJson: firestoreTimestampToJson,
  )
  Timestamp? timestamp;

  PropertyDetailsObject(
      {this.markerID,
        this.rating,
        this.propertyId,
        this.isVerified,
        this.isSentForVerification,
        this.userId,
        this.isRentedOut,
        this.tokenId,
        this.flags,
        this.verificationFlag,
        this.locationDetailsObject,
        this.contactDetailsObject,
        this.rentDetailsObject,
        this.timingDetailsObject,
        this.houseDetailsObject,
        this.preferredTenantsObject,
        this.photos,
        this.timestamp
      });
  Map<String, dynamic> toJson() => _$PropertyDetailsObjectToJson(this);
  factory PropertyDetailsObject.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailsObjectFromJson(json);
}

Timestamp? firestoreTimestampFromJson(dynamic value) {
  return value;
}

/// This method only stores the "timestamp" data type back in the Firestore
dynamic firestoreTimestampToJson(dynamic value) => value;

@JsonSerializable(explicitToJson: true)
class FlagObject {
  bool? isLocationComplete;
  bool? isPhotosAdded;
  bool? isContactDetailsAdded;
  bool? isPreferredTenantsAdded;
  bool? isHouseDetailsAdded;
  bool? isRentDetailsAdded;
  bool? isTimingDetailsAdded;
  FlagObject(
      {this.isLocationComplete,
        this.isPhotosAdded,
        this.isContactDetailsAdded,
        this.isPreferredTenantsAdded,
        this.isHouseDetailsAdded,
        this.isRentDetailsAdded,
        this.isTimingDetailsAdded,
      });
  Map<String, dynamic> toJson() => _$FlagObjectToJson(this);
  factory FlagObject.fromJson(Map<String, dynamic> json) =>
      _$FlagObjectFromJson(json);
}

@JsonSerializable(explicitToJson: true)
class VerificationFlag {
  bool? isLocationVerified;
  bool? isPhotosVerified;
  bool? isContactDetailsVerified;
  bool? isPreferredTenantsVerified;
  bool? isHouseDetailsVerified;
  bool? isRentDetailsVerified;
  bool? isTenantTypeVerified;
  bool? isTimingDetailsVerified;
  VerificationFlag(
      {this.isLocationVerified,
        this.isPhotosVerified,
        this.isContactDetailsVerified,
        this.isPreferredTenantsVerified,
        this.isHouseDetailsVerified,
        this.isRentDetailsVerified,
        this.isTenantTypeVerified,
        this.isTimingDetailsVerified,
      });
  Map<String, dynamic> toJson() => _$VerificationFlagToJson(this);
  factory VerificationFlag.fromJson(Map<String, dynamic> json) =>
      _$VerificationFlagFromJson(json);
}
