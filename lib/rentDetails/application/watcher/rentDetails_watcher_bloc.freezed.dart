// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rentDetails_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RentDetailsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<RentDetailsFailure, RentDetailsObject?> failureOrRentDetails)
        rentDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<RentDetailsFailure, RentDetailsObject?>
                failureOrRentDetails)?
        rentDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<RentDetailsFailure, RentDetailsObject?>
                failureOrRentDetails)?
        rentDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_RentDetailsReceived value) rentDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_RentDetailsReceived value)? rentDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RentDetailsReceived value)? rentDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentDetailsWatcherEventCopyWith<$Res> {
  factory $RentDetailsWatcherEventCopyWith(RentDetailsWatcherEvent value,
          $Res Function(RentDetailsWatcherEvent) then) =
      _$RentDetailsWatcherEventCopyWithImpl<$Res, RentDetailsWatcherEvent>;
}

/// @nodoc
class _$RentDetailsWatcherEventCopyWithImpl<$Res,
        $Val extends RentDetailsWatcherEvent>
    implements $RentDetailsWatcherEventCopyWith<$Res> {
  _$RentDetailsWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$RentDetailsWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'RentDetailsWatcherEvent.watchAllStarted(id: $id)';
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
    required TResult Function(
            Either<RentDetailsFailure, RentDetailsObject?> failureOrRentDetails)
        rentDetailsReceived,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<RentDetailsFailure, RentDetailsObject?>
                failureOrRentDetails)?
        rentDetailsReceived,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<RentDetailsFailure, RentDetailsObject?>
                failureOrRentDetails)?
        rentDetailsReceived,
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
    required TResult Function(_RentDetailsReceived value) rentDetailsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_RentDetailsReceived value)? rentDetailsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RentDetailsReceived value)? rentDetailsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements RentDetailsWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RentDetailsReceivedCopyWith<$Res> {
  factory _$$_RentDetailsReceivedCopyWith(_$_RentDetailsReceived value,
          $Res Function(_$_RentDetailsReceived) then) =
      __$$_RentDetailsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<RentDetailsFailure, RentDetailsObject?> failureOrRentDetails});
}

/// @nodoc
class __$$_RentDetailsReceivedCopyWithImpl<$Res>
    extends _$RentDetailsWatcherEventCopyWithImpl<$Res, _$_RentDetailsReceived>
    implements _$$_RentDetailsReceivedCopyWith<$Res> {
  __$$_RentDetailsReceivedCopyWithImpl(_$_RentDetailsReceived _value,
      $Res Function(_$_RentDetailsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrRentDetails = null,
  }) {
    return _then(_$_RentDetailsReceived(
      null == failureOrRentDetails
          ? _value.failureOrRentDetails
          : failureOrRentDetails // ignore: cast_nullable_to_non_nullable
              as Either<RentDetailsFailure, RentDetailsObject?>,
    ));
  }
}

/// @nodoc

class _$_RentDetailsReceived implements _RentDetailsReceived {
  const _$_RentDetailsReceived(this.failureOrRentDetails);

  @override
  final Either<RentDetailsFailure, RentDetailsObject?> failureOrRentDetails;

  @override
  String toString() {
    return 'RentDetailsWatcherEvent.rentDetailsReceived(failureOrRentDetails: $failureOrRentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RentDetailsReceived &&
            (identical(other.failureOrRentDetails, failureOrRentDetails) ||
                other.failureOrRentDetails == failureOrRentDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrRentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RentDetailsReceivedCopyWith<_$_RentDetailsReceived> get copyWith =>
      __$$_RentDetailsReceivedCopyWithImpl<_$_RentDetailsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<RentDetailsFailure, RentDetailsObject?> failureOrRentDetails)
        rentDetailsReceived,
  }) {
    return rentDetailsReceived(failureOrRentDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<RentDetailsFailure, RentDetailsObject?>
                failureOrRentDetails)?
        rentDetailsReceived,
  }) {
    return rentDetailsReceived?.call(failureOrRentDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<RentDetailsFailure, RentDetailsObject?>
                failureOrRentDetails)?
        rentDetailsReceived,
    required TResult orElse(),
  }) {
    if (rentDetailsReceived != null) {
      return rentDetailsReceived(failureOrRentDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_RentDetailsReceived value) rentDetailsReceived,
  }) {
    return rentDetailsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_RentDetailsReceived value)? rentDetailsReceived,
  }) {
    return rentDetailsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RentDetailsReceived value)? rentDetailsReceived,
    required TResult orElse(),
  }) {
    if (rentDetailsReceived != null) {
      return rentDetailsReceived(this);
    }
    return orElse();
  }
}

