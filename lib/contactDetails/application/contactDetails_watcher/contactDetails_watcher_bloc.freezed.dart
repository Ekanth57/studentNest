// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contactDetails_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactDetailsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)
        contactDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)?
        contactDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)?
        contactDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ContactDetailsReceived value)
        contactDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_ContactDetailsReceived value)? contactDetailsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ContactDetailsReceived value)? contactDetailsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsWatcherEventCopyWith<$Res> {
  factory $ContactDetailsWatcherEventCopyWith(ContactDetailsWatcherEvent value,
          $Res Function(ContactDetailsWatcherEvent) then) =
      _$ContactDetailsWatcherEventCopyWithImpl<$Res,
          ContactDetailsWatcherEvent>;
}

/// @nodoc
class _$ContactDetailsWatcherEventCopyWithImpl<$Res,
        $Val extends ContactDetailsWatcherEvent>
    implements $ContactDetailsWatcherEventCopyWith<$Res> {
  _$ContactDetailsWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$ContactDetailsWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'ContactDetailsWatcherEvent.watchAllStarted(id: $id)';
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
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)
        contactDetailsReceived,
  }) {
    return watchAllStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)?
        contactDetailsReceived,
  }) {
    return watchAllStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)?
        contactDetailsReceived,
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
    required TResult Function(_ContactDetailsReceived value)
        contactDetailsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_ContactDetailsReceived value)? contactDetailsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ContactDetailsReceived value)? contactDetailsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ContactDetailsWatcherEvent {
  const factory _WatchAllStarted(final String id) = _$_WatchAllStarted;

  String get id;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContactDetailsReceivedCopyWith<$Res> {
  factory _$$_ContactDetailsReceivedCopyWith(_$_ContactDetailsReceived value,
          $Res Function(_$_ContactDetailsReceived) then) =
      __$$_ContactDetailsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<ContactDetailsFailure, ContactDetailsObject?>
          failureOrContactDetails});
}

/// @nodoc
class __$$_ContactDetailsReceivedCopyWithImpl<$Res>
    extends _$ContactDetailsWatcherEventCopyWithImpl<$Res,
        _$_ContactDetailsReceived>
    implements _$$_ContactDetailsReceivedCopyWith<$Res> {
  __$$_ContactDetailsReceivedCopyWithImpl(_$_ContactDetailsReceived _value,
      $Res Function(_$_ContactDetailsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrContactDetails = null,
  }) {
    return _then(_$_ContactDetailsReceived(
      null == failureOrContactDetails
          ? _value.failureOrContactDetails
          : failureOrContactDetails // ignore: cast_nullable_to_non_nullable
              as Either<ContactDetailsFailure, ContactDetailsObject?>,
    ));
  }
}

/// @nodoc

class _$_ContactDetailsReceived implements _ContactDetailsReceived {
  const _$_ContactDetailsReceived(this.failureOrContactDetails);

  @override
  final Either<ContactDetailsFailure, ContactDetailsObject?>
      failureOrContactDetails;

  @override
  String toString() {
    return 'ContactDetailsWatcherEvent.contactDetailsReceived(failureOrContactDetails: $failureOrContactDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactDetailsReceived &&
            (identical(
                    other.failureOrContactDetails, failureOrContactDetails) ||
                other.failureOrContactDetails == failureOrContactDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrContactDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactDetailsReceivedCopyWith<_$_ContactDetailsReceived> get copyWith =>
      __$$_ContactDetailsReceivedCopyWithImpl<_$_ContactDetailsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchAllStarted,
    required TResult Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)
        contactDetailsReceived,
  }) {
    return contactDetailsReceived(failureOrContactDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchAllStarted,
    TResult? Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)?
        contactDetailsReceived,
  }) {
    return contactDetailsReceived?.call(failureOrContactDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchAllStarted,
    TResult Function(
            Either<ContactDetailsFailure, ContactDetailsObject?>
                failureOrContactDetails)?
        contactDetailsReceived,
    required TResult orElse(),
  }) {
    if (contactDetailsReceived != null) {
      return contactDetailsReceived(failureOrContactDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_ContactDetailsReceived value)
        contactDetailsReceived,
  }) {
    return contactDetailsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_ContactDetailsReceived value)? contactDetailsReceived,
  }) {
    return contactDetailsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_ContactDetailsReceived value)? contactDetailsReceived,
    required TResult orElse(),
  }) {
    if (contactDetailsReceived != null) {
      return contactDetailsReceived(this);
    }
    return orElse();
  }
}

abstract class _ContactDetailsReceived implements ContactDetailsWatcherEvent {
  const factory _ContactDetailsReceived(
      final Either<ContactDetailsFailure, ContactDetailsObject?>
          failureOrContactDetails) = _$_ContactDetailsReceived;

