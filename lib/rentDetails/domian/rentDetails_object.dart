import 'package:freezed_annotation/freezed_annotation.dart';
part 'rentDetails_object.g.dart';

@JsonSerializable(explicitToJson: true)
class RentDetailsObject{
  String? rent;
  String? deposit;
  String? councilTax;
  String? electricityIncluded;
  String? waterIncluded;
  String? gasIncluded;
  String? wifiIncluded;
  RentDetailsObject(
      {this.rent,
        this.deposit,
        this.councilTax,
        this.electricityIncluded,
        this.waterIncluded,
        this.gasIncluded,
        this.wifiIncluded,
      });
  Map<String, dynamic>? toJson() => _$RentDetailsObjectToJson(this);
  factory RentDetailsObject.fromJson(Map<String, dynamic> json) =>
      _$RentDetailsObjectFromJson(json);
}