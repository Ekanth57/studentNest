
import 'package:freezed_annotation/freezed_annotation.dart';
part 'timingDetails_object.g.dart';

@JsonSerializable(explicitToJson: true)
class TimingDetailsObject {
  List<bool>? days;
  String? fromTime;
  String? toTime;

  TimingDetailsObject(
      {
        this.days,
        this.fromTime,
        this.toTime,
      });
  Map<String, dynamic> toJson() => _$TimingDetailsObjectToJson(this);
  factory TimingDetailsObject.fromJson(Map<String, dynamic> json) =>
      _$TimingDetailsObjectFromJson(json);
}