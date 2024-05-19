// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(String id, String userId) watchAllStartedAdmin,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceived,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceivedAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(String id, String userId)? watchAllStartedAdmin,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(String id, String userId)? watchAllStartedAdmin,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchAllStartedAdmin value) watchAllStartedAdmin,
    required TResult Function(_ChatReceived value) chatReceived,
    required TResult Function(_ChatReceivedAdmin value) chatReceivedAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult? Function(_ChatReceived value)? chatReceived,
    TResult? Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult Function(_ChatReceived value)? chatReceived,
    TResult Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWatcherEventCopyWith<$Res> {
  factory $ChatWatcherEventCopyWith(
          ChatWatcherEvent value, $Res Function(ChatWatcherEvent) then) =
      _$ChatWatcherEventCopyWithImpl<$Res, ChatWatcherEvent>;
}

/// @nodoc
class _$ChatWatcherEventCopyWithImpl<$Res, $Val extends ChatWatcherEvent>
    implements $ChatWatcherEventCopyWith<$Res> {
  _$ChatWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_WatchAllStarted(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ChatWatcherEvent.watchAllStarted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllStarted &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      __$$_WatchAllStartedCopyWithImpl<_$_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(String id, String userId) watchAllStartedAdmin,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceived,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceivedAdmin,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(String id, String userId)? watchAllStartedAdmin,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(String id, String userId)? watchAllStartedAdmin,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchAllStartedAdmin value) watchAllStartedAdmin,
    required TResult Function(_ChatReceived value) chatReceived,
    required TResult Function(_ChatReceivedAdmin value) chatReceivedAdmin,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult? Function(_ChatReceived value)? chatReceived,
    TResult? Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult Function(_ChatReceived value)? chatReceived,
    TResult Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ChatWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchAllStartedAdminCopyWith<$Res> {
  factory _$$_WatchAllStartedAdminCopyWith(_$_WatchAllStartedAdmin value,
          $Res Function(_$_WatchAllStartedAdmin) then) =
      __$$_WatchAllStartedAdminCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class __$$_WatchAllStartedAdminCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res, _$_WatchAllStartedAdmin>
    implements _$$_WatchAllStartedAdminCopyWith<$Res> {
  __$$_WatchAllStartedAdminCopyWithImpl(_$_WatchAllStartedAdmin _value,
      $Res Function(_$_WatchAllStartedAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$_WatchAllStartedAdmin(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllStartedAdmin implements _WatchAllStartedAdmin {
  const _$_WatchAllStartedAdmin(this.id, this.userId);

  @override
  final String id;
  @override
  final String userId;

  @override
  String toString() {
    return 'ChatWatcherEvent.watchAllStartedAdmin(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllStartedAdmin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAllStartedAdminCopyWith<_$_WatchAllStartedAdmin> get copyWith =>
      __$$_WatchAllStartedAdminCopyWithImpl<_$_WatchAllStartedAdmin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(String id, String userId) watchAllStartedAdmin,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceived,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceivedAdmin,
  }) {
    return watchAllStartedAdmin(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(String id, String userId)? watchAllStartedAdmin,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
  }) {
    return watchAllStartedAdmin?.call(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(String id, String userId)? watchAllStartedAdmin,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (watchAllStartedAdmin != null) {
      return watchAllStartedAdmin(id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchAllStartedAdmin value) watchAllStartedAdmin,
    required TResult Function(_ChatReceived value) chatReceived,
    required TResult Function(_ChatReceivedAdmin value) chatReceivedAdmin,
  }) {
    return watchAllStartedAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult? Function(_ChatReceived value)? chatReceived,
    TResult? Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
  }) {
    return watchAllStartedAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult Function(_ChatReceived value)? chatReceived,
    TResult Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (watchAllStartedAdmin != null) {
      return watchAllStartedAdmin(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStartedAdmin implements ChatWatcherEvent {
  const factory _WatchAllStartedAdmin(final String id, final String userId) =
      _$_WatchAllStartedAdmin;

  String get id;
  String get userId;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedAdminCopyWith<_$_WatchAllStartedAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatReceivedCopyWith<$Res> {
  factory _$$_ChatReceivedCopyWith(
          _$_ChatReceived value, $Res Function(_$_ChatReceived) then) =
      __$$_ChatReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ChatFailure, ChatObject?> failureOrChat});
}

/// @nodoc
class __$$_ChatReceivedCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res, _$_ChatReceived>
    implements _$$_ChatReceivedCopyWith<$Res> {
  __$$_ChatReceivedCopyWithImpl(
      _$_ChatReceived _value, $Res Function(_$_ChatReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrChat = null,
  }) {
    return _then(_$_ChatReceived(
      null == failureOrChat
          ? _value.failureOrChat
          : failureOrChat // ignore: cast_nullable_to_non_nullable
              as Either<ChatFailure, ChatObject?>,
    ));
  }
}

/// @nodoc

class _$_ChatReceived implements _ChatReceived {
  const _$_ChatReceived(this.failureOrChat);

  @override
  final Either<ChatFailure, ChatObject?> failureOrChat;

  @override
  String toString() {
    return 'ChatWatcherEvent.chatReceived(failureOrChat: $failureOrChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatReceived &&
            (identical(other.failureOrChat, failureOrChat) ||
                other.failureOrChat == failureOrChat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrChat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatReceivedCopyWith<_$_ChatReceived> get copyWith =>
      __$$_ChatReceivedCopyWithImpl<_$_ChatReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(String id, String userId) watchAllStartedAdmin,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceived,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceivedAdmin,
  }) {
    return chatReceived(failureOrChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(String id, String userId)? watchAllStartedAdmin,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
  }) {
    return chatReceived?.call(failureOrChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(String id, String userId)? watchAllStartedAdmin,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (chatReceived != null) {
      return chatReceived(failureOrChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchAllStartedAdmin value) watchAllStartedAdmin,
    required TResult Function(_ChatReceived value) chatReceived,
    required TResult Function(_ChatReceivedAdmin value) chatReceivedAdmin,
  }) {
    return chatReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult? Function(_ChatReceived value)? chatReceived,
    TResult? Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
  }) {
    return chatReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult Function(_ChatReceived value)? chatReceived,
    TResult Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (chatReceived != null) {
      return chatReceived(this);
    }
    return orElse();
  }
}

abstract class _ChatReceived implements ChatWatcherEvent {
  const factory _ChatReceived(
      final Either<ChatFailure, ChatObject?> failureOrChat) = _$_ChatReceived;

  Either<ChatFailure, ChatObject?> get failureOrChat;
  @JsonKey(ignore: true)
  _$$_ChatReceivedCopyWith<_$_ChatReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatReceivedAdminCopyWith<$Res> {
  factory _$$_ChatReceivedAdminCopyWith(_$_ChatReceivedAdmin value,
          $Res Function(_$_ChatReceivedAdmin) then) =
      __$$_ChatReceivedAdminCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ChatFailure, ChatObject?> failureOrChat});
}

/// @nodoc
class __$$_ChatReceivedAdminCopyWithImpl<$Res>
    extends _$ChatWatcherEventCopyWithImpl<$Res, _$_ChatReceivedAdmin>
    implements _$$_ChatReceivedAdminCopyWith<$Res> {
  __$$_ChatReceivedAdminCopyWithImpl(
      _$_ChatReceivedAdmin _value, $Res Function(_$_ChatReceivedAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrChat = null,
  }) {
    return _then(_$_ChatReceivedAdmin(
      null == failureOrChat
          ? _value.failureOrChat
          : failureOrChat // ignore: cast_nullable_to_non_nullable
              as Either<ChatFailure, ChatObject?>,
    ));
  }
}

/// @nodoc

class _$_ChatReceivedAdmin implements _ChatReceivedAdmin {
  const _$_ChatReceivedAdmin(this.failureOrChat);

  @override
  final Either<ChatFailure, ChatObject?> failureOrChat;

  @override
  String toString() {
    return 'ChatWatcherEvent.chatReceivedAdmin(failureOrChat: $failureOrChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatReceivedAdmin &&
            (identical(other.failureOrChat, failureOrChat) ||
                other.failureOrChat == failureOrChat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrChat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatReceivedAdminCopyWith<_$_ChatReceivedAdmin> get copyWith =>
      __$$_ChatReceivedAdminCopyWithImpl<_$_ChatReceivedAdmin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(String id, String userId) watchAllStartedAdmin,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceived,
    required TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)
        chatReceivedAdmin,
  }) {
    return chatReceivedAdmin(failureOrChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(String id, String userId)? watchAllStartedAdmin,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult? Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
  }) {
    return chatReceivedAdmin?.call(failureOrChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(String id, String userId)? watchAllStartedAdmin,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceived,
    TResult Function(Either<ChatFailure, ChatObject?> failureOrChat)?
        chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (chatReceivedAdmin != null) {
      return chatReceivedAdmin(failureOrChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchAllStartedAdmin value) watchAllStartedAdmin,
    required TResult Function(_ChatReceived value) chatReceived,
    required TResult Function(_ChatReceivedAdmin value) chatReceivedAdmin,
  }) {
    return chatReceivedAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult? Function(_ChatReceived value)? chatReceived,
    TResult? Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
  }) {
    return chatReceivedAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchAllStartedAdmin value)? watchAllStartedAdmin,
    TResult Function(_ChatReceived value)? chatReceived,
    TResult Function(_ChatReceivedAdmin value)? chatReceivedAdmin,
    required TResult orElse(),
  }) {
    if (chatReceivedAdmin != null) {
      return chatReceivedAdmin(this);
    }
    return orElse();
  }
}

abstract class _ChatReceivedAdmin implements ChatWatcherEvent {
  const factory _ChatReceivedAdmin(
          final Either<ChatFailure, ChatObject?> failureOrChat) =
      _$_ChatReceivedAdmin;

  Either<ChatFailure, ChatObject?> get failureOrChat;
  @JsonKey(ignore: true)
  _$$_ChatReceivedAdminCopyWith<_$_ChatReceivedAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatObject? chatObject) loadSuccess,
    required TResult Function(ChatFailure chatFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatObject? chatObject)? loadSuccess,
    TResult? Function(ChatFailure chatFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatObject? chatObject)? loadSuccess,
    TResult Function(ChatFailure chatFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWatcherStateCopyWith<$Res> {
  factory $ChatWatcherStateCopyWith(
          ChatWatcherState value, $Res Function(ChatWatcherState) then) =
      _$ChatWatcherStateCopyWithImpl<$Res, ChatWatcherState>;
}

/// @nodoc
class _$ChatWatcherStateCopyWithImpl<$Res, $Val extends ChatWatcherState>
    implements $ChatWatcherStateCopyWith<$Res> {
  _$ChatWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatObject? chatObject) loadSuccess,
    required TResult Function(ChatFailure chatFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatObject? chatObject)? loadSuccess,
    TResult? Function(ChatFailure chatFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatObject? chatObject)? loadSuccess,
    TResult Function(ChatFailure chatFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ChatWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatObject? chatObject) loadSuccess,
    required TResult Function(ChatFailure chatFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatObject? chatObject)? loadSuccess,
    TResult? Function(ChatFailure chatFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatObject? chatObject)? loadSuccess,
    TResult Function(ChatFailure chatFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ChatWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatObject? chatObject});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatObject = freezed,
  }) {
    return _then(_$_LoadSuccess(
      freezed == chatObject
          ? _value.chatObject
          : chatObject // ignore: cast_nullable_to_non_nullable
              as ChatObject?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.chatObject);

  @override
  final ChatObject? chatObject;

  @override
  String toString() {
    return 'ChatWatcherState.loadSuccess(chatObject: $chatObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.chatObject, chatObject) ||
                other.chatObject == chatObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatObject? chatObject) loadSuccess,
    required TResult Function(ChatFailure chatFailure) loadFailure,
  }) {
    return loadSuccess(chatObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatObject? chatObject)? loadSuccess,
    TResult? Function(ChatFailure chatFailure)? loadFailure,
  }) {
    return loadSuccess?.call(chatObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatObject? chatObject)? loadSuccess,
    TResult Function(ChatFailure chatFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chatObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ChatWatcherState {
  const factory _LoadSuccess(final ChatObject? chatObject) = _$_LoadSuccess;

  ChatObject? get chatObject;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatFailure chatFailure});

  $ChatFailureCopyWith<$Res> get chatFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ChatWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == chatFailure
          ? _value.chatFailure
          : chatFailure // ignore: cast_nullable_to_non_nullable
              as ChatFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatFailureCopyWith<$Res> get chatFailure {
    return $ChatFailureCopyWith<$Res>(_value.chatFailure, (value) {
      return _then(_value.copyWith(chatFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.chatFailure);

  @override
  final ChatFailure chatFailure;

  @override
  String toString() {
    return 'ChatWatcherState.loadFailure(chatFailure: $chatFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.chatFailure, chatFailure) ||
                other.chatFailure == chatFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ChatObject? chatObject) loadSuccess,
    required TResult Function(ChatFailure chatFailure) loadFailure,
  }) {
    return loadFailure(chatFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ChatObject? chatObject)? loadSuccess,
    TResult? Function(ChatFailure chatFailure)? loadFailure,
  }) {
    return loadFailure?.call(chatFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ChatObject? chatObject)? loadSuccess,
    TResult Function(ChatFailure chatFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(chatFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ChatWatcherState {
  const factory _LoadFailure(final ChatFailure chatFailure) = _$_LoadFailure;

  ChatFailure get chatFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