abstract class _RentDetailsReceived implements RentDetailsWatcherEvent {
  const factory _RentDetailsReceived(
      final Either<RentDetailsFailure, RentDetailsObject?>
          failureOrRentDetails) = _$_RentDetailsReceived;

  Either<RentDetailsFailure, RentDetailsObject?> get failureOrRentDetails;
  @JsonKey(ignore: true)
  _$$_RentDetailsReceivedCopyWith<_$_RentDetailsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RentDetailsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(RentDetailsObject? rentDetailsObject) loadSuccess,
    required TResult Function(RentDetailsFailure rentDetailsFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult? Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
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
abstract class $RentDetailsWatcherStateCopyWith<$Res> {
  factory $RentDetailsWatcherStateCopyWith(RentDetailsWatcherState value,
          $Res Function(RentDetailsWatcherState) then) =
      _$RentDetailsWatcherStateCopyWithImpl<$Res, RentDetailsWatcherState>;
}

/// @nodoc
class _$RentDetailsWatcherStateCopyWithImpl<$Res,
        $Val extends RentDetailsWatcherState>
    implements $RentDetailsWatcherStateCopyWith<$Res> {
  _$RentDetailsWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$RentDetailsWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RentDetailsWatcherState.initial()';
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
    required TResult Function(RentDetailsObject? rentDetailsObject) loadSuccess,
    required TResult Function(RentDetailsFailure rentDetailsFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult? Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
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

abstract class _Initial implements RentDetailsWatcherState {
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
    extends _$RentDetailsWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'RentDetailsWatcherState.loadInProgress()';
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
    required TResult Function(RentDetailsObject? rentDetailsObject) loadSuccess,
    required TResult Function(RentDetailsFailure rentDetailsFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult? Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
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

abstract class _LoadInProgress implements RentDetailsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({RentDetailsObject? rentDetailsObject});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$RentDetailsWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentDetailsObject = freezed,
  }) {
    return _then(_$_LoadSuccess(
      freezed == rentDetailsObject
          ? _value.rentDetailsObject
          : rentDetailsObject // ignore: cast_nullable_to_non_nullable
              as RentDetailsObject?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.rentDetailsObject);

  @override
  final RentDetailsObject? rentDetailsObject;

  @override
  String toString() {
    return 'RentDetailsWatcherState.loadSuccess(rentDetailsObject: $rentDetailsObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.rentDetailsObject, rentDetailsObject) ||
                other.rentDetailsObject == rentDetailsObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentDetailsObject);

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
    required TResult Function(RentDetailsObject? rentDetailsObject) loadSuccess,
    required TResult Function(RentDetailsFailure rentDetailsFailure)
        loadFailure,
  }) {
    return loadSuccess(rentDetailsObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult? Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(rentDetailsObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(rentDetailsObject);
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

abstract class _LoadSuccess implements RentDetailsWatcherState {
  const factory _LoadSuccess(final RentDetailsObject? rentDetailsObject) =
      _$_LoadSuccess;

  RentDetailsObject? get rentDetailsObject;
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
  $Res call({RentDetailsFailure rentDetailsFailure});

  $RentDetailsFailureCopyWith<$Res> get rentDetailsFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$RentDetailsWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentDetailsFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == rentDetailsFailure
          ? _value.rentDetailsFailure
          : rentDetailsFailure // ignore: cast_nullable_to_non_nullable
              as RentDetailsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RentDetailsFailureCopyWith<$Res> get rentDetailsFailure {
    return $RentDetailsFailureCopyWith<$Res>(_value.rentDetailsFailure,
        (value) {
      return _then(_value.copyWith(rentDetailsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.rentDetailsFailure);

  @override
  final RentDetailsFailure rentDetailsFailure;

  @override
  String toString() {
    return 'RentDetailsWatcherState.loadFailure(rentDetailsFailure: $rentDetailsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.rentDetailsFailure, rentDetailsFailure) ||
                other.rentDetailsFailure == rentDetailsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentDetailsFailure);

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
    required TResult Function(RentDetailsObject? rentDetailsObject) loadSuccess,
    required TResult Function(RentDetailsFailure rentDetailsFailure)
        loadFailure,
  }) {
    return loadFailure(rentDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult? Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
  }) {
    return loadFailure?.call(rentDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(RentDetailsObject? rentDetailsObject)? loadSuccess,
    TResult Function(RentDetailsFailure rentDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(rentDetailsFailure);
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

abstract class _LoadFailure implements RentDetailsWatcherState {
  const factory _LoadFailure(final RentDetailsFailure rentDetailsFailure) =
      _$_LoadFailure;

  RentDetailsFailure get rentDetailsFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
