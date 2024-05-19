// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visitVerification_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisitVerificationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String markerId, String userID, String type)
        watchAllStarted,
    required TResult Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)
        visitVerificationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String markerId, String userID, String type)?
        watchAllStarted,
    TResult? Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)?
        visitVerificationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String markerId, String userID, String type)?
        watchAllStarted,
    TResult Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)?
        visitVerificationReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_visitVerificationReceived value)
        visitVerificationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_visitVerificationReceived value)?
        visitVerificationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_visitVerificationReceived value)?
        visitVerificationReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitVerificationWatcherEventCopyWith<$Res> {
  factory $VisitVerificationWatcherEventCopyWith(
          VisitVerificationWatcherEvent value,
          $Res Function(VisitVerificationWatcherEvent) then) =
      _$VisitVerificationWatcherEventCopyWithImpl<$Res,
          VisitVerificationWatcherEvent>;
}

/// @nodoc
class _$VisitVerificationWatcherEventCopyWithImpl<$Res,
        $Val extends VisitVerificationWatcherEvent>
    implements $VisitVerificationWatcherEventCopyWith<$Res> {
  _$VisitVerificationWatcherEventCopyWithImpl(this._value, this._then);

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
  $Res call({String markerId, String userID, String type});
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$VisitVerificationWatcherEventCopyWithImpl<$Res,
        _$_WatchAllStarted> implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markerId = null,
    Object? userID = null,
    Object? type = null,
  }) {
    return _then(_$_WatchAllStarted(
      null == markerId
          ? _value.markerId
          : markerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.markerId, this.userID, this.type);

  @override
  final String markerId;
  @override
  final String userID;
  @override
  final String type;

  @override
  String toString() {
    return 'VisitVerificationWatcherEvent.watchAllStarted(markerId: $markerId, userID: $userID, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllStarted &&
            (identical(other.markerId, markerId) ||
                other.markerId == markerId) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, markerId, userID, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      __$$_WatchAllStartedCopyWithImpl<_$_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String markerId, String userID, String type)
        watchAllStarted,
    required TResult Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)
        visitVerificationReceived,
  }) {
    return watchAllStarted(markerId, userID, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String markerId, String userID, String type)?
        watchAllStarted,
    TResult? Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)?
        visitVerificationReceived,
  }) {
    return watchAllStarted?.call(markerId, userID, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String markerId, String userID, String type)?
        watchAllStarted,
    TResult Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)?
        visitVerificationReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(markerId, userID, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_visitVerificationReceived value)
        visitVerificationReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_visitVerificationReceived value)?
        visitVerificationReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_visitVerificationReceived value)?
        visitVerificationReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements VisitVerificationWatcherEvent {
  const factory _WatchAllStarted(
          final String markerId, final String userID, final String type) =
      _$_WatchAllStarted;

  String get markerId;
  String get userID;
  String get type;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_visitVerificationReceivedCopyWith<$Res> {
  factory _$$_visitVerificationReceivedCopyWith(
          _$_visitVerificationReceived value,
          $Res Function(_$_visitVerificationReceived) then) =
      __$$_visitVerificationReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<VisitVerificationFailure, List<VisitVerification>?>
          failureOrVisitVerification});
}

/// @nodoc
class __$$_visitVerificationReceivedCopyWithImpl<$Res>
    extends _$VisitVerificationWatcherEventCopyWithImpl<$Res,
        _$_visitVerificationReceived>
    implements _$$_visitVerificationReceivedCopyWith<$Res> {
  __$$_visitVerificationReceivedCopyWithImpl(
      _$_visitVerificationReceived _value,
      $Res Function(_$_visitVerificationReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrVisitVerification = null,
  }) {
    return _then(_$_visitVerificationReceived(
      null == failureOrVisitVerification
          ? _value.failureOrVisitVerification
          : failureOrVisitVerification // ignore: cast_nullable_to_non_nullable
              as Either<VisitVerificationFailure, List<VisitVerification>?>,
    ));
  }
}

/// @nodoc

class _$_visitVerificationReceived implements _visitVerificationReceived {
  const _$_visitVerificationReceived(this.failureOrVisitVerification);

  @override
  final Either<VisitVerificationFailure, List<VisitVerification>?>
      failureOrVisitVerification;

  @override
  String toString() {
    return 'VisitVerificationWatcherEvent.visitVerificationReceived(failureOrVisitVerification: $failureOrVisitVerification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_visitVerificationReceived &&
            (identical(other.failureOrVisitVerification,
                    failureOrVisitVerification) ||
                other.failureOrVisitVerification ==
                    failureOrVisitVerification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrVisitVerification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_visitVerificationReceivedCopyWith<_$_visitVerificationReceived>
      get copyWith => __$$_visitVerificationReceivedCopyWithImpl<
          _$_visitVerificationReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String markerId, String userID, String type)
        watchAllStarted,
    required TResult Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)
        visitVerificationReceived,
  }) {
    return visitVerificationReceived(failureOrVisitVerification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String markerId, String userID, String type)?
        watchAllStarted,
    TResult? Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)?
        visitVerificationReceived,
  }) {
    return visitVerificationReceived?.call(failureOrVisitVerification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String markerId, String userID, String type)?
        watchAllStarted,
    TResult Function(
            Either<VisitVerificationFailure, List<VisitVerification>?>
                failureOrVisitVerification)?
        visitVerificationReceived,
    required TResult orElse(),
  }) {
    if (visitVerificationReceived != null) {
      return visitVerificationReceived(failureOrVisitVerification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_visitVerificationReceived value)
        visitVerificationReceived,
  }) {
    return visitVerificationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_visitVerificationReceived value)?
        visitVerificationReceived,
  }) {
    return visitVerificationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_visitVerificationReceived value)?
        visitVerificationReceived,
    required TResult orElse(),
  }) {
    if (visitVerificationReceived != null) {
      return visitVerificationReceived(this);
    }
    return orElse();
  }
}

