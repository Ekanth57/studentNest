import 'package:freezed_annotation/freezed_annotation.dart';

part 'listProperty_failure.freezed.dart';

// these are the failures
@freezed
class ListPropertyFailure with _$ListPropertyFailure {
  const factory ListPropertyFailure.unexpected() = _Unexpected;
  const factory ListPropertyFailure.insufficientPermission() =_InsufficientPermission;
  const factory ListPropertyFailure.unableToUpdate() = _UnableToUpdate;
}
