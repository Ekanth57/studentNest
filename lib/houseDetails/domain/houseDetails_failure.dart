import 'package:freezed_annotation/freezed_annotation.dart';

part 'houseDetails_failure.freezed.dart';

@freezed
class HouseDetailsFailure with _$HouseDetailsFailure {
  const factory HouseDetailsFailure.unexpected() = _Unexpected;
  const factory HouseDetailsFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory HouseDetailsFailure.unableToUpdate() = _UnableToUpdate;
  const factory HouseDetailsFailure.serverError() = ServerError;
}