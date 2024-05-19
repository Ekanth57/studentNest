// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timingDetails_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimingDetailsObject _$TimingDetailsObjectFromJson(Map<String, dynamic> json) =>
    TimingDetailsObject(
      days: (json['days'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      fromTime: json['fromTime'] as String?,
      toTime: json['toTime'] as String?,
    );

Map<String, dynamic> _$TimingDetailsObjectToJson(
        TimingDetailsObject instance) =>
    <String, dynamic>{
      'days': instance.days,
      'fromTime': instance.fromTime,
      'toTime': instance.toTime,
    };
