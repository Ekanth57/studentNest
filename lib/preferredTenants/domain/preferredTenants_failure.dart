import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferredTenants_failure.freezed.dart';

@freezed
class PreferredTenantsFailure with _$PreferredTenantsFailure {
  const factory PreferredTenantsFailure.unexpected() = _Unexpected;
  const factory PreferredTenantsFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory PreferredTenantsFailure.unableToUpdate() = _UnableToUpdate;
  const factory PreferredTenantsFailure.serverError() = ServerError;
}