// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listProperty_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListPropertyWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)
        propertyWatched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)?
        propertyWatched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)?
        propertyWatched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_PropertyReceived value) propertyWatched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_PropertyReceived value)? propertyWatched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_PropertyReceived value)? propertyWatched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPropertyWatcherEventCopyWith<$Res> {
  factory $ListPropertyWatcherEventCopyWith(ListPropertyWatcherEvent value,
          $Res Function(ListPropertyWatcherEvent) then) =
      _$ListPropertyWatcherEventCopyWithImpl<$Res, ListPropertyWatcherEvent>;
}

/// @nodoc
class _$ListPropertyWatcherEventCopyWithImpl<$Res,
        $Val extends ListPropertyWatcherEvent>
    implements $ListPropertyWatcherEventCopyWith<$Res> {
  _$ListPropertyWatcherEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$ListPropertyWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ListPropertyWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)
        propertyWatched,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)?
        propertyWatched,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)?
        propertyWatched,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_PropertyReceived value) propertyWatched,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_PropertyReceived value)? propertyWatched,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_PropertyReceived value)? propertyWatched,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ListPropertyWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_PropertyReceivedCopyWith<$Res> {
  factory _$$_PropertyReceivedCopyWith(
          _$_PropertyReceived value, $Res Function(_$_PropertyReceived) then) =
      __$$_PropertyReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<ListPropertyFailure, List<PropertyDetailsObject>>
          failureOrProperty});
}

/// @nodoc
class __$$_PropertyReceivedCopyWithImpl<$Res>
    extends _$ListPropertyWatcherEventCopyWithImpl<$Res, _$_PropertyReceived>
    implements _$$_PropertyReceivedCopyWith<$Res> {
  __$$_PropertyReceivedCopyWithImpl(
      _$_PropertyReceived _value, $Res Function(_$_PropertyReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrProperty = null,
  }) {
    return _then(_$_PropertyReceived(
      null == failureOrProperty
          ? _value.failureOrProperty
          : failureOrProperty // ignore: cast_nullable_to_non_nullable
              as Either<ListPropertyFailure, List<PropertyDetailsObject>>,
    ));
  }
}

/// @nodoc

class _$_PropertyReceived implements _PropertyReceived {
  const _$_PropertyReceived(this.failureOrProperty);

  @override
  final Either<ListPropertyFailure, List<PropertyDetailsObject>>
      failureOrProperty;

  @override
  String toString() {
    return 'ListPropertyWatcherEvent.propertyWatched(failureOrProperty: $failureOrProperty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PropertyReceived &&
            (identical(other.failureOrProperty, failureOrProperty) ||
                other.failureOrProperty == failureOrProperty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrProperty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertyReceivedCopyWith<_$_PropertyReceived> get copyWith =>
      __$$_PropertyReceivedCopyWithImpl<_$_PropertyReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)
        propertyWatched,
  }) {
    return propertyWatched(failureOrProperty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)?
        propertyWatched,
  }) {
    return propertyWatched?.call(failureOrProperty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ListPropertyFailure, List<PropertyDetailsObject>>
                failureOrProperty)?
        propertyWatched,
    required TResult orElse(),
  }) {
    if (propertyWatched != null) {
      return propertyWatched(failureOrProperty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_PropertyReceived value) propertyWatched,
  }) {
    return propertyWatched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_PropertyReceived value)? propertyWatched,
  }) {
    return propertyWatched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_PropertyReceived value)? propertyWatched,
    required TResult orElse(),
  }) {
    if (propertyWatched != null) {
      return propertyWatched(this);
    }
    return orElse();
  }
}

abstract class _PropertyReceived implements ListPropertyWatcherEvent {
  const factory _PropertyReceived(
      final Either<ListPropertyFailure, List<PropertyDetailsObject>>
          failureOrProperty) = _$_PropertyReceived;

