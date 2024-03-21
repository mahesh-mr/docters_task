// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int selectedGender, DateTime selectedDate, String location)
        started,
    required TResult Function(int selectedGender) genderChanged,
    required TResult Function(DateTime selectedDate) changeDte,
    required TResult Function(String location) changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult? Function(int selectedGender)? genderChanged,
    TResult? Function(DateTime selectedDate)? changeDte,
    TResult? Function(String location)? changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult Function(int selectedGender)? genderChanged,
    TResult Function(DateTime selectedDate)? changeDte,
    TResult Function(String location)? changeLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateChanged value) changeDte,
    required TResult Function(_LocationChanged value) changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateChanged value)? changeDte,
    TResult? Function(_LocationChanged value)? changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateChanged value)? changeDte,
    TResult Function(_LocationChanged value)? changeLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioEventCopyWith<$Res> {
  factory $RadioEventCopyWith(
          RadioEvent value, $Res Function(RadioEvent) then) =
      _$RadioEventCopyWithImpl<$Res, RadioEvent>;
}

/// @nodoc
class _$RadioEventCopyWithImpl<$Res, $Val extends RadioEvent>
    implements $RadioEventCopyWith<$Res> {
  _$RadioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedGender, DateTime selectedDate, String location});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGender = null,
    Object? selectedDate = null,
    Object? location = null,
  }) {
    return _then(_$StartedImpl(
      selectedGender: null == selectedGender
          ? _value.selectedGender
          : selectedGender // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(
      {required this.selectedGender,
      required this.selectedDate,
      required this.location});

  @override
  final int selectedGender;
  @override
  final DateTime selectedDate;
  @override
  final String location;

  @override
  String toString() {
    return 'RadioEvent.started(selectedGender: $selectedGender, selectedDate: $selectedDate, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.selectedGender, selectedGender) ||
                other.selectedGender == selectedGender) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedGender, selectedDate, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int selectedGender, DateTime selectedDate, String location)
        started,
    required TResult Function(int selectedGender) genderChanged,
    required TResult Function(DateTime selectedDate) changeDte,
    required TResult Function(String location) changeLocation,
  }) {
    return started(selectedGender, selectedDate, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult? Function(int selectedGender)? genderChanged,
    TResult? Function(DateTime selectedDate)? changeDte,
    TResult? Function(String location)? changeLocation,
  }) {
    return started?.call(selectedGender, selectedDate, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult Function(int selectedGender)? genderChanged,
    TResult Function(DateTime selectedDate)? changeDte,
    TResult Function(String location)? changeLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(selectedGender, selectedDate, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateChanged value) changeDte,
    required TResult Function(_LocationChanged value) changeLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateChanged value)? changeDte,
    TResult? Function(_LocationChanged value)? changeLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateChanged value)? changeDte,
    TResult Function(_LocationChanged value)? changeLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RadioEvent {
  const factory _Started(
      {required final int selectedGender,
      required final DateTime selectedDate,
      required final String location}) = _$StartedImpl;

  int get selectedGender;
  DateTime get selectedDate;
  String get location;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderChangedImplCopyWith<$Res> {
  factory _$$GenderChangedImplCopyWith(
          _$GenderChangedImpl value, $Res Function(_$GenderChangedImpl) then) =
      __$$GenderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedGender});
}

