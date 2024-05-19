// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visitVerification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisitVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(VisitVerification visitVerification)
        visitVerification,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(VisitVerification visitVerification)? visitVerification,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(VisitVerification visitVerification)? visitVerification,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_VisitVerification value) visitVerification,
    required TResult Function(Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_VisitVerification value)? visitVerification,
    TResult? Function(Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_VisitVerification value)? visitVerification,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitVerificationEventCopyWith<$Res> {
  factory $VisitVerificationEventCopyWith(VisitVerificationEvent value,
          $Res Function(VisitVerificationEvent) then) =
      _$VisitVerificationEventCopyWithImpl<$Res, VisitVerificationEvent>;
}

/// @nodoc
class _$VisitVerificationEventCopyWithImpl<$Res,
        $Val extends VisitVerificationEvent>
    implements $VisitVerificationEventCopyWith<$Res> {
  _$VisitVerificationEventCopyWithImpl(this._value, this._then);

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
    extends _$VisitVerificationEventCopyWithImpl<$Res, _$Spaceid>
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
    return 'VisitVerificationEvent.spaceid(propertyId: $propertyId)';
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
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(VisitVerification visitVerification)
        visitVerification,
    required TResult Function() submitted,
  }) {
    return spaceid(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(VisitVerification visitVerification)? visitVerification,
    TResult? Function()? submitted,
  }) {
    return spaceid?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(VisitVerification visitVerification)? visitVerification,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (spaceid != null) {
      return spaceid(propertyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_VisitVerification value) visitVerification,
    required TResult Function(Submitted value) submitted,
  }) {
    return spaceid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_VisitVerification value)? visitVerification,
    TResult? Function(Submitted value)? submitted,
  }) {
    return spaceid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_VisitVerification value)? visitVerification,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (spaceid != null) {
      return spaceid(this);
    }
    return orElse();
  }
}

abstract class Spaceid implements VisitVerificationEvent {
  const factory Spaceid(final String propertyId) = _$Spaceid;

  String get propertyId;
  @JsonKey(ignore: true)
  _$$SpaceidCopyWith<_$Spaceid> get copyWith =>
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
    extends _$VisitVerificationEventCopyWithImpl<$Res, _$UserType>
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
    return 'VisitVerificationEvent.userType(userType: $userType)';
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
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(VisitVerification visitVerification)
        visitVerification,
    required TResult Function() submitted,
  }) {
    return userType(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(VisitVerification visitVerification)? visitVerification,
    TResult? Function()? submitted,
  }) {
    return userType?.call(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(VisitVerification visitVerification)? visitVerification,
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
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_VisitVerification value) visitVerification,
    required TResult Function(Submitted value) submitted,
  }) {
    return userType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_VisitVerification value)? visitVerification,
    TResult? Function(Submitted value)? submitted,
  }) {
    return userType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_VisitVerification value)? visitVerification,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this);
    }
    return orElse();
  }
}

abstract class UserType implements VisitVerificationEvent {
  const factory UserType(final String userType) = _$UserType;

  String get userType;
  @JsonKey(ignore: true)
  _$$UserTypeCopyWith<_$UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VisitVerificationCopyWith<$Res> {
  factory _$$_VisitVerificationCopyWith(_$_VisitVerification value,
          $Res Function(_$_VisitVerification) then) =
      __$$_VisitVerificationCopyWithImpl<$Res>;
  @useResult
  $Res call({VisitVerification visitVerification});
}

/// @nodoc
class __$$_VisitVerificationCopyWithImpl<$Res>
    extends _$VisitVerificationEventCopyWithImpl<$Res, _$_VisitVerification>
    implements _$$_VisitVerificationCopyWith<$Res> {
  __$$_VisitVerificationCopyWithImpl(
      _$_VisitVerification _value, $Res Function(_$_VisitVerification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitVerification = null,
  }) {
    return _then(_$_VisitVerification(
      null == visitVerification
          ? _value.visitVerification
          : visitVerification // ignore: cast_nullable_to_non_nullable
              as VisitVerification,
    ));
  }
}

/// @nodoc

class _$_VisitVerification implements _VisitVerification {
  const _$_VisitVerification(this.visitVerification);

  @override
  final VisitVerification visitVerification;

  @override
  String toString() {
    return 'VisitVerificationEvent.visitVerification(visitVerification: $visitVerification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitVerification &&
            (identical(other.visitVerification, visitVerification) ||
                other.visitVerification == visitVerification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitVerification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitVerificationCopyWith<_$_VisitVerification> get copyWith =>
      __$$_VisitVerificationCopyWithImpl<_$_VisitVerification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(VisitVerification visitVerification)
        visitVerification,
    required TResult Function() submitted,
  }) {
    return visitVerification(this.visitVerification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(VisitVerification visitVerification)? visitVerification,
    TResult? Function()? submitted,
  }) {
    return visitVerification?.call(this.visitVerification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(VisitVerification visitVerification)? visitVerification,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (visitVerification != null) {
      return visitVerification(this.visitVerification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_VisitVerification value) visitVerification,
    required TResult Function(Submitted value) submitted,
  }) {
    return visitVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_VisitVerification value)? visitVerification,
    TResult? Function(Submitted value)? submitted,
  }) {
    return visitVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_VisitVerification value)? visitVerification,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (visitVerification != null) {
      return visitVerification(this);
    }
    return orElse();
  }
}

