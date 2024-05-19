// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timingDetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimingDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) propertyid,
    required TResult Function(TimingDetailsObject timingDetails) timingDetails,
    required TResult Function(String userType) userType,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? propertyid,
    TResult? Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult? Function(String userType)? userType,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? propertyid,
    TResult Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult Function(String userType)? userType,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) propertyid,
    required TResult Function(_TimingDetails value) timingDetails,
    required TResult Function(UserType value) userType,
    required TResult Function(Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? propertyid,
    TResult? Function(_TimingDetails value)? timingDetails,
    TResult? Function(UserType value)? userType,
    TResult? Function(Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? propertyid,
    TResult Function(_TimingDetails value)? timingDetails,
    TResult Function(UserType value)? userType,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingDetailsEventCopyWith<$Res> {
  factory $TimingDetailsEventCopyWith(
          TimingDetailsEvent value, $Res Function(TimingDetailsEvent) then) =
      _$TimingDetailsEventCopyWithImpl<$Res, TimingDetailsEvent>;
}

/// @nodoc
class _$TimingDetailsEventCopyWithImpl<$Res, $Val extends TimingDetailsEvent>
    implements $TimingDetailsEventCopyWith<$Res> {
  _$TimingDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpaceidCopyWith<$Res> {
  factory _$$SpaceidCopyWith(_$Spaceid value, $Res Function(_$Spaceid) then) =
      __$$SpaceidCopyWithImpl<$Res>;
  @useResult
  $Res call({String propertyId});
}

/// @nodoc
class __$$SpaceidCopyWithImpl<$Res>
    extends _$TimingDetailsEventCopyWithImpl<$Res, _$Spaceid>
    implements _$$SpaceidCopyWith<$Res> {
  __$$SpaceidCopyWithImpl(_$Spaceid _value, $Res Function(_$Spaceid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
  }) {
    return _then(_$Spaceid(
      null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Spaceid implements Spaceid {
  const _$Spaceid(this.propertyId);

  @override
  final String propertyId;

  @override
  String toString() {
    return 'TimingDetailsEvent.propertyid(propertyId: $propertyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Spaceid &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceidCopyWith<_$Spaceid> get copyWith =>
      __$$SpaceidCopyWithImpl<_$Spaceid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) propertyid,
    required TResult Function(TimingDetailsObject timingDetails) timingDetails,
    required TResult Function(String userType) userType,
    required TResult Function() submitted,
  }) {
    return propertyid(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? propertyid,
    TResult? Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult? Function(String userType)? userType,
    TResult? Function()? submitted,
  }) {
    return propertyid?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? propertyid,
    TResult Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult Function(String userType)? userType,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (propertyid != null) {
      return propertyid(propertyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) propertyid,
    required TResult Function(_TimingDetails value) timingDetails,
    required TResult Function(UserType value) userType,
    required TResult Function(Submitted value) submitted,
  }) {
    return propertyid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? propertyid,
    TResult? Function(_TimingDetails value)? timingDetails,
    TResult? Function(UserType value)? userType,
    TResult? Function(Submitted value)? submitted,
  }) {
    return propertyid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? propertyid,
    TResult Function(_TimingDetails value)? timingDetails,
    TResult Function(UserType value)? userType,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (propertyid != null) {
      return propertyid(this);
    }
    return orElse();
  }
}

abstract class Spaceid implements TimingDetailsEvent {
  const factory Spaceid(final String propertyId) = _$Spaceid;

  String get propertyId;
  @JsonKey(ignore: true)
  _$$SpaceidCopyWith<_$Spaceid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimingDetailsCopyWith<$Res> {
  factory _$$_TimingDetailsCopyWith(
          _$_TimingDetails value, $Res Function(_$_TimingDetails) then) =
      __$$_TimingDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({TimingDetailsObject timingDetails});
}

/// @nodoc
class __$$_TimingDetailsCopyWithImpl<$Res>
    extends _$TimingDetailsEventCopyWithImpl<$Res, _$_TimingDetails>
    implements _$$_TimingDetailsCopyWith<$Res> {
  __$$_TimingDetailsCopyWithImpl(
      _$_TimingDetails _value, $Res Function(_$_TimingDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timingDetails = null,
  }) {
    return _then(_$_TimingDetails(
      null == timingDetails
          ? _value.timingDetails
          : timingDetails // ignore: cast_nullable_to_non_nullable
              as TimingDetailsObject,
    ));
  }
}

/// @nodoc

class _$_TimingDetails implements _TimingDetails {
  const _$_TimingDetails(this.timingDetails);

  @override
  final TimingDetailsObject timingDetails;

  @override
  String toString() {
    return 'TimingDetailsEvent.timingDetails(timingDetails: $timingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimingDetails &&
            (identical(other.timingDetails, timingDetails) ||
                other.timingDetails == timingDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timingDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimingDetailsCopyWith<_$_TimingDetails> get copyWith =>
      __$$_TimingDetailsCopyWithImpl<_$_TimingDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) propertyid,
    required TResult Function(TimingDetailsObject timingDetails) timingDetails,
    required TResult Function(String userType) userType,
    required TResult Function() submitted,
  }) {
    return timingDetails(this.timingDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? propertyid,
    TResult? Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult? Function(String userType)? userType,
    TResult? Function()? submitted,
  }) {
    return timingDetails?.call(this.timingDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? propertyid,
    TResult Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult Function(String userType)? userType,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (timingDetails != null) {
      return timingDetails(this.timingDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) propertyid,
    required TResult Function(_TimingDetails value) timingDetails,
    required TResult Function(UserType value) userType,
    required TResult Function(Submitted value) submitted,
  }) {
    return timingDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? propertyid,
    TResult? Function(_TimingDetails value)? timingDetails,
    TResult? Function(UserType value)? userType,
    TResult? Function(Submitted value)? submitted,
  }) {
    return timingDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? propertyid,
    TResult Function(_TimingDetails value)? timingDetails,
    TResult Function(UserType value)? userType,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (timingDetails != null) {
      return timingDetails(this);
    }
    return orElse();
  }
}

abstract class _TimingDetails implements TimingDetailsEvent {
  const factory _TimingDetails(final TimingDetailsObject timingDetails) =
      _$_TimingDetails;

  TimingDetailsObject get timingDetails;
  @JsonKey(ignore: true)
  _$$_TimingDetailsCopyWith<_$_TimingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserTypeCopyWith<$Res> {
  factory _$$UserTypeCopyWith(
          _$UserType value, $Res Function(_$UserType) then) =
      __$$UserTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({String userType});
}

/// @nodoc
class __$$UserTypeCopyWithImpl<$Res>
    extends _$TimingDetailsEventCopyWithImpl<$Res, _$UserType>
    implements _$$UserTypeCopyWith<$Res> {
  __$$UserTypeCopyWithImpl(_$UserType _value, $Res Function(_$UserType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
  }) {
    return _then(_$UserType(
      null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserType implements UserType {
  const _$UserType(this.userType);

  @override
  final String userType;

  @override
  String toString() {
    return 'TimingDetailsEvent.userType(userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserType &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTypeCopyWith<_$UserType> get copyWith =>
      __$$UserTypeCopyWithImpl<_$UserType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) propertyid,
    required TResult Function(TimingDetailsObject timingDetails) timingDetails,
    required TResult Function(String userType) userType,
    required TResult Function() submitted,
  }) {
    return userType(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? propertyid,
    TResult? Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult? Function(String userType)? userType,
    TResult? Function()? submitted,
  }) {
    return userType?.call(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? propertyid,
    TResult Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult Function(String userType)? userType,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this.userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) propertyid,
    required TResult Function(_TimingDetails value) timingDetails,
    required TResult Function(UserType value) userType,
    required TResult Function(Submitted value) submitted,
  }) {
    return userType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? propertyid,
    TResult? Function(_TimingDetails value)? timingDetails,
    TResult? Function(UserType value)? userType,
    TResult? Function(Submitted value)? submitted,
  }) {
    return userType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? propertyid,
    TResult Function(_TimingDetails value)? timingDetails,
    TResult Function(UserType value)? userType,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this);
    }
    return orElse();
  }
}

abstract class UserType implements TimingDetailsEvent {
  const factory UserType(final String userType) = _$UserType;

  String get userType;
  @JsonKey(ignore: true)
  _$$UserTypeCopyWith<_$UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittedCopyWith<$Res> {
  factory _$$SubmittedCopyWith(
          _$Submitted value, $Res Function(_$Submitted) then) =
      __$$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedCopyWithImpl<$Res>
    extends _$TimingDetailsEventCopyWithImpl<$Res, _$Submitted>
    implements _$$SubmittedCopyWith<$Res> {
  __$$SubmittedCopyWithImpl(
      _$Submitted _value, $Res Function(_$Submitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Submitted implements Submitted {
  const _$Submitted();

  @override
  String toString() {
    return 'TimingDetailsEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) propertyid,
    required TResult Function(TimingDetailsObject timingDetails) timingDetails,
    required TResult Function(String userType) userType,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? propertyid,
    TResult? Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult? Function(String userType)? userType,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? propertyid,
    TResult Function(TimingDetailsObject timingDetails)? timingDetails,
    TResult Function(String userType)? userType,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) propertyid,
    required TResult Function(_TimingDetails value) timingDetails,
    required TResult Function(UserType value) userType,
    required TResult Function(Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? propertyid,
    TResult? Function(_TimingDetails value)? timingDetails,
    TResult? Function(UserType value)? userType,
    TResult? Function(Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? propertyid,
    TResult Function(_TimingDetails value)? timingDetails,
    TResult Function(UserType value)? userType,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements TimingDetailsEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
mixin _$TimingDetailsState {
  String get propertyId => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  TimingDetailsObject get timingDetails => throw _privateConstructorUsedError;
  Option<Either<TimingFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimingDetailsStateCopyWith<TimingDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingDetailsStateCopyWith<$Res> {
  factory $TimingDetailsStateCopyWith(
          TimingDetailsState value, $Res Function(TimingDetailsState) then) =
      _$TimingDetailsStateCopyWithImpl<$Res, TimingDetailsState>;
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      TimingDetailsObject timingDetails,
      Option<Either<TimingFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$TimingDetailsStateCopyWithImpl<$Res, $Val extends TimingDetailsState>
    implements $TimingDetailsStateCopyWith<$Res> {
  _$TimingDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? timingDetails = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      timingDetails: null == timingDetails
          ? _value.timingDetails
          : timingDetails // ignore: cast_nullable_to_non_nullable
              as TimingDetailsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TimingFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimingDetailsStateCopyWith<$Res>
    implements $TimingDetailsStateCopyWith<$Res> {
  factory _$$_TimingDetailsStateCopyWith(_$_TimingDetailsState value,
          $Res Function(_$_TimingDetailsState) then) =
      __$$_TimingDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      TimingDetailsObject timingDetails,
      Option<Either<TimingFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_TimingDetailsStateCopyWithImpl<$Res>
    extends _$TimingDetailsStateCopyWithImpl<$Res, _$_TimingDetailsState>
    implements _$$_TimingDetailsStateCopyWith<$Res> {
  __$$_TimingDetailsStateCopyWithImpl(
      _$_TimingDetailsState _value, $Res Function(_$_TimingDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? timingDetails = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_TimingDetailsState(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      timingDetails: null == timingDetails
          ? _value.timingDetails
          : timingDetails // ignore: cast_nullable_to_non_nullable
              as TimingDetailsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TimingFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TimingDetailsState implements _TimingDetailsState {
  const _$_TimingDetailsState(
      {required this.propertyId,
      required this.userType,
      required this.timingDetails,
      required this.authFailureOrSuccessOption});

  @override
  final String propertyId;
  @override
  final String userType;
  @override
  final TimingDetailsObject timingDetails;
  @override
  final Option<Either<TimingFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'TimingDetailsState(propertyId: $propertyId, userType: $userType, timingDetails: $timingDetails, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimingDetailsState &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.timingDetails, timingDetails) ||
                other.timingDetails == timingDetails) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, userType,
      timingDetails, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimingDetailsStateCopyWith<_$_TimingDetailsState> get copyWith =>
      __$$_TimingDetailsStateCopyWithImpl<_$_TimingDetailsState>(
          this, _$identity);
}

abstract class _TimingDetailsState implements TimingDetailsState {
  const factory _TimingDetailsState(
      {required final String propertyId,
      required final String userType,
      required final TimingDetailsObject timingDetails,
      required final Option<Either<TimingFailure, Unit>>
          authFailureOrSuccessOption}) = _$_TimingDetailsState;

  @override
  String get propertyId;
  @override
  String get userType;
  @override
  TimingDetailsObject get timingDetails;
  @override
  Option<Either<TimingFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TimingDetailsStateCopyWith<_$_TimingDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
