import 'package:freezed_annotation/freezed_annotation.dart';

part 'PropertyCards_failure.freezed.dart';

// these are the failures
@freezed
class PropertyCardFailure with _$PropertyCardFailure {
  const factory PropertyCardFailure.unexpected() = _Unexpected;
  const factory PropertyCardFailure.insufficientPermission() =_InsufficientPermission;
  const factory PropertyCardFailure.unableToUpdate() = _UnableToUpdate;
}