abstract class _VisitVerification implements VisitVerificationEvent {
  const factory _VisitVerification(final VisitVerification visitVerification) =
      _$_VisitVerification;

  VisitVerification get visitVerification;
  @JsonKey(ignore: true)
  _$$_VisitVerificationCopyWith<_$_VisitVerification> get copyWith =>
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
    extends _$VisitVerificationEventCopyWithImpl<$Res, _$Submitted>
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
    return 'VisitVerificationEvent.submitted()';
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
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(VisitVerification visitVerification)
        visitVerification,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(VisitVerification visitVerification)? visitVerification,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(VisitVerification visitVerification)? visitVerification,
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
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_VisitVerification value) visitVerification,
    required TResult Function(Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_VisitVerification value)? visitVerification,
    TResult? Function(Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_VisitVerification value)? visitVerification,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements VisitVerificationEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
mixin _$VisitVerificationState {
  String get propertyId => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  VisitVerification get visitVerification => throw _privateConstructorUsedError;
  Option<Either<VisitVerificationFailure, Unit>>
      get authFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitVerificationStateCopyWith<VisitVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitVerificationStateCopyWith<$Res> {
  factory $VisitVerificationStateCopyWith(VisitVerificationState value,
          $Res Function(VisitVerificationState) then) =
      _$VisitVerificationStateCopyWithImpl<$Res, VisitVerificationState>;
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      VisitVerification visitVerification,
      Option<Either<VisitVerificationFailure, Unit>>
          authFailureOrSuccessOption});
}

/// @nodoc
class _$VisitVerificationStateCopyWithImpl<$Res,
        $Val extends VisitVerificationState>
    implements $VisitVerificationStateCopyWith<$Res> {
  _$VisitVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? visitVerification = null,
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
      visitVerification: null == visitVerification
          ? _value.visitVerification
          : visitVerification // ignore: cast_nullable_to_non_nullable
              as VisitVerification,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<VisitVerificationFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisitVerificationStateCopyWith<$Res>
    implements $VisitVerificationStateCopyWith<$Res> {
  factory _$$_VisitVerificationStateCopyWith(_$_VisitVerificationState value,
          $Res Function(_$_VisitVerificationState) then) =
      __$$_VisitVerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      VisitVerification visitVerification,
      Option<Either<VisitVerificationFailure, Unit>>
          authFailureOrSuccessOption});
}

/// @nodoc
class __$$_VisitVerificationStateCopyWithImpl<$Res>
    extends _$VisitVerificationStateCopyWithImpl<$Res,
        _$_VisitVerificationState>
    implements _$$_VisitVerificationStateCopyWith<$Res> {
  __$$_VisitVerificationStateCopyWithImpl(_$_VisitVerificationState _value,
      $Res Function(_$_VisitVerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? visitVerification = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_VisitVerificationState(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      visitVerification: null == visitVerification
          ? _value.visitVerification
          : visitVerification // ignore: cast_nullable_to_non_nullable
              as VisitVerification,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<VisitVerificationFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_VisitVerificationState implements _VisitVerificationState {
  const _$_VisitVerificationState(
      {required this.propertyId,
      required this.userType,
      required this.visitVerification,
      required this.authFailureOrSuccessOption});

  @override
  final String propertyId;
  @override
  final String userType;
  @override
  final VisitVerification visitVerification;
  @override
  final Option<Either<VisitVerificationFailure, Unit>>
      authFailureOrSuccessOption;

  @override
  String toString() {
    return 'VisitVerificationState(propertyId: $propertyId, userType: $userType, visitVerification: $visitVerification, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitVerificationState &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.visitVerification, visitVerification) ||
                other.visitVerification == visitVerification) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, userType,
      visitVerification, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitVerificationStateCopyWith<_$_VisitVerificationState> get copyWith =>
      __$$_VisitVerificationStateCopyWithImpl<_$_VisitVerificationState>(
          this, _$identity);
}

abstract class _VisitVerificationState implements VisitVerificationState {
  const factory _VisitVerificationState(
      {required final String propertyId,
      required final String userType,
      required final VisitVerification visitVerification,
      required final Option<Either<VisitVerificationFailure, Unit>>
          authFailureOrSuccessOption}) = _$_VisitVerificationState;

  @override
  String get propertyId;
  @override
  String get userType;
  @override
  VisitVerification get visitVerification;
  @override
  Option<Either<VisitVerificationFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_VisitVerificationStateCopyWith<_$_VisitVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
