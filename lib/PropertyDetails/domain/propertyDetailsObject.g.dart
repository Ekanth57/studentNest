// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propertyDetailsObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyDetailsObject _$PropertyDetailsObjectFromJson(
        Map<String, dynamic> json) =>
    PropertyDetailsObject(
      markerID: json['markerID'] as String?,
      rating: json['rating'] as String?,
      propertyId: json['propertyId'] as String?,
      isVerified: json['isVerified'] as bool?,
      isSentForVerification: json['isSentForVerification'] as bool?,
      userId: json['userId'] as String?,
      isRentedOut: json['isRentedOut'] as bool?,
      tokenId: json['tokenId'] as String?,
      flags: json['flags'] == null
          ? null
          : FlagObject.fromJson(json['flags'] as Map<String, dynamic>),
      verificationFlag: json['verificationFlag'] == null
          ? null
          : VerificationFlag.fromJson(
              json['verificationFlag'] as Map<String, dynamic>),
      locationDetailsObject: json['locationDetailsObject'] == null
          ? null
          : LocationDetailsObject.fromJson(
              json['locationDetailsObject'] as Map<String, dynamic>),
      contactDetailsObject: json['contactDetailsObject'] == null
          ? null
          : ContactDetailsObject.fromJson(
              json['contactDetailsObject'] as Map<String, dynamic>),
      rentDetailsObject: json['rentDetailsObject'] == null
          ? null
          : RentDetailsObject.fromJson(
              json['rentDetailsObject'] as Map<String, dynamic>),
      timingDetailsObject: json['timingDetailsObject'] == null
          ? null
          : TimingDetailsObject.fromJson(
              json['timingDetailsObject'] as Map<String, dynamic>),
      houseDetailsObject: json['houseDetailsObject'] == null
          ? null
          : HouseDetailsObject.fromJson(
              json['houseDetailsObject'] as Map<String, dynamic>),
      preferredTenantsObject: json['preferredTenantsObject'] == null
          ? null
          : PreferredTenantsObject.fromJson(
              json['preferredTenantsObject'] as Map<String, dynamic>),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timestamp: firestoreTimestampFromJson(json['timestamp']),
    );

Map<String, dynamic> _$PropertyDetailsObjectToJson(
        PropertyDetailsObject instance) =>
    <String, dynamic>{
      'markerID': instance.markerID,
      'rating': instance.rating,
      'propertyId': instance.propertyId,
      'isVerified': instance.isVerified,
      'isSentForVerification': instance.isSentForVerification,
      'userId': instance.userId,
      'isRentedOut': instance.isRentedOut,
      'tokenId': instance.tokenId,
      'flags': instance.flags?.toJson(),
      'verificationFlag': instance.verificationFlag?.toJson(),
      'locationDetailsObject': instance.locationDetailsObject?.toJson(),
      'contactDetailsObject': instance.contactDetailsObject?.toJson(),
      'rentDetailsObject': instance.rentDetailsObject?.toJson(),
      'timingDetailsObject': instance.timingDetailsObject?.toJson(),
      'houseDetailsObject': instance.houseDetailsObject?.toJson(),
      'preferredTenantsObject': instance.preferredTenantsObject?.toJson(),
      'photos': instance.photos,
      'timestamp': firestoreTimestampToJson(instance.timestamp),
    };

FlagObject _$FlagObjectFromJson(Map<String, dynamic> json) => FlagObject(
      isLocationComplete: json['isLocationComplete'] as bool?,
      isPhotosAdded: json['isPhotosAdded'] as bool?,
      isContactDetailsAdded: json['isContactDetailsAdded'] as bool?,
      isPreferredTenantsAdded: json['isPreferredTenantsAdded'] as bool?,
      isHouseDetailsAdded: json['isHouseDetailsAdded'] as bool?,
      isRentDetailsAdded: json['isRentDetailsAdded'] as bool?,
      isTimingDetailsAdded: json['isTimingDetailsAdded'] as bool?,
    );

Map<String, dynamic> _$FlagObjectToJson(FlagObject instance) =>
    <String, dynamic>{
      'isLocationComplete': instance.isLocationComplete,
      'isPhotosAdded': instance.isPhotosAdded,
      'isContactDetailsAdded': instance.isContactDetailsAdded,
      'isPreferredTenantsAdded': instance.isPreferredTenantsAdded,
      'isHouseDetailsAdded': instance.isHouseDetailsAdded,
      'isRentDetailsAdded': instance.isRentDetailsAdded,
      'isTimingDetailsAdded': instance.isTimingDetailsAdded,
    };

VerificationFlag _$VerificationFlagFromJson(Map<String, dynamic> json) =>
    VerificationFlag(
      isLocationVerified: json['isLocationVerified'] as bool?,
      isPhotosVerified: json['isPhotosVerified'] as bool?,
      isContactDetailsVerified: json['isContactDetailsVerified'] as bool?,
      isPreferredTenantsVerified: json['isPreferredTenantsVerified'] as bool?,
      isHouseDetailsVerified: json['isHouseDetailsVerified'] as bool?,
      isRentDetailsVerified: json['isRentDetailsVerified'] as bool?,
      isTenantTypeVerified: json['isTenantTypeVerified'] as bool?,
      isTimingDetailsVerified: json['isTimingDetailsVerified'] as bool?,
    );

Map<String, dynamic> _$VerificationFlagToJson(VerificationFlag instance) =>
    <String, dynamic>{
      'isLocationVerified': instance.isLocationVerified,
      'isPhotosVerified': instance.isPhotosVerified,
      'isContactDetailsVerified': instance.isContactDetailsVerified,
      'isPreferredTenantsVerified': instance.isPreferredTenantsVerified,
      'isHouseDetailsVerified': instance.isHouseDetailsVerified,
      'isRentDetailsVerified': instance.isRentDetailsVerified,
      'isTenantTypeVerified': instance.isTenantTypeVerified,
      'isTimingDetailsVerified': instance.isTimingDetailsVerified,
    };
