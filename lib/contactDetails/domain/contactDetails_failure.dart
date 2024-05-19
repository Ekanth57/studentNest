import 'package:freezed_annotation/freezed_annotation.dart';

part 'contactDetails_failure.freezed.dart';

@freezed
class ContactDetailsFailure with _$ContactDetailsFailure {
  const factory ContactDetailsFailure.unexpected() = _Unexpected;
  const factory ContactDetailsFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory ContactDetailsFailure.unableToUpdate() = _UnableToUpdate;
  const factory ContactDetailsFailure.serverError() = ServerError;
}