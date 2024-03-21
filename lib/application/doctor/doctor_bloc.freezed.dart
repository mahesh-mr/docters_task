// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DoctorEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DoctorEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$DoctorState {
  bool get isLoding => throw _privateConstructorUsedError;
  List<AllDoctor> get model => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<AllDoctor>>>
      get doctorFaileurOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorStateCopyWith<DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
  @useResult
  $Res call(
      {bool isLoding,
      List<AllDoctor> model,
      Option<Either<MainFailure, List<AllDoctor>>>
          doctorFaileurOrSuccessOption});
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? model = null,
    Object? doctorFaileurOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<AllDoctor>,
      doctorFaileurOrSuccessOption: null == doctorFaileurOrSuccessOption
          ? _value.doctorFaileurOrSuccessOption
          : doctorFaileurOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<AllDoctor>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorStateImplCopyWith<$Res>
    implements $DoctorStateCopyWith<$Res> {
  factory _$$DoctorStateImplCopyWith(
          _$DoctorStateImpl value, $Res Function(_$DoctorStateImpl) then) =
      __$$DoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoding,
      List<AllDoctor> model,
      Option<Either<MainFailure, List<AllDoctor>>>
          doctorFaileurOrSuccessOption});
}

/// @nodoc
class __$$DoctorStateImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$DoctorStateImpl>
    implements _$$DoctorStateImplCopyWith<$Res> {
  __$$DoctorStateImplCopyWithImpl(
      _$DoctorStateImpl _value, $Res Function(_$DoctorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? model = null,
    Object? doctorFaileurOrSuccessOption = null,
  }) {
    return _then(_$DoctorStateImpl(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<AllDoctor>,
      doctorFaileurOrSuccessOption: null == doctorFaileurOrSuccessOption
          ? _value.doctorFaileurOrSuccessOption
          : doctorFaileurOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<AllDoctor>>>,
    ));
  }
}

/// @nodoc

class _$DoctorStateImpl implements _DoctorState {
  const _$DoctorStateImpl(
      {required this.isLoding,
      required final List<AllDoctor> model,
      required this.doctorFaileurOrSuccessOption})
      : _model = model;

  @override
  final bool isLoding;
  final List<AllDoctor> _model;
  @override
  List<AllDoctor> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  final Option<Either<MainFailure, List<AllDoctor>>>
      doctorFaileurOrSuccessOption;

  @override
  String toString() {
    return 'DoctorState(isLoding: $isLoding, model: $model, doctorFaileurOrSuccessOption: $doctorFaileurOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorStateImpl &&
            (identical(other.isLoding, isLoding) ||
                other.isLoding == isLoding) &&
            const DeepCollectionEquality().equals(other._model, _model) &&
            (identical(other.doctorFaileurOrSuccessOption,
                    doctorFaileurOrSuccessOption) ||
                other.doctorFaileurOrSuccessOption ==
                    doctorFaileurOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoding,
      const DeepCollectionEquality().hash(_model),
      doctorFaileurOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorStateImplCopyWith<_$DoctorStateImpl> get copyWith =>
      __$$DoctorStateImplCopyWithImpl<_$DoctorStateImpl>(this, _$identity);
}

abstract class _DoctorState implements DoctorState {
  const factory _DoctorState(
      {required final bool isLoding,
      required final List<AllDoctor> model,
      required final Option<Either<MainFailure, List<AllDoctor>>>
          doctorFaileurOrSuccessOption}) = _$DoctorStateImpl;

  @override
  bool get isLoding;
  @override
  List<AllDoctor> get model;
  @override
  Option<Either<MainFailure, List<AllDoctor>>> get doctorFaileurOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$DoctorStateImplCopyWith<_$DoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