  Either<ContactDetailsFailure, ContactDetailsObject?>
      get failureOrContactDetails;
  @JsonKey(ignore: true)
  _$$_ContactDetailsReceivedCopyWith<_$_ContactDetailsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactDetailsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(ContactDetailsObject? contactDetailsDetails)
        loadSuccess,
    required TResult Function(ContactDetailsFailure contactDetailsFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult? Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
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
abstract class $ContactDetailsWatcherStateCopyWith<$Res> {
  factory $ContactDetailsWatcherStateCopyWith(ContactDetailsWatcherState value,
          $Res Function(ContactDetailsWatcherState) then) =
      _$ContactDetailsWatcherStateCopyWithImpl<$Res,
          ContactDetailsWatcherState>;
}

/// @nodoc
class _$ContactDetailsWatcherStateCopyWithImpl<$Res,
        $Val extends ContactDetailsWatcherState>
    implements $ContactDetailsWatcherStateCopyWith<$Res> {
  _$ContactDetailsWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$ContactDetailsWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ContactDetailsWatcherState.initial()';
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
    required TResult Function(ContactDetailsObject? contactDetailsDetails)
        loadSuccess,
    required TResult Function(ContactDetailsFailure contactDetailsFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult? Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
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

abstract class _Initial implements ContactDetailsWatcherState {
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
    extends _$ContactDetailsWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'ContactDetailsWatcherState.loadInProgress()';
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
    required TResult Function(ContactDetailsObject? contactDetailsDetails)
        loadSuccess,
    required TResult Function(ContactDetailsFailure contactDetailsFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult? Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
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

abstract class _LoadInProgress implements ContactDetailsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactDetailsObject? contactDetailsDetails});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ContactDetailsWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactDetailsDetails = freezed,
  }) {
    return _then(_$_LoadSuccess(
      freezed == contactDetailsDetails
          ? _value.contactDetailsDetails
          : contactDetailsDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetailsObject?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.contactDetailsDetails);

  @override
  final ContactDetailsObject? contactDetailsDetails;

  @override
  String toString() {
    return 'ContactDetailsWatcherState.loadSuccess(contactDetailsDetails: $contactDetailsDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.contactDetailsDetails, contactDetailsDetails) ||
                other.contactDetailsDetails == contactDetailsDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactDetailsDetails);

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
    required TResult Function(ContactDetailsObject? contactDetailsDetails)
        loadSuccess,
    required TResult Function(ContactDetailsFailure contactDetailsFailure)
        loadFailure,
  }) {
    return loadSuccess(contactDetailsDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult? Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(contactDetailsDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(contactDetailsDetails);
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

abstract class _LoadSuccess implements ContactDetailsWatcherState {
  const factory _LoadSuccess(
      final ContactDetailsObject? contactDetailsDetails) = _$_LoadSuccess;

  ContactDetailsObject? get contactDetailsDetails;
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
  $Res call({ContactDetailsFailure contactDetailsFailure});

  $ContactDetailsFailureCopyWith<$Res> get contactDetailsFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ContactDetailsWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactDetailsFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == contactDetailsFailure
          ? _value.contactDetailsFailure
          : contactDetailsFailure // ignore: cast_nullable_to_non_nullable
              as ContactDetailsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsFailureCopyWith<$Res> get contactDetailsFailure {
    return $ContactDetailsFailureCopyWith<$Res>(_value.contactDetailsFailure,
        (value) {
      return _then(_value.copyWith(contactDetailsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.contactDetailsFailure);

  @override
  final ContactDetailsFailure contactDetailsFailure;

  @override
  String toString() {
    return 'ContactDetailsWatcherState.loadFailure(contactDetailsFailure: $contactDetailsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.contactDetailsFailure, contactDetailsFailure) ||
                other.contactDetailsFailure == contactDetailsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactDetailsFailure);

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
    required TResult Function(ContactDetailsObject? contactDetailsDetails)
        loadSuccess,
    required TResult Function(ContactDetailsFailure contactDetailsFailure)
        loadFailure,
  }) {
    return loadFailure(contactDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult? Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
  }) {
    return loadFailure?.call(contactDetailsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(ContactDetailsObject? contactDetailsDetails)? loadSuccess,
    TResult Function(ContactDetailsFailure contactDetailsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(contactDetailsFailure);
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

abstract class _LoadFailure implements ContactDetailsWatcherState {
  const factory _LoadFailure(
      final ContactDetailsFailure contactDetailsFailure) = _$_LoadFailure;

  ContactDetailsFailure get contactDetailsFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
