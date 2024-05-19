// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'houseDetails_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HouseDetailsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)
        houseDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)?
        houseDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)?
        houseDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_HouseDetailsReceived value) houseDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_HouseDetailsReceived value)? houseDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_HouseDetailsReceived value)? houseDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseDetailsWatcherEventCopyWith<$Res> {
  factory $HouseDetailsWatcherEventCopyWith(HouseDetailsWatcherEvent value,
          $Res Function(HouseDetailsWatcherEvent) then) =
      _$HouseDetailsWatcherEventCopyWithImpl<$Res, HouseDetailsWatcherEvent>;
}

/// @nodoc
class _$HouseDetailsWatcherEventCopyWithImpl<$Res,
        $Val extends HouseDetailsWatcherEvent>
    implements $HouseDetailsWatcherEventCopyWith<$Res> {
  _$HouseDetailsWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$HouseDetailsWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'HouseDetailsWatcherEvent.watchAllStarted(id: $id)';
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
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)
        houseDetailsReceived,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)?
        houseDetailsReceived,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)?
        houseDetailsReceived,
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
    required TResult Function(_HouseDetailsReceived value) houseDetailsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_HouseDetailsReceived value)? houseDetailsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_HouseDetailsReceived value)? houseDetailsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements HouseDetailsWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HouseDetailsReceivedCopyWith<$Res> {
  factory _$$_HouseDetailsReceivedCopyWith(_$_HouseDetailsReceived value,
          $Res Function(_$_HouseDetailsReceived) then) =
      __$$_HouseDetailsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<HouseDetailsFailure, HouseDetailsObject?> failureOrHouseDetails});
}

/// @nodoc
class __$$_HouseDetailsReceivedCopyWithImpl<$Res>
    extends _$HouseDetailsWatcherEventCopyWithImpl<$Res,
        _$_HouseDetailsReceived>
    implements _$$_HouseDetailsReceivedCopyWith<$Res> {
  __$$_HouseDetailsReceivedCopyWithImpl(_$_HouseDetailsReceived _value,
      $Res Function(_$_HouseDetailsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrHouseDetails = null,
  }) {
    return _then(_$_HouseDetailsReceived(
      null == failureOrHouseDetails
          ? _value.failureOrHouseDetails
          : failureOrHouseDetails // ignore: cast_nullable_to_non_nullable
              as Either<HouseDetailsFailure, HouseDetailsObject?>,
    ));
  }
}

/// @nodoc

class _$_HouseDetailsReceived implements _HouseDetailsReceived {
  const _$_HouseDetailsReceived(this.failureOrHouseDetails);

  @override
  final Either<HouseDetailsFailure, HouseDetailsObject?> failureOrHouseDetails;

  @override
  String toString() {
    return 'HouseDetailsWatcherEvent.houseDetailsReceived(failureOrHouseDetails: $failureOrHouseDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HouseDetailsReceived &&
            (identical(other.failureOrHouseDetails, failureOrHouseDetails) ||
                other.failureOrHouseDetails == failureOrHouseDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrHouseDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HouseDetailsReceivedCopyWith<_$_HouseDetailsReceived> get copyWith =>
      __$$_HouseDetailsReceivedCopyWithImpl<_$_HouseDetailsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)
        houseDetailsReceived,
  }) {
    return houseDetailsReceived(failureOrHouseDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)?
        houseDetailsReceived,
  }) {
    return houseDetailsReceived?.call(failureOrHouseDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<HouseDetailsFailure, HouseDetailsObject?>
                failureOrHouseDetails)?
        houseDetailsReceived,
    required TResult orElse(),
  }) {
    if (houseDetailsReceived != null) {
      return houseDetailsReceived(failureOrHouseDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_HouseDetailsReceived value) houseDetailsReceived,
  }) {
    return houseDetailsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_HouseDetailsReceived value)? houseDetailsReceived,
  }) {
    return houseDetailsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_HouseDetailsReceived value)? houseDetailsReceived,
    required TResult orElse(),
  }) {
    if (houseDetailsReceived != null) {
      return houseDetailsReceived(this);
    }
    return orElse();
  }
}

abstract class _HouseDetailsReceived implements HouseDetailsWatcherEvent {
  const factory _HouseDetailsReceived(
      final Either<HouseDetailsFailure, HouseDetailsObject?>
          failureOrHouseDetails) = _$_HouseDetailsReceived;

