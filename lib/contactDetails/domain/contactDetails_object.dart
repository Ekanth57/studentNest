import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:rentl/set_timings/domain/timingDetails.dart';
part 'contactDetails_object.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactDetailsObject {
  String? name;
  String? agencyName;
  String? email;
  String? mobileNumber;
  String? listedBy;
  String? contactDetailsOf;
  ContactDetailsObject(
      {this.name,
        this.agencyName,
        this.email,
        this.mobileNumber,
        this.listedBy,
        this.contactDetailsOf,
});
  Map<String, dynamic> toJson() => _$ContactDetailsObjectToJson(this);
  factory ContactDetailsObject.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsObjectFromJson(json);
}