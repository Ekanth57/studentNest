// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'houseDetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HouseDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(HouseDetailsObject houseDetails) houseDetails,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_ContactDetails value) houseDetails,
    required TResult Function(Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? houseDetails,
    TResult? Function(Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? houseDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseDetailsEventCopyWith<$Res> {
  factory $HouseDetailsEventCopyWith(
          HouseDetailsEvent value, $Res Function(HouseDetailsEvent) then) =
      _$HouseDetailsEventCopyWithImpl<$Res, HouseDetailsEvent>;
}

/// @nodoc
class _$HouseDetailsEventCopyWithImpl<$Res, $Val extends HouseDetailsEvent>
    implements $HouseDetailsEventCopyWith<$Res> {
  _$HouseDetailsEventCopyWithImpl(this._value, this._then);

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
    extends _$HouseDetailsEventCopyWithImpl<$Res, _$Spaceid>
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
    return 'HouseDetailsEvent.spaceid(propertyId: $propertyId)';
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
    required TResult Function(HouseDetailsObject houseDetails) houseDetails,
    required TResult Function() submitted,
  }) {
    return spaceid(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult? Function()? submitted,
  }) {
    return spaceid?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(HouseDetailsObject houseDetails)? houseDetails,
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
    required TResult Function(_ContactDetails value) houseDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return spaceid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? houseDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return spaceid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? houseDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (spaceid != null) {
      return spaceid(this);
    }
    return orElse();
  }
}

abstract class Spaceid implements HouseDetailsEvent {
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
    extends _$HouseDetailsEventCopyWithImpl<$Res, _$UserType>
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
    return 'HouseDetailsEvent.userType(userType: $userType)';
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
    required TResult Function(HouseDetailsObject houseDetails) houseDetails,
    required TResult Function() submitted,
  }) {
    return userType(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult? Function()? submitted,
  }) {
    return userType?.call(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(HouseDetailsObject houseDetails)? houseDetails,
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
    required TResult Function(_ContactDetails value) houseDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return userType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? houseDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return userType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? houseDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this);
    }
    return orElse();
  }
}

abstract class UserType implements HouseDetailsEvent {
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
  $Res call({HouseDetailsObject houseDetails});
}

/// @nodoc
class __$$_ContactDetailsCopyWithImpl<$Res>
    extends _$HouseDetailsEventCopyWithImpl<$Res, _$_ContactDetails>
    implements _$$_ContactDetailsCopyWith<$Res> {
  __$$_ContactDetailsCopyWithImpl(
      _$_ContactDetails _value, $Res Function(_$_ContactDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseDetails = null,
  }) {
    return _then(_$_ContactDetails(
      null == houseDetails
          ? _value.houseDetails
          : houseDetails // ignore: cast_nullable_to_non_nullable
              as HouseDetailsObject,
    ));
  }
}

/// @nodoc

class _$_ContactDetails implements _ContactDetails {
  const _$_ContactDetails(this.houseDetails);

  @override
  final HouseDetailsObject houseDetails;

  @override
  String toString() {
    return 'HouseDetailsEvent.houseDetails(houseDetails: $houseDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactDetails &&
            (identical(other.houseDetails, houseDetails) ||
                other.houseDetails == houseDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, houseDetails);

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
    required TResult Function(HouseDetailsObject houseDetails) houseDetails,
    required TResult Function() submitted,
  }) {
    return houseDetails(this.houseDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult? Function()? submitted,
  }) {
    return houseDetails?.call(this.houseDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (houseDetails != null) {
      return houseDetails(this.houseDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_ContactDetails value) houseDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return houseDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? houseDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return houseDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? houseDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (houseDetails != null) {
      return houseDetails(this);
    }
    return orElse();
  }
}

abstract class _ContactDetails implements HouseDetailsEvent {
  const factory _ContactDetails(final HouseDetailsObject houseDetails) =
      _$_ContactDetails;

  HouseDetailsObject get houseDetails;
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
    extends _$HouseDetailsEventCopyWithImpl<$Res, _$Submitted>
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
    return 'HouseDetailsEvent.submitted()';
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
    required TResult Function(HouseDetailsObject houseDetails) houseDetails,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(HouseDetailsObject houseDetails)? houseDetails,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(HouseDetailsObject houseDetails)? houseDetails,
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
    required TResult Function(_ContactDetails value) houseDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? houseDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? houseDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements HouseDetailsEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
mixin _$HouseDetailsState {
  String get propertyId => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  HouseDetailsObject get houseDetails => throw _privateConstructorUsedError;
  Option<Either<HouseDetailsFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseDetailsStateCopyWith<HouseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseDetailsStateCopyWith<$Res> {
  factory $HouseDetailsStateCopyWith(
          HouseDetailsState value, $Res Function(HouseDetailsState) then) =
      _$HouseDetailsStateCopyWithImpl<$Res, HouseDetailsState>;
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      HouseDetailsObject houseDetails,
      Option<Either<HouseDetailsFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$HouseDetailsStateCopyWithImpl<$Res, $Val extends HouseDetailsState>
    implements $HouseDetailsStateCopyWith<$Res> {
  _$HouseDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? houseDetails = null,
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
      houseDetails: null == houseDetails
          ? _value.houseDetails
          : houseDetails // ignore: cast_nullable_to_non_nullable
              as HouseDetailsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HouseDetailsFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HouseDetailsStateCopyWith<$Res>
    implements $HouseDetailsStateCopyWith<$Res> {
  factory _$$_HouseDetailsStateCopyWith(_$_HouseDetailsState value,
          $Res Function(_$_HouseDetailsState) then) =
      __$$_HouseDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      HouseDetailsObject houseDetails,
      Option<Either<HouseDetailsFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_HouseDetailsStateCopyWithImpl<$Res>
    extends _$HouseDetailsStateCopyWithImpl<$Res, _$_HouseDetailsState>
    implements _$$_HouseDetailsStateCopyWith<$Res> {
  __$$_HouseDetailsStateCopyWithImpl(
      _$_HouseDetailsState _value, $Res Function(_$_HouseDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? houseDetails = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_HouseDetailsState(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      houseDetails: null == houseDetails
          ? _value.houseDetails
          : houseDetails // ignore: cast_nullable_to_non_nullable
              as HouseDetailsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HouseDetailsFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_HouseDetailsState implements _HouseDetailsState {
  const _$_HouseDetailsState(
      {required this.propertyId,
      required this.userType,
      required this.houseDetails,
      required this.authFailureOrSuccessOption});

  @override
  final String propertyId;
  @override
  final String userType;
  @override
  final HouseDetailsObject houseDetails;
  @override
  final Option<Either<HouseDetailsFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'HouseDetailsState(propertyId: $propertyId, userType: $userType, houseDetails: $houseDetails, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HouseDetailsState &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.houseDetails, houseDetails) ||
                other.houseDetails == houseDetails) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, userType,
      houseDetails, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HouseDetailsStateCopyWith<_$_HouseDetailsState> get copyWith =>
      __$$_HouseDetailsStateCopyWithImpl<_$_HouseDetailsState>(
          this, _$identity);
}

abstract class _HouseDetailsState implements HouseDetailsState {
  const factory _HouseDetailsState(
      {required final String propertyId,
      required final String userType,
      required final HouseDetailsObject houseDetails,
      required final Option<Either<HouseDetailsFailure, Unit>>
          authFailureOrSuccessOption}) = _$_HouseDetailsState;

  @override
  String get propertyId;
  @override
  String get userType;
  @override
  HouseDetailsObject get houseDetails;
  @override
  Option<Either<HouseDetailsFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_HouseDetailsStateCopyWith<_$_HouseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
