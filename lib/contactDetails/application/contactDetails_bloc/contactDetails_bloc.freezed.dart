// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contactDetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) spaceid,
    required TResult Function(String userType) userType,
    required TResult Function(ContactDetailsObject contactDetails)
        contactDetails,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsEventCopyWith<$Res> {
  factory $ContactDetailsEventCopyWith(
          ContactDetailsEvent value, $Res Function(ContactDetailsEvent) then) =
      _$ContactDetailsEventCopyWithImpl<$Res, ContactDetailsEvent>;
}

/// @nodoc
class _$ContactDetailsEventCopyWithImpl<$Res, $Val extends ContactDetailsEvent>
    implements $ContactDetailsEventCopyWith<$Res> {
  _$ContactDetailsEventCopyWithImpl(this._value, this._then);

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
    extends _$ContactDetailsEventCopyWithImpl<$Res, _$Spaceid>
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
    return 'ContactDetailsEvent.spaceid(propertyId: $propertyId)';
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
    required TResult Function(ContactDetailsObject contactDetails)
        contactDetails,
    required TResult Function() submitted,
  }) {
    return spaceid(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult? Function()? submitted,
  }) {
    return spaceid?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(ContactDetailsObject contactDetails)? contactDetails,
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
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return spaceid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return spaceid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (spaceid != null) {
      return spaceid(this);
    }
    return orElse();
  }
}

abstract class Spaceid implements ContactDetailsEvent {
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
    extends _$ContactDetailsEventCopyWithImpl<$Res, _$UserType>
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
    return 'ContactDetailsEvent.userType(userType: $userType)';
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
    required TResult Function(ContactDetailsObject contactDetails)
        contactDetails,
    required TResult Function() submitted,
  }) {
    return userType(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult? Function()? submitted,
  }) {
    return userType?.call(this.userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(ContactDetailsObject contactDetails)? contactDetails,
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
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return userType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return userType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (userType != null) {
      return userType(this);
    }
    return orElse();
  }
}

abstract class UserType implements ContactDetailsEvent {
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
  $Res call({ContactDetailsObject contactDetails});
}

/// @nodoc
class __$$_ContactDetailsCopyWithImpl<$Res>
    extends _$ContactDetailsEventCopyWithImpl<$Res, _$_ContactDetails>
    implements _$$_ContactDetailsCopyWith<$Res> {
  __$$_ContactDetailsCopyWithImpl(
      _$_ContactDetails _value, $Res Function(_$_ContactDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactDetails = null,
  }) {
    return _then(_$_ContactDetails(
      null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetailsObject,
    ));
  }
}

/// @nodoc

class _$_ContactDetails implements _ContactDetails {
  const _$_ContactDetails(this.contactDetails);

  @override
  final ContactDetailsObject contactDetails;

  @override
  String toString() {
    return 'ContactDetailsEvent.contactDetails(contactDetails: $contactDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactDetails &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactDetails);

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
    required TResult Function(ContactDetailsObject contactDetails)
        contactDetails,
    required TResult Function() submitted,
  }) {
    return contactDetails(this.contactDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult? Function()? submitted,
  }) {
    return contactDetails?.call(this.contactDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (contactDetails != null) {
      return contactDetails(this.contactDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spaceid value) spaceid,
    required TResult Function(UserType value) userType,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return contactDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return contactDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (contactDetails != null) {
      return contactDetails(this);
    }
    return orElse();
  }
}

abstract class _ContactDetails implements ContactDetailsEvent {
  const factory _ContactDetails(final ContactDetailsObject contactDetails) =
      _$_ContactDetails;

  ContactDetailsObject get contactDetails;
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
    extends _$ContactDetailsEventCopyWithImpl<$Res, _$Submitted>
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
    return 'ContactDetailsEvent.submitted()';
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
    required TResult Function(ContactDetailsObject contactDetails)
        contactDetails,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? spaceid,
    TResult? Function(String userType)? userType,
    TResult? Function(ContactDetailsObject contactDetails)? contactDetails,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? spaceid,
    TResult Function(String userType)? userType,
    TResult Function(ContactDetailsObject contactDetails)? contactDetails,
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
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spaceid value)? spaceid,
    TResult? Function(UserType value)? userType,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spaceid value)? spaceid,
    TResult Function(UserType value)? userType,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements ContactDetailsEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
mixin _$ContactDetailsState {
  String get propertyId => throw _privateConstructorUsedError;
  ContactDetailsObject get contactDetails => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  Option<Either<ContactDetailsFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactDetailsStateCopyWith<ContactDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsStateCopyWith<$Res> {
  factory $ContactDetailsStateCopyWith(
          ContactDetailsState value, $Res Function(ContactDetailsState) then) =
      _$ContactDetailsStateCopyWithImpl<$Res, ContactDetailsState>;
  @useResult
  $Res call(
      {String propertyId,
      ContactDetailsObject contactDetails,
      String userType,
      Option<Either<ContactDetailsFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$ContactDetailsStateCopyWithImpl<$Res, $Val extends ContactDetailsState>
    implements $ContactDetailsStateCopyWith<$Res> {
  _$ContactDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? contactDetails = null,
    Object? userType = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetailsObject,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ContactDetailsFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactDetailsStateCopyWith<$Res>
    implements $ContactDetailsStateCopyWith<$Res> {
  factory _$$_ContactDetailsStateCopyWith(_$_ContactDetailsState value,
          $Res Function(_$_ContactDetailsState) then) =
      __$$_ContactDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String propertyId,
      ContactDetailsObject contactDetails,
      String userType,
      Option<Either<ContactDetailsFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_ContactDetailsStateCopyWithImpl<$Res>
    extends _$ContactDetailsStateCopyWithImpl<$Res, _$_ContactDetailsState>
    implements _$$_ContactDetailsStateCopyWith<$Res> {
  __$$_ContactDetailsStateCopyWithImpl(_$_ContactDetailsState _value,
      $Res Function(_$_ContactDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? contactDetails = null,
    Object? userType = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_ContactDetailsState(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetailsObject,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ContactDetailsFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ContactDetailsState implements _ContactDetailsState {
  const _$_ContactDetailsState(
      {required this.propertyId,
      required this.contactDetails,
      required this.userType,
      required this.authFailureOrSuccessOption});

  @override
  final String propertyId;
  @override
  final ContactDetailsObject contactDetails;
  @override
  final String userType;
  @override
  final Option<Either<ContactDetailsFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ContactDetailsState(propertyId: $propertyId, contactDetails: $contactDetails, userType: $userType, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactDetailsState &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, contactDetails,
      userType, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactDetailsStateCopyWith<_$_ContactDetailsState> get copyWith =>
      __$$_ContactDetailsStateCopyWithImpl<_$_ContactDetailsState>(
          this, _$identity);
}

abstract class _ContactDetailsState implements ContactDetailsState {
  const factory _ContactDetailsState(
      {required final String propertyId,
      required final ContactDetailsObject contactDetails,
      required final String userType,
      required final Option<Either<ContactDetailsFailure, Unit>>
          authFailureOrSuccessOption}) = _$_ContactDetailsState;

  @override
  String get propertyId;
  @override
  ContactDetailsObject get contactDetails;
  @override
  String get userType;
  @override
  Option<Either<ContactDetailsFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ContactDetailsStateCopyWith<_$_ContactDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
