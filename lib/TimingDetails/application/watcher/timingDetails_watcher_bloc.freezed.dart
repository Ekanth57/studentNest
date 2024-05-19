// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timingDetails_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimingDetailsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)
        timingDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)?
        timingDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)?
        timingDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_TimingDetailsReceived value)
        timingDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_TimingDetailsReceived value)? timingDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_TimingDetailsReceived value)? timingDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingDetailsWatcherEventCopyWith<$Res> {
  factory $TimingDetailsWatcherEventCopyWith(TimingDetailsWatcherEvent value,
          $Res Function(TimingDetailsWatcherEvent) then) =
      _$TimingDetailsWatcherEventCopyWithImpl<$Res, TimingDetailsWatcherEvent>;
}

/// @nodoc
class _$TimingDetailsWatcherEventCopyWithImpl<$Res,
        $Val extends TimingDetailsWatcherEvent>
    implements $TimingDetailsWatcherEventCopyWith<$Res> {
  _$TimingDetailsWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$TimingDetailsWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'TimingDetailsWatcherEvent.watchAllStarted(id: $id)';
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
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)
        timingDetailsReceived,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)?
        timingDetailsReceived,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)?
        timingDetailsReceived,
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
    required TResult Function(_TimingDetailsReceived value)
        timingDetailsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_TimingDetailsReceived value)? timingDetailsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_TimingDetailsReceived value)? timingDetailsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TimingDetailsWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimingDetailsReceivedCopyWith<$Res> {
  factory _$$_TimingDetailsReceivedCopyWith(_$_TimingDetailsReceived value,
          $Res Function(_$_TimingDetailsReceived) then) =
      __$$_TimingDetailsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails});
}

/// @nodoc
class __$$_TimingDetailsReceivedCopyWithImpl<$Res>
    extends _$TimingDetailsWatcherEventCopyWithImpl<$Res,
        _$_TimingDetailsReceived>
    implements _$$_TimingDetailsReceivedCopyWith<$Res> {
  __$$_TimingDetailsReceivedCopyWithImpl(_$_TimingDetailsReceived _value,
      $Res Function(_$_TimingDetailsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrTimingDetails = null,
  }) {
    return _then(_$_TimingDetailsReceived(
      null == failureOrTimingDetails
          ? _value.failureOrTimingDetails
          : failureOrTimingDetails // ignore: cast_nullable_to_non_nullable
              as Either<TimingFailure, TimingDetailsObject?>,
    ));
  }
}

/// @nodoc

class _$_TimingDetailsReceived implements _TimingDetailsReceived {
  const _$_TimingDetailsReceived(this.failureOrTimingDetails);

  @override
  final Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails;

  @override
  String toString() {
    return 'TimingDetailsWatcherEvent.timingDetailsReceived(failureOrTimingDetails: $failureOrTimingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimingDetailsReceived &&
            (identical(other.failureOrTimingDetails, failureOrTimingDetails) ||
                other.failureOrTimingDetails == failureOrTimingDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrTimingDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimingDetailsReceivedCopyWith<_$_TimingDetailsReceived> get copyWith =>
      __$$_TimingDetailsReceivedCopyWithImpl<_$_TimingDetailsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)
        timingDetailsReceived,
  }) {
    return timingDetailsReceived(failureOrTimingDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)?
        timingDetailsReceived,
  }) {
    return timingDetailsReceived?.call(failureOrTimingDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<TimingFailure, TimingDetailsObject?> failureOrTimingDetails)?
        timingDetailsReceived,
    required TResult orElse(),
  }) {
    if (timingDetailsReceived != null) {
      return timingDetailsReceived(failureOrTimingDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_TimingDetailsReceived value)
        timingDetailsReceived,
  }) {
    return timingDetailsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_TimingDetailsReceived value)? timingDetailsReceived,
  }) {
    return timingDetailsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_TimingDetailsReceived value)? timingDetailsReceived,
    required TResult orElse(),
  }) {
    if (timingDetailsReceived != null) {
      return timingDetailsReceived(this);
    }
    return orElse();
  }
}

abstract class _TimingDetailsReceived implements TimingDetailsWatcherEvent {
  const factory _TimingDetailsReceived(
      final Either<TimingFailure, TimingDetailsObject?>
          failureOrTimingDetails) = _$_TimingDetailsReceived;

