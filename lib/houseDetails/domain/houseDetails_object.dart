import 'package:freezed_annotation/freezed_annotation.dart';
part 'houseDetails_object.g.dart';

@JsonSerializable(explicitToJson: true)
class HouseDetailsObject {
  String? roomType;
  String? bedType;
  int? noOfRooms;
  int? noOfBathrooms;
  int? noOfKitchen;
  int? noOfHobs;
  bool? dishWasherAvailable;
  String? backyard;
  String? storeRoom;

  HouseDetailsObject(
      {
        this.roomType,
        this.bedType,
       this.noOfRooms,
       this.noOfBathrooms,
       this.noOfKitchen,
       this.noOfHobs,
       this.dishWasherAvailable,
       this.backyard,
       this.storeRoom,

      });
  Map<String, dynamic> toJson() => _$HouseDetailsObjectToJson(this);
  factory HouseDetailsObject.fromJson(Map<String, dynamic> json) =>
      _$HouseDetailsObjectFromJson(json);
}