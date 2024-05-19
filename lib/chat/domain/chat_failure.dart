import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_failure.freezed.dart';

@freezed
class ChatFailure with _$ChatFailure {
  const factory ChatFailure.unexpected() = _Unexpected;
  const factory ChatFailure.insufficientPermission() =
  _InsufficientPermission;
  const factory ChatFailure.unableToUpdate() = _UnableToUpdate;
  const factory ChatFailure.serverError() = ServerError;
}