// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rentDetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RentDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userTpe) userType,
    required TResult Function(RentDetailsObject rentDetails) rentDetails,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userTpe)? userType,
    TResult? Function(RentDetailsObject rentDetails)? rentDetails,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userTpe)? userType,
    TResult Function(RentDetailsObject rentDetails)? rentDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_RentDetails value) rentDetails,
    required TResult Function(Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_RentDetails value)? rentDetails,
    TResult? Function(Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_RentDetails value)? rentDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentDetailsEventCopyWith<$Res> {
  factory $RentDetailsEventCopyWith(
          RentDetailsEvent value, $Res Function(RentDetailsEvent) then) =
      _$RentDetailsEventCopyWithImpl<$Res, RentDetailsEvent>;
}

/// @nodoc
class _$RentDetailsEventCopyWithImpl<$Res, $Val extends RentDetailsEvent>
    implements $RentDetailsEventCopyWith<$Res> {
  _$RentDetailsEventCopyWithImpl(this._value, this._then);

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
    extends _$RentDetailsEventCopyWithImpl<$Res, _$Spaceid>
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
    return 'RentDetailsEvent.spaceid(propertyId: $propertyId)';
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
    required TResult Function(String userTpe) userType,
    required TResult Function(RentDetailsObject rentDetails) rentDetails,
    required TResult Function() submitted,
  }) {
    return spaceid(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userTpe)? userType,
    TResult? Function(RentDetailsObject rentDetails)? rentDetails,
    TResult? Function()? submitted,
  }) {
    return spaceid?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userTpe)? userType,
    TResult Function(RentDetailsObject rentDetails)? rentDetails,
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
    required TResult Function(_RentDetails value) rentDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return spaceid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_RentDetails value)? rentDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return spaceid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_RentDetails value)? rentDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (spaceid != null) {
      return spaceid(this);
    }
    return orElse();
  }
}

abstract class Spaceid implements RentDetailsEvent {
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
  $Res call({String userTpe});
}

/// @nodoc
class __$$UserTypeCopyWithImpl<$Res>
    extends _$RentDetailsEventCopyWithImpl<$Res, _$UserType>
    implements _$$UserTypeCopyWith<$Res> {
  __$$UserTypeCopyWithImpl(_$UserType _value, $Res Function(_$UserType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTpe = null,
  }) {
    return _then(_$UserType(
      null == userTpe
          ? _value.userTpe
          : userTpe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserType implements UserType {
  const _$UserType(this.userTpe);

  @override
  final String userTpe;

  @override
  String toString() {
    return 'RentDetailsEvent.userType(userTpe: $userTpe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserType &&
            (identical(other.userTpe, userTpe) || other.userTpe == userTpe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userTpe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTypeCopyWith<_$UserType> get copyWith =>
      __$$UserTypeCopyWithImpl<_$UserType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userTpe) userType,
    required TResult Function(RentDetailsObject rentDetails) rentDetails,
    required TResult Function() submitted,
  }) {
    return userType(userTpe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userTpe)? userType,
    TResult? Function(RentDetailsObject rentDetails)? rentDetails,
    TResult? Function()? submitted,
  }) {
    return userType?.call(userTpe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userTpe)? userType,
    TResult Function(RentDetailsObject rentDetails)? rentDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(userTpe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_RentDetails value) rentDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return userType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_RentDetails value)? rentDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return userType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_RentDetails value)? rentDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this);
    }
    return orElse();
  }
}

abstract class UserType implements RentDetailsEvent {
  const factory UserType(final String userTpe) = _$UserType;

  String get userTpe;
  @JsonKey(ignore: true)
  _$$UserTypeCopyWith<_$UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RentDetailsCopyWith<$Res> {
  factory _$$_RentDetailsCopyWith(
          _$_RentDetails value, $Res Function(_$_RentDetails) then) =
      __$$_RentDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({RentDetailsObject rentDetails});
}

/// @nodoc
class __$$_RentDetailsCopyWithImpl<$Res>
    extends _$RentDetailsEventCopyWithImpl<$Res, _$_RentDetails>
    implements _$$_RentDetailsCopyWith<$Res> {
  __$$_RentDetailsCopyWithImpl(
      _$_RentDetails _value, $Res Function(_$_RentDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentDetails = null,
  }) {
    return _then(_$_RentDetails(
      null == rentDetails
          ? _value.rentDetails
          : rentDetails // ignore: cast_nullable_to_non_nullable
              as RentDetailsObject,
    ));
  }
}

/// @nodoc

class _$_RentDetails implements _RentDetails {
  const _$_RentDetails(this.rentDetails);

  @override
  final RentDetailsObject rentDetails;

