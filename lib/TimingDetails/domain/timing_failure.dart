import 'package:freezed_annotation/freezed_annotation.dart';

part 'timing_failure.freezed.dart';

@freezed
class TimingFailure with _$TimingFailure {
  const factory TimingFailure.unexpected() = _Unexpected;
  const factory TimingFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory TimingFailure.unableToUpdate() = _UnableToUpdate;
  const factory TimingFailure.serverError() = ServerError;
}