/// @nodoc
class __$$GenderChangedImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$GenderChangedImpl>
    implements _$$GenderChangedImplCopyWith<$Res> {
  __$$GenderChangedImplCopyWithImpl(
      _$GenderChangedImpl _value, $Res Function(_$GenderChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGender = null,
  }) {
    return _then(_$GenderChangedImpl(
      null == selectedGender
          ? _value.selectedGender
          : selectedGender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenderChangedImpl implements _GenderChanged {
  const _$GenderChangedImpl(this.selectedGender);

  @override
  final int selectedGender;

  @override
  String toString() {
    return 'RadioEvent.genderChanged(selectedGender: $selectedGender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderChangedImpl &&
            (identical(other.selectedGender, selectedGender) ||
                other.selectedGender == selectedGender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedGender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      __$$GenderChangedImplCopyWithImpl<_$GenderChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int selectedGender, DateTime selectedDate, String location)
        started,
    required TResult Function(int selectedGender) genderChanged,
    required TResult Function(DateTime selectedDate) changeDte,
    required TResult Function(String location) changeLocation,
  }) {
    return genderChanged(selectedGender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult? Function(int selectedGender)? genderChanged,
    TResult? Function(DateTime selectedDate)? changeDte,
    TResult? Function(String location)? changeLocation,
  }) {
    return genderChanged?.call(selectedGender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult Function(int selectedGender)? genderChanged,
    TResult Function(DateTime selectedDate)? changeDte,
    TResult Function(String location)? changeLocation,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(selectedGender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateChanged value) changeDte,
    required TResult Function(_LocationChanged value) changeLocation,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateChanged value)? changeDte,
    TResult? Function(_LocationChanged value)? changeLocation,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateChanged value)? changeDte,
    TResult Function(_LocationChanged value)? changeLocation,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements RadioEvent {
  const factory _GenderChanged(final int selectedGender) = _$GenderChangedImpl;

  int get selectedGender;
  @JsonKey(ignore: true)
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
          _$DateChangedImpl value, $Res Function(_$DateChangedImpl) then) =
      __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
      _$DateChangedImpl _value, $Res Function(_$DateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DateChangedImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChangedImpl implements _DateChanged {
  const _$DateChangedImpl(this.selectedDate);

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'RadioEvent.changeDte(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int selectedGender, DateTime selectedDate, String location)
        started,
    required TResult Function(int selectedGender) genderChanged,
    required TResult Function(DateTime selectedDate) changeDte,
    required TResult Function(String location) changeLocation,
  }) {
    return changeDte(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult? Function(int selectedGender)? genderChanged,
    TResult? Function(DateTime selectedDate)? changeDte,
    TResult? Function(String location)? changeLocation,
  }) {
    return changeDte?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult Function(int selectedGender)? genderChanged,
    TResult Function(DateTime selectedDate)? changeDte,
    TResult Function(String location)? changeLocation,
    required TResult orElse(),
  }) {
    if (changeDte != null) {
      return changeDte(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateChanged value) changeDte,
    required TResult Function(_LocationChanged value) changeLocation,
  }) {
    return changeDte(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateChanged value)? changeDte,
    TResult? Function(_LocationChanged value)? changeLocation,
  }) {
    return changeDte?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateChanged value)? changeDte,
    TResult Function(_LocationChanged value)? changeLocation,
    required TResult orElse(),
  }) {
    if (changeDte != null) {
      return changeDte(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements RadioEvent {
  const factory _DateChanged(final DateTime selectedDate) = _$DateChangedImpl;

  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationChangedImplCopyWith<$Res> {
  factory _$$LocationChangedImplCopyWith(_$LocationChangedImpl value,
          $Res Function(_$LocationChangedImpl) then) =
      __$$LocationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$LocationChangedImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$LocationChangedImpl>
    implements _$$LocationChangedImplCopyWith<$Res> {
  __$$LocationChangedImplCopyWithImpl(
      _$LocationChangedImpl _value, $Res Function(_$LocationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$LocationChangedImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationChangedImpl implements _LocationChanged {
  const _$LocationChangedImpl(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'RadioEvent.changeLocation(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationChangedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationChangedImplCopyWith<_$LocationChangedImpl> get copyWith =>
      __$$LocationChangedImplCopyWithImpl<_$LocationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int selectedGender, DateTime selectedDate, String location)
        started,
    required TResult Function(int selectedGender) genderChanged,
    required TResult Function(DateTime selectedDate) changeDte,
    required TResult Function(String location) changeLocation,
  }) {
    return changeLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult? Function(int selectedGender)? genderChanged,
    TResult? Function(DateTime selectedDate)? changeDte,
    TResult? Function(String location)? changeLocation,
  }) {
    return changeLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int selectedGender, DateTime selectedDate, String location)?
        started,
    TResult Function(int selectedGender)? genderChanged,
    TResult Function(DateTime selectedDate)? changeDte,
    TResult Function(String location)? changeLocation,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateChanged value) changeDte,
    required TResult Function(_LocationChanged value) changeLocation,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateChanged value)? changeDte,
    TResult? Function(_LocationChanged value)? changeLocation,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateChanged value)? changeDte,
    TResult Function(_LocationChanged value)? changeLocation,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements RadioEvent {
  const factory _LocationChanged(final String location) = _$LocationChangedImpl;

  String get location;
  @JsonKey(ignore: true)
  _$$LocationChangedImplCopyWith<_$LocationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RadioState {
  int get selectedGender => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioStateCopyWith<RadioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStateCopyWith<$Res> {
  factory $RadioStateCopyWith(
          RadioState value, $Res Function(RadioState) then) =
      _$RadioStateCopyWithImpl<$Res, RadioState>;
  @useResult
  $Res call({int selectedGender, DateTime? selectedDate, String? location});
}

/// @nodoc
class _$RadioStateCopyWithImpl<$Res, $Val extends RadioState>
    implements $RadioStateCopyWith<$Res> {
  _$RadioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGender = null,
    Object? selectedDate = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      selectedGender: null == selectedGender
          ? _value.selectedGender
          : selectedGender // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RadioStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedGender, DateTime? selectedDate, String? location});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGender = null,
    Object? selectedDate = freezed,
    Object? location = freezed,
  }) {
    return _then(_$InitialImpl(
      selectedGender: null == selectedGender
          ? _value.selectedGender
          : selectedGender // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.selectedGender, this.selectedDate, this.location});

  @override
  final int selectedGender;
  @override
  final DateTime? selectedDate;
  @override
  final String? location;

  @override
  String toString() {
    return 'RadioState(selectedGender: $selectedGender, selectedDate: $selectedDate, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.selectedGender, selectedGender) ||
                other.selectedGender == selectedGender) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedGender, selectedDate, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements RadioState {
  const factory _Initial(
      {required final int selectedGender,
      final DateTime? selectedDate,
      final String? location}) = _$InitialImpl;

  @override
  int get selectedGender;
  @override
  DateTime? get selectedDate;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