  Either<ListPropertyFailure, List<PropertyDetailsObject>>
      get failureOrProperty;
  @JsonKey(ignore: true)
  _$$_PropertyReceivedCopyWith<_$_PropertyReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListPropertyWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PropertyDetailsObject> propertyList)
        loadSuccess,
    required TResult Function(ListPropertyFailure listPropertyFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult? Function(ListPropertyFailure listPropertyFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult Function(ListPropertyFailure listPropertyFailure)? loadFailure,
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
abstract class $ListPropertyWatcherStateCopyWith<$Res> {
  factory $ListPropertyWatcherStateCopyWith(ListPropertyWatcherState value,
          $Res Function(ListPropertyWatcherState) then) =
      _$ListPropertyWatcherStateCopyWithImpl<$Res, ListPropertyWatcherState>;
}

/// @nodoc
class _$ListPropertyWatcherStateCopyWithImpl<$Res,
        $Val extends ListPropertyWatcherState>
    implements $ListPropertyWatcherStateCopyWith<$Res> {
  _$ListPropertyWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$ListPropertyWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ListPropertyWatcherState.initial()';
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
    required TResult Function(List<PropertyDetailsObject> propertyList)
        loadSuccess,
    required TResult Function(ListPropertyFailure listPropertyFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult? Function(ListPropertyFailure listPropertyFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult Function(ListPropertyFailure listPropertyFailure)? loadFailure,
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

abstract class _Initial implements ListPropertyWatcherState {
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
    extends _$ListPropertyWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'ListPropertyWatcherState.loadInProgress()';
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
    required TResult Function(List<PropertyDetailsObject> propertyList)
        loadSuccess,
    required TResult Function(ListPropertyFailure listPropertyFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult? Function(ListPropertyFailure listPropertyFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult Function(ListPropertyFailure listPropertyFailure)? loadFailure,
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

abstract class _LoadInProgress implements ListPropertyWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PropertyDetailsObject> propertyList});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ListPropertyWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyList = null,
  }) {
    return _then(_$_LoadSuccess(
      null == propertyList
          ? _value._propertyList
          : propertyList // ignore: cast_nullable_to_non_nullable
              as List<PropertyDetailsObject>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<PropertyDetailsObject> propertyList)
      : _propertyList = propertyList;

  final List<PropertyDetailsObject> _propertyList;
  @override
  List<PropertyDetailsObject> get propertyList {
    if (_propertyList is EqualUnmodifiableListView) return _propertyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyList);
  }

  @override
  String toString() {
    return 'ListPropertyWatcherState.loadSuccess(propertyList: $propertyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._propertyList, _propertyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_propertyList));

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
    required TResult Function(List<PropertyDetailsObject> propertyList)
        loadSuccess,
    required TResult Function(ListPropertyFailure listPropertyFailure)
        loadFailure,
  }) {
    return loadSuccess(propertyList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult? Function(ListPropertyFailure listPropertyFailure)? loadFailure,
  }) {
    return loadSuccess?.call(propertyList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult Function(ListPropertyFailure listPropertyFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(propertyList);
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

abstract class _LoadSuccess implements ListPropertyWatcherState {
  const factory _LoadSuccess(final List<PropertyDetailsObject> propertyList) =
      _$_LoadSuccess;

  List<PropertyDetailsObject> get propertyList;
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
  $Res call({ListPropertyFailure listPropertyFailure});

  $ListPropertyFailureCopyWith<$Res> get listPropertyFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ListPropertyWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPropertyFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == listPropertyFailure
          ? _value.listPropertyFailure
          : listPropertyFailure // ignore: cast_nullable_to_non_nullable
              as ListPropertyFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListPropertyFailureCopyWith<$Res> get listPropertyFailure {
    return $ListPropertyFailureCopyWith<$Res>(_value.listPropertyFailure,
        (value) {
      return _then(_value.copyWith(listPropertyFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.listPropertyFailure);

  @override
  final ListPropertyFailure listPropertyFailure;

  @override
  String toString() {
    return 'ListPropertyWatcherState.loadFailure(listPropertyFailure: $listPropertyFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.listPropertyFailure, listPropertyFailure) ||
                other.listPropertyFailure == listPropertyFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listPropertyFailure);

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
    required TResult Function(List<PropertyDetailsObject> propertyList)
        loadSuccess,
    required TResult Function(ListPropertyFailure listPropertyFailure)
        loadFailure,
  }) {
    return loadFailure(listPropertyFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult? Function(ListPropertyFailure listPropertyFailure)? loadFailure,
  }) {
    return loadFailure?.call(listPropertyFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PropertyDetailsObject> propertyList)? loadSuccess,
    TResult Function(ListPropertyFailure listPropertyFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(listPropertyFailure);
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

abstract class _LoadFailure implements ListPropertyWatcherState {
  const factory _LoadFailure(final ListPropertyFailure listPropertyFailure) =
      _$_LoadFailure;

  ListPropertyFailure get listPropertyFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