  Either<HouseDetailsFailure, HouseDetailsObject?> get failureOrHouseDetails;
  @JsonKey(ignore: true)
  _$$_HouseDetailsReceivedCopyWith<_$_HouseDetailsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HouseDetailsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(HouseDetailsObject? houseDetailsObject)
        loadSuccess,
    required TResult Function(HouseDetailsFailure houseDetailsFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult? Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
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
abstract class $HouseDetailsWatcherStateCopyWith<$Res> {
  factory $HouseDetailsWatcherStateCopyWith(HouseDetailsWatcherState value,
          $Res Function(HouseDetailsWatcherState) then) =
      _$HouseDetailsWatcherStateCopyWithImpl<$Res, HouseDetailsWatcherState>;
}

/// @nodoc
class _$HouseDetailsWatcherStateCopyWithImpl<$Res,
        $Val extends HouseDetailsWatcherState>
    implements $HouseDetailsWatcherStateCopyWith<$Res> {
  _$HouseDetailsWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$HouseDetailsWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HouseDetailsWatcherState.initial()';
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
    required TResult Function(HouseDetailsObject? houseDetailsObject)
        loadSuccess,
    required TResult Function(HouseDetailsFailure houseDetailsFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult? Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
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

abstract class _Initial implements HouseDetailsWatcherState {
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
    extends _$HouseDetailsWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'HouseDetailsWatcherState.loadInProgress()';
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
    required TResult Function(HouseDetailsObject? houseDetailsObject)
        loadSuccess,
    required TResult Function(HouseDetailsFailure houseDetailsFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult? Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
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

abstract class _LoadInProgress implements HouseDetailsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({HouseDetailsObject? houseDetailsObject});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$HouseDetailsWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseDetailsObject = freezed,
  }) {
    return _then(_$_LoadSuccess(
      freezed == houseDetailsObject
          ? _value.houseDetailsObject
          : houseDetailsObject // ignore: cast_nullable_to_non_nullable
              as HouseDetailsObject?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.houseDetailsObject);

  @override
  final HouseDetailsObject? houseDetailsObject;

  @override
  String toString() {
    return 'HouseDetailsWatcherState.loadSuccess(houseDetailsObject: $houseDetailsObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.houseDetailsObject, houseDetailsObject) ||
                other.houseDetailsObject == houseDetailsObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, houseDetailsObject);

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
    required TResult Function(HouseDetailsObject? houseDetailsObject)
        loadSuccess,
    required TResult Function(HouseDetailsFailure houseDetailsFailure)
        loadFailure,
  }) {
    return loadSuccess(houseDetailsObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult? Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(houseDetailsObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(houseDetailsObject);
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

abstract class _LoadSuccess implements HouseDetailsWatcherState {
  const factory _LoadSuccess(final HouseDetailsObject? houseDetailsObject) =
      _$_LoadSuccess;

  HouseDetailsObject? get houseDetailsObject;
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
  $Res call({HouseDetailsFailure houseDetailsFailure});

  $HouseDetailsFailureCopyWith<$Res> get houseDetailsFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$HouseDetailsWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseDetailsFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == houseDetailsFailure
          ? _value.houseDetailsFailure
          : houseDetailsFailure // ignore: cast_nullable_to_non_nullable
              as HouseDetailsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HouseDetailsFailureCopyWith<$Res> get houseDetailsFailure {
    return $HouseDetailsFailureCopyWith<$Res>(_value.houseDetailsFailure,
        (value) {
      return _then(_value.copyWith(houseDetailsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.houseDetailsFailure);

  @override
  final HouseDetailsFailure houseDetailsFailure;

  @override
  String toString() {
    return 'HouseDetailsWatcherState.loadFailure(houseDetailsFailure: $houseDetailsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.houseDetailsFailure, houseDetailsFailure) ||
                other.houseDetailsFailure == houseDetailsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, houseDetailsFailure);

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
    required TResult Function(HouseDetailsObject? houseDetailsObject)
        loadSuccess,
    required TResult Function(HouseDetailsFailure houseDetailsFailure)
        loadFailure,
  }) {
    return loadFailure(houseDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult? Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
  }) {
    return loadFailure?.call(houseDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(HouseDetailsObject? houseDetailsObject)? loadSuccess,
    TResult Function(HouseDetailsFailure houseDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(houseDetailsFailure);
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

abstract class _LoadFailure implements HouseDetailsWatcherState {
  const factory _LoadFailure(final HouseDetailsFailure houseDetailsFailure) =
      _$_LoadFailure;

  HouseDetailsFailure get houseDetailsFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