  Either<TimingFailure, TimingDetailsObject?> get failureOrTimingDetails;
  @JsonKey(ignore: true)
  _$$_TimingDetailsReceivedCopyWith<_$_TimingDetailsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimingDetailsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(TimingDetailsObject? timingDetailsDetails)
        loadSuccess,
    required TResult Function(TimingFailure timingDetailsFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult? Function(TimingFailure timingDetailsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult Function(TimingFailure timingDetailsFailure)? loadFailure,
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
abstract class $TimingDetailsWatcherStateCopyWith<$Res> {
  factory $TimingDetailsWatcherStateCopyWith(TimingDetailsWatcherState value,
          $Res Function(TimingDetailsWatcherState) then) =
      _$TimingDetailsWatcherStateCopyWithImpl<$Res, TimingDetailsWatcherState>;
}

/// @nodoc
class _$TimingDetailsWatcherStateCopyWithImpl<$Res,
        $Val extends TimingDetailsWatcherState>
    implements $TimingDetailsWatcherStateCopyWith<$Res> {
  _$TimingDetailsWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$TimingDetailsWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TimingDetailsWatcherState.initial()';
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
    required TResult Function(TimingDetailsObject? timingDetailsDetails)
        loadSuccess,
    required TResult Function(TimingFailure timingDetailsFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult? Function(TimingFailure timingDetailsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult Function(TimingFailure timingDetailsFailure)? loadFailure,
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

abstract class _Initial implements TimingDetailsWatcherState {
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
    extends _$TimingDetailsWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'TimingDetailsWatcherState.loadInProgress()';
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
    required TResult Function(TimingDetailsObject? timingDetailsDetails)
        loadSuccess,
    required TResult Function(TimingFailure timingDetailsFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult? Function(TimingFailure timingDetailsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult Function(TimingFailure timingDetailsFailure)? loadFailure,
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

abstract class _LoadInProgress implements TimingDetailsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({TimingDetailsObject? timingDetailsDetails});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$TimingDetailsWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timingDetailsDetails = freezed,
  }) {
    return _then(_$_LoadSuccess(
      freezed == timingDetailsDetails
          ? _value.timingDetailsDetails
          : timingDetailsDetails // ignore: cast_nullable_to_non_nullable
              as TimingDetailsObject?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.timingDetailsDetails);

  @override
  final TimingDetailsObject? timingDetailsDetails;

  @override
  String toString() {
    return 'TimingDetailsWatcherState.loadSuccess(timingDetailsDetails: $timingDetailsDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.timingDetailsDetails, timingDetailsDetails) ||
                other.timingDetailsDetails == timingDetailsDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timingDetailsDetails);

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
    required TResult Function(TimingDetailsObject? timingDetailsDetails)
        loadSuccess,
    required TResult Function(TimingFailure timingDetailsFailure) loadFailure,
  }) {
    return loadSuccess(timingDetailsDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult? Function(TimingFailure timingDetailsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(timingDetailsDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult Function(TimingFailure timingDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(timingDetailsDetails);
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

abstract class _LoadSuccess implements TimingDetailsWatcherState {
  const factory _LoadSuccess(final TimingDetailsObject? timingDetailsDetails) =
      _$_LoadSuccess;

  TimingDetailsObject? get timingDetailsDetails;
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
  $Res call({TimingFailure timingDetailsFailure});

  $TimingFailureCopyWith<$Res> get timingDetailsFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$TimingDetailsWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timingDetailsFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == timingDetailsFailure
          ? _value.timingDetailsFailure
          : timingDetailsFailure // ignore: cast_nullable_to_non_nullable
              as TimingFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingFailureCopyWith<$Res> get timingDetailsFailure {
    return $TimingFailureCopyWith<$Res>(_value.timingDetailsFailure, (value) {
      return _then(_value.copyWith(timingDetailsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.timingDetailsFailure);

  @override
  final TimingFailure timingDetailsFailure;

  @override
  String toString() {
    return 'TimingDetailsWatcherState.loadFailure(timingDetailsFailure: $timingDetailsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.timingDetailsFailure, timingDetailsFailure) ||
                other.timingDetailsFailure == timingDetailsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timingDetailsFailure);

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
    required TResult Function(TimingDetailsObject? timingDetailsDetails)
        loadSuccess,
    required TResult Function(TimingFailure timingDetailsFailure) loadFailure,
  }) {
    return loadFailure(timingDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult? Function(TimingFailure timingDetailsFailure)? loadFailure,
  }) {
    return loadFailure?.call(timingDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TimingDetailsObject? timingDetailsDetails)? loadSuccess,
    TResult Function(TimingFailure timingDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(timingDetailsFailure);
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

abstract class _LoadFailure implements TimingDetailsWatcherState {
  const factory _LoadFailure(final TimingFailure timingDetailsFailure) =
      _$_LoadFailure;

  TimingFailure get timingDetailsFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
