import 'package:freezed_annotation/freezed_annotation.dart';

part 'rentDetails_failure.freezed.dart';

@freezed
class RentDetailsFailure with _$RentDetailsFailure {
  const factory RentDetailsFailure.unexpected() = _Unexpected;
  const factory RentDetailsFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory RentDetailsFailure.unableToUpdate() = _UnableToUpdate;
  const factory RentDetailsFailure.serverError() = ServerError;
}