abstract class _visitVerificationReceived
    implements VisitVerificationWatcherEvent {
  const factory _visitVerificationReceived(
      final Either<VisitVerificationFailure, List<VisitVerification>?>
          failureOrVisitVerification) = _$_visitVerificationReceived;

  Either<VisitVerificationFailure, List<VisitVerification>?>
      get failureOrVisitVerification;
  @JsonKey(ignore: true)
  _$$_visitVerificationReceivedCopyWith<_$_visitVerificationReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VisitVerificationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<VisitVerification>? visitVerificationObject)
        loadSuccess,
    required TResult Function(VisitVerificationFailure visitVerificationFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult? Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
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
abstract class $VisitVerificationWatcherStateCopyWith<$Res> {
  factory $VisitVerificationWatcherStateCopyWith(
          VisitVerificationWatcherState value,
          $Res Function(VisitVerificationWatcherState) then) =
      _$VisitVerificationWatcherStateCopyWithImpl<$Res,
          VisitVerificationWatcherState>;
}

/// @nodoc
class _$VisitVerificationWatcherStateCopyWithImpl<$Res,
        $Val extends VisitVerificationWatcherState>
    implements $VisitVerificationWatcherStateCopyWith<$Res> {
  _$VisitVerificationWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$VisitVerificationWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VisitVerificationWatcherState.initial()';
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
    required TResult Function(List<VisitVerification>? visitVerificationObject)
        loadSuccess,
    required TResult Function(VisitVerificationFailure visitVerificationFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult? Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
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

abstract class _Initial implements VisitVerificationWatcherState {
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
    extends _$VisitVerificationWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'VisitVerificationWatcherState.loadInProgress()';
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
    required TResult Function(List<VisitVerification>? visitVerificationObject)
        loadSuccess,
    required TResult Function(VisitVerificationFailure visitVerificationFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult? Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
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

abstract class _LoadInProgress implements VisitVerificationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VisitVerification>? visitVerificationObject});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$VisitVerificationWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitVerificationObject = freezed,
  }) {
    return _then(_$_LoadSuccess(
      freezed == visitVerificationObject
          ? _value._visitVerificationObject
          : visitVerificationObject // ignore: cast_nullable_to_non_nullable
              as List<VisitVerification>?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<VisitVerification>? visitVerificationObject)
      : _visitVerificationObject = visitVerificationObject;

  final List<VisitVerification>? _visitVerificationObject;
  @override
  List<VisitVerification>? get visitVerificationObject {
    final value = _visitVerificationObject;
    if (value == null) return null;
    if (_visitVerificationObject is EqualUnmodifiableListView)
      return _visitVerificationObject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VisitVerificationWatcherState.loadSuccess(visitVerificationObject: $visitVerificationObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(
                other._visitVerificationObject, _visitVerificationObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_visitVerificationObject));

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
    required TResult Function(List<VisitVerification>? visitVerificationObject)
        loadSuccess,
    required TResult Function(VisitVerificationFailure visitVerificationFailure)
        loadFailure,
  }) {
    return loadSuccess(visitVerificationObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult? Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
  }) {
    return loadSuccess?.call(visitVerificationObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(visitVerificationObject);
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

abstract class _LoadSuccess implements VisitVerificationWatcherState {
  const factory _LoadSuccess(
      final List<VisitVerification>? visitVerificationObject) = _$_LoadSuccess;

  List<VisitVerification>? get visitVerificationObject;
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
  $Res call({VisitVerificationFailure visitVerificationFailure});

  $VisitVerificationFailureCopyWith<$Res> get visitVerificationFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$VisitVerificationWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitVerificationFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == visitVerificationFailure
          ? _value.visitVerificationFailure
          : visitVerificationFailure // ignore: cast_nullable_to_non_nullable
              as VisitVerificationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitVerificationFailureCopyWith<$Res> get visitVerificationFailure {
    return $VisitVerificationFailureCopyWith<$Res>(
        _value.visitVerificationFailure, (value) {
      return _then(_value.copyWith(visitVerificationFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.visitVerificationFailure);

  @override
  final VisitVerificationFailure visitVerificationFailure;

  @override
  String toString() {
    return 'VisitVerificationWatcherState.loadFailure(visitVerificationFailure: $visitVerificationFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(
                    other.visitVerificationFailure, visitVerificationFailure) ||
                other.visitVerificationFailure == visitVerificationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitVerificationFailure);

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
    required TResult Function(List<VisitVerification>? visitVerificationObject)
        loadSuccess,
    required TResult Function(VisitVerificationFailure visitVerificationFailure)
        loadFailure,
  }) {
    return loadFailure(visitVerificationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult? Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
  }) {
    return loadFailure?.call(visitVerificationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<VisitVerification>? visitVerificationObject)?
        loadSuccess,
    TResult Function(VisitVerificationFailure visitVerificationFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(visitVerificationFailure);
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

abstract class _LoadFailure implements VisitVerificationWatcherState {
  const factory _LoadFailure(
      final VisitVerificationFailure visitVerificationFailure) = _$_LoadFailure;

  VisitVerificationFailure get visitVerificationFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
