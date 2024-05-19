// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferredTenants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferredTenantsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(PreferredTenantsObject preferredTenants)
        preferredTenants,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(PreferredTenantsObject preferredTenants)?
        preferredTenants,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(PreferredTenantsObject preferredTenants)? preferredTenants,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_ContactDetails value) preferredTenants,
    required TResult Function(Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? preferredTenants,
    TResult? Function(Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? preferredTenants,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferredTenantsEventCopyWith<$Res> {
  factory $PreferredTenantsEventCopyWith(PreferredTenantsEvent value,
          $Res Function(PreferredTenantsEvent) then) =
      _$PreferredTenantsEventCopyWithImpl<$Res, PreferredTenantsEvent>;
}

/// @nodoc
class _$PreferredTenantsEventCopyWithImpl<$Res,
        $Val extends PreferredTenantsEvent>
    implements $PreferredTenantsEventCopyWith<$Res> {
  _$PreferredTenantsEventCopyWithImpl(this._value, this._then);

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
    extends _$PreferredTenantsEventCopyWithImpl<$Res, _$Spaceid>
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
    return 'PreferredTenantsEvent.spaceid(propertyId: $propertyId)';
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
    required TResult Function(PreferredTenantsObject preferredTenants)
        preferredTenants,
    required TResult Function() submitted,
  }) {
    return spaceid(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(PreferredTenantsObject preferredTenants)?
        preferredTenants,
    TResult? Function()? submitted,
  }) {
    return spaceid?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(PreferredTenantsObject preferredTenants)? preferredTenants,
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
    required TResult Function(_ContactDetails value) preferredTenants,
    required TResult Function(Submitted value) submitted,
  }) {
    return spaceid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? preferredTenants,
    TResult? Function(Submitted value)? submitted,
  }) {
    return spaceid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? preferredTenants,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (spaceid != null) {
      return spaceid(this);
    }
    return orElse();
  }
}

abstract class Spaceid implements PreferredTenantsEvent {
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
    extends _$PreferredTenantsEventCopyWithImpl<$Res, _$UserType>
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
    return 'PreferredTenantsEvent.userType(userType: $userType)';
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
    required TResult Function(PreferredTenantsObject preferredTenants)
        preferredTenants,
    required TResult Function() submitted,
  }) {
    return userType(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(PreferredTenantsObject preferredTenants)?
        preferredTenants,
    TResult? Function()? submitted,
  }) {
    return userType?.call(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(PreferredTenantsObject preferredTenants)? preferredTenants,
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
    required TResult Function(_ContactDetails value) preferredTenants,
    required TResult Function(Submitted value) submitted,
  }) {
    return userType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? preferredTenants,
    TResult? Function(Submitted value)? submitted,
  }) {
    return userType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? preferredTenants,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this);
    }
    return orElse();
  }
}

abstract class UserType implements PreferredTenantsEvent {
  const factory UserType(final String userType) = _$UserType;

  String get userType;
  @JsonKey(ignore: true)
  _$$UserTypeCopyWith<_$UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContactDetailsCopyWith<$Res> {
  factory _$$_ContactDetailsCopyWith(
          _$_ContactDetails value, $Res Function(_$_ContactDetails) then) =
      __$$_ContactDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({PreferredTenantsObject preferredTenants});
}

/// @nodoc
class __$$_ContactDetailsCopyWithImpl<$Res>
    extends _$PreferredTenantsEventCopyWithImpl<$Res, _$_ContactDetails>
    implements _$$_ContactDetailsCopyWith<$Res> {
  __$$_ContactDetailsCopyWithImpl(
      _$_ContactDetails _value, $Res Function(_$_ContactDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTenants = null,
  }) {
    return _then(_$_ContactDetails(
      null == preferredTenants
          ? _value.preferredTenants
          : preferredTenants // ignore: cast_nullable_to_non_nullable
              as PreferredTenantsObject,
    ));
  }
}

/// @nodoc

class _$_ContactDetails implements _ContactDetails {
  const _$_ContactDetails(this.preferredTenants);

  @override
  final PreferredTenantsObject preferredTenants;

  @override
  String toString() {
    return 'PreferredTenantsEvent.preferredTenants(preferredTenants: $preferredTenants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactDetails &&
            (identical(other.preferredTenants, preferredTenants) ||
                other.preferredTenants == preferredTenants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferredTenants);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactDetailsCopyWith<_$_ContactDetails> get copyWith =>
      __$$_ContactDetailsCopyWithImpl<_$_ContactDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(PreferredTenantsObject preferredTenants)
        preferredTenants,
    required TResult Function() submitted,
  }) {
    return preferredTenants(this.preferredTenants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(PreferredTenantsObject preferredTenants)?
        preferredTenants,
    TResult? Function()? submitted,
  }) {
    return preferredTenants?.call(this.preferredTenants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(PreferredTenantsObject preferredTenants)? preferredTenants,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (preferredTenants != null) {
      return preferredTenants(this.preferredTenants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_ContactDetails value) preferredTenants,
    required TResult Function(Submitted value) submitted,
  }) {
    return preferredTenants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? preferredTenants,
    TResult? Function(Submitted value)? submitted,
  }) {
    return preferredTenants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? preferredTenants,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (preferredTenants != null) {
      return preferredTenants(this);
    }
    return orElse();
  }
}

