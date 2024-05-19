// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'houseDetails_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseDetailsObject _$HouseDetailsObjectFromJson(Map<String, dynamic> json) =>
    HouseDetailsObject(
      roomType: json['roomType'] as String?,
      bedType: json['bedType'] as String?,
      noOfRooms: json['noOfRooms'] as int?,
      noOfBathrooms: json['noOfBathrooms'] as int?,
      noOfKitchen: json['noOfKitchen'] as int?,
      noOfHobs: json['noOfHobs'] as int?,
      dishWasherAvailable: json['dishWasherAvailable'] as bool?,
      backyard: json['backyard'] as String?,
      storeRoom: json['storeRoom'] as String?,
    );

Map<String, dynamic> _$HouseDetailsObjectToJson(HouseDetailsObject instance) =>
    <String, dynamic>{
      'roomType': instance.roomType,
      'bedType': instance.bedType,
      'noOfRooms': instance.noOfRooms,
      'noOfBathrooms': instance.noOfBathrooms,
      'noOfKitchen': instance.noOfKitchen,
      'noOfHobs': instance.noOfHobs,
      'dishWasherAvailable': instance.dishWasherAvailable,
      'backyard': instance.backyard,
      'storeRoom': instance.storeRoom,
    };
