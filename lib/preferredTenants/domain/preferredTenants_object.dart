import 'package:freezed_annotation/freezed_annotation.dart';
part 'preferredTenants_object.g.dart';

@JsonSerializable(explicitToJson: true)
class PreferredTenantsObject {
  Map<String, String>? university;
  List<String>? universityList;
  PreferredTenantsObject({

    this.university,
      this.universityList,
});
  Map<String, dynamic> toJson() => _$PreferredTenantsObjectToJson(this);
  factory PreferredTenantsObject.fromJson(Map<String, dynamic> json) =>
      _$PreferredTenantsObjectFromJson(json);
}