abstract class _ContactDetails implements PreferredTenantsEvent {
  const factory _ContactDetails(final PreferredTenantsObject preferredTenants) =
      _$_ContactDetails;

  PreferredTenantsObject get preferredTenants;
  @JsonKey(ignore: true)
  _$$_ContactDetailsCopyWith<_$_ContactDetails> get copyWith =>
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
    extends _$PreferredTenantsEventCopyWithImpl<$Res, _$Submitted>
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
    return 'PreferredTenantsEvent.submitted()';
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
    required TResult Function(PreferredTenantsObject preferredTenants)
        preferredTenants,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(PreferredTenantsObject preferredTenants)?
        preferredTenants,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(PreferredTenantsObject preferredTenants)? preferredTenants,
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
    required TResult Function(_ContactDetails value) preferredTenants,
    required TResult Function(Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? preferredTenants,
    TResult? Function(Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? preferredTenants,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements PreferredTenantsEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
mixin _$PreferredTenantsState {
  String get propertyId => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  PreferredTenantsObject get preferredTenants =>
      throw _privateConstructorUsedError;
  Option<Either<PreferredTenantsFailure, Unit>>
      get authFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferredTenantsStateCopyWith<PreferredTenantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferredTenantsStateCopyWith<$Res> {
  factory $PreferredTenantsStateCopyWith(PreferredTenantsState value,
          $Res Function(PreferredTenantsState) then) =
      _$PreferredTenantsStateCopyWithImpl<$Res, PreferredTenantsState>;
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      PreferredTenantsObject preferredTenants,
      Option<Either<PreferredTenantsFailure, Unit>>
          authFailureOrSuccessOption});
}

/// @nodoc
class _$PreferredTenantsStateCopyWithImpl<$Res,
        $Val extends PreferredTenantsState>
    implements $PreferredTenantsStateCopyWith<$Res> {
  _$PreferredTenantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? preferredTenants = null,
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
      preferredTenants: null == preferredTenants
          ? _value.preferredTenants
          : preferredTenants // ignore: cast_nullable_to_non_nullable
              as PreferredTenantsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PreferredTenantsFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreferredTenantsStateCopyWith<$Res>
    implements $PreferredTenantsStateCopyWith<$Res> {
  factory _$$_PreferredTenantsStateCopyWith(_$_PreferredTenantsState value,
          $Res Function(_$_PreferredTenantsState) then) =
      __$$_PreferredTenantsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      PreferredTenantsObject preferredTenants,
      Option<Either<PreferredTenantsFailure, Unit>>
          authFailureOrSuccessOption});
}

/// @nodoc
class __$$_PreferredTenantsStateCopyWithImpl<$Res>
    extends _$PreferredTenantsStateCopyWithImpl<$Res, _$_PreferredTenantsState>
    implements _$$_PreferredTenantsStateCopyWith<$Res> {
  __$$_PreferredTenantsStateCopyWithImpl(_$_PreferredTenantsState _value,
      $Res Function(_$_PreferredTenantsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? preferredTenants = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_PreferredTenantsState(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      preferredTenants: null == preferredTenants
          ? _value.preferredTenants
          : preferredTenants // ignore: cast_nullable_to_non_nullable
              as PreferredTenantsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PreferredTenantsFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PreferredTenantsState implements _PreferredTenantsState {
  const _$_PreferredTenantsState(
      {required this.propertyId,
      required this.userType,
      required this.preferredTenants,
      required this.authFailureOrSuccessOption});

  @override
  final String propertyId;
  @override
  final String userType;
  @override
  final PreferredTenantsObject preferredTenants;
  @override
  final Option<Either<PreferredTenantsFailure, Unit>>
      authFailureOrSuccessOption;

  @override
  String toString() {
    return 'PreferredTenantsState(propertyId: $propertyId, userType: $userType, preferredTenants: $preferredTenants, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferredTenantsState &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.preferredTenants, preferredTenants) ||
                other.preferredTenants == preferredTenants) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, userType,
      preferredTenants, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferredTenantsStateCopyWith<_$_PreferredTenantsState> get copyWith =>
      __$$_PreferredTenantsStateCopyWithImpl<_$_PreferredTenantsState>(
          this, _$identity);
}

abstract class _PreferredTenantsState implements PreferredTenantsState {
  const factory _PreferredTenantsState(
      {required final String propertyId,
      required final String userType,
      required final PreferredTenantsObject preferredTenants,
      required final Option<Either<PreferredTenantsFailure, Unit>>
          authFailureOrSuccessOption}) = _$_PreferredTenantsState;

  @override
  String get propertyId;
  @override
  String get userType;
  @override
  PreferredTenantsObject get preferredTenants;
  @override
  Option<Either<PreferredTenantsFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_PreferredTenantsStateCopyWith<_$_PreferredTenantsState> get copyWith =>
      throw _privateConstructorUsedError;
}