  @override
  String toString() {
    return 'RentDetailsEvent.rentDetails(rentDetails: $rentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RentDetails &&
            (identical(other.rentDetails, rentDetails) ||
                other.rentDetails == rentDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RentDetailsCopyWith<_$_RentDetails> get copyWith =>
      __$$_RentDetailsCopyWithImpl<_$_RentDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userTpe) userType,
    required TResult Function(RentDetailsObject rentDetails) rentDetails,
    required TResult Function() submitted,
  }) {
    return rentDetails(this.rentDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userTpe)? userType,
    TResult? Function(RentDetailsObject rentDetails)? rentDetails,
    TResult? Function()? submitted,
  }) {
    return rentDetails?.call(this.rentDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userTpe)? userType,
    TResult Function(RentDetailsObject rentDetails)? rentDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (rentDetails != null) {
      return rentDetails(this.rentDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_RentDetails value) rentDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return rentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_RentDetails value)? rentDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return rentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_RentDetails value)? rentDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (rentDetails != null) {
      return rentDetails(this);
    }
    return orElse();
  }
}

abstract class _RentDetails implements RentDetailsEvent {
  const factory _RentDetails(final RentDetailsObject rentDetails) =
      _$_RentDetails;

  RentDetailsObject get rentDetails;
  @JsonKey(ignore: true)
  _$$_RentDetailsCopyWith<_$_RentDetails> get copyWith =>
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
    extends _$RentDetailsEventCopyWithImpl<$Res, _$Submitted>
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
    return 'RentDetailsEvent.submitted()';
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
    required TResult Function(String userTpe) userType,
    required TResult Function(RentDetailsObject rentDetails) rentDetails,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userTpe)? userType,
    TResult? Function(RentDetailsObject rentDetails)? rentDetails,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userTpe)? userType,
    TResult Function(RentDetailsObject rentDetails)? rentDetails,
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
    required TResult Function(_RentDetails value) rentDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_RentDetails value)? rentDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_RentDetails value)? rentDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements RentDetailsEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
mixin _$RentDetailsState {
  String get propertyId => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  RentDetailsObject get rentDetails => throw _privateConstructorUsedError;
  Option<Either<RentDetailsFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RentDetailsStateCopyWith<RentDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentDetailsStateCopyWith<$Res> {
  factory $RentDetailsStateCopyWith(
          RentDetailsState value, $Res Function(RentDetailsState) then) =
      _$RentDetailsStateCopyWithImpl<$Res, RentDetailsState>;
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      RentDetailsObject rentDetails,
      Option<Either<RentDetailsFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RentDetailsStateCopyWithImpl<$Res, $Val extends RentDetailsState>
    implements $RentDetailsStateCopyWith<$Res> {
  _$RentDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? rentDetails = null,
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
      rentDetails: null == rentDetails
          ? _value.rentDetails
          : rentDetails // ignore: cast_nullable_to_non_nullable
              as RentDetailsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RentDetailsFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RentDetailsStateCopyWith<$Res>
    implements $RentDetailsStateCopyWith<$Res> {
  factory _$$_RentDetailsStateCopyWith(
          _$_RentDetailsState value, $Res Function(_$_RentDetailsState) then) =
      __$$_RentDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String propertyId,
      String userType,
      RentDetailsObject rentDetails,
      Option<Either<RentDetailsFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_RentDetailsStateCopyWithImpl<$Res>
    extends _$RentDetailsStateCopyWithImpl<$Res, _$_RentDetailsState>
    implements _$$_RentDetailsStateCopyWith<$Res> {
  __$$_RentDetailsStateCopyWithImpl(
      _$_RentDetailsState _value, $Res Function(_$_RentDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? userType = null,
    Object? rentDetails = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_RentDetailsState(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      rentDetails: null == rentDetails
          ? _value.rentDetails
          : rentDetails // ignore: cast_nullable_to_non_nullable
              as RentDetailsObject,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RentDetailsFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RentDetailsState implements _RentDetailsState {
  const _$_RentDetailsState(
      {required this.propertyId,
      required this.userType,
      required this.rentDetails,
      required this.authFailureOrSuccessOption});

  @override
  final String propertyId;
  @override
  final String userType;
  @override
  final RentDetailsObject rentDetails;
  @override
  final Option<Either<RentDetailsFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RentDetailsState(propertyId: $propertyId, userType: $userType, rentDetails: $rentDetails, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RentDetailsState &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.rentDetails, rentDetails) ||
                other.rentDetails == rentDetails) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, userType,
      rentDetails, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RentDetailsStateCopyWith<_$_RentDetailsState> get copyWith =>
      __$$_RentDetailsStateCopyWithImpl<_$_RentDetailsState>(this, _$identity);
}

abstract class _RentDetailsState implements RentDetailsState {
  const factory _RentDetailsState(
      {required final String propertyId,
      required final String userType,
      required final RentDetailsObject rentDetails,
      required final Option<Either<RentDetailsFailure, Unit>>
          authFailureOrSuccessOption}) = _$_RentDetailsState;

  @override
  String get propertyId;
  @override
  String get userType;
  @override
  RentDetailsObject get rentDetails;
  @override
  Option<Either<RentDetailsFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_RentDetailsStateCopyWith<_$_RentDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
