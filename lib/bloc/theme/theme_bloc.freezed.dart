// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(ThemeMode mode) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(ThemeMode mode)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(ThemeMode mode)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitialState value) initial,
    required TResult Function(_GetThemeLoadingState value) loading,
    required TResult Function(_GetThemeErrorState value) error,
    required TResult Function(_GetThemeLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitialState value)? initial,
    TResult? Function(_GetThemeLoadingState value)? loading,
    TResult? Function(_GetThemeErrorState value)? error,
    TResult? Function(_GetThemeLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitialState value)? initial,
    TResult Function(_GetThemeLoadingState value)? loading,
    TResult Function(_GetThemeErrorState value)? error,
    TResult Function(_GetThemeLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ThemeInitialStateImplCopyWith<$Res> {
  factory _$$ThemeInitialStateImplCopyWith(_$ThemeInitialStateImpl value,
          $Res Function(_$ThemeInitialStateImpl) then) =
      __$$ThemeInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeInitialStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeInitialStateImpl>
    implements _$$ThemeInitialStateImplCopyWith<$Res> {
  __$$ThemeInitialStateImplCopyWithImpl(_$ThemeInitialStateImpl _value,
      $Res Function(_$ThemeInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ThemeInitialStateImpl implements _ThemeInitialState {
  const _$ThemeInitialStateImpl();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(ThemeMode mode) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(ThemeMode mode)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(ThemeMode mode)? loaded,
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
    required TResult Function(_ThemeInitialState value) initial,
    required TResult Function(_GetThemeLoadingState value) loading,
    required TResult Function(_GetThemeErrorState value) error,
    required TResult Function(_GetThemeLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitialState value)? initial,
    TResult? Function(_GetThemeLoadingState value)? loading,
    TResult? Function(_GetThemeErrorState value)? error,
    TResult? Function(_GetThemeLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitialState value)? initial,
    TResult Function(_GetThemeLoadingState value)? loading,
    TResult Function(_GetThemeErrorState value)? error,
    TResult Function(_GetThemeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ThemeInitialState implements ThemeState {
  const factory _ThemeInitialState() = _$ThemeInitialStateImpl;
}

/// @nodoc
abstract class _$$GetThemeLoadingStateImplCopyWith<$Res> {
  factory _$$GetThemeLoadingStateImplCopyWith(_$GetThemeLoadingStateImpl value,
          $Res Function(_$GetThemeLoadingStateImpl) then) =
      __$$GetThemeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetThemeLoadingStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$GetThemeLoadingStateImpl>
    implements _$$GetThemeLoadingStateImplCopyWith<$Res> {
  __$$GetThemeLoadingStateImplCopyWithImpl(_$GetThemeLoadingStateImpl _value,
      $Res Function(_$GetThemeLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetThemeLoadingStateImpl implements _GetThemeLoadingState {
  const _$GetThemeLoadingStateImpl();

  @override
  String toString() {
    return 'ThemeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetThemeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(ThemeMode mode) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(ThemeMode mode)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(ThemeMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitialState value) initial,
    required TResult Function(_GetThemeLoadingState value) loading,
    required TResult Function(_GetThemeErrorState value) error,
    required TResult Function(_GetThemeLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitialState value)? initial,
    TResult? Function(_GetThemeLoadingState value)? loading,
    TResult? Function(_GetThemeErrorState value)? error,
    TResult? Function(_GetThemeLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitialState value)? initial,
    TResult Function(_GetThemeLoadingState value)? loading,
    TResult Function(_GetThemeErrorState value)? error,
    TResult Function(_GetThemeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetThemeLoadingState implements ThemeState {
  const factory _GetThemeLoadingState() = _$GetThemeLoadingStateImpl;
}

/// @nodoc
abstract class _$$GetThemeErrorStateImplCopyWith<$Res> {
  factory _$$GetThemeErrorStateImplCopyWith(_$GetThemeErrorStateImpl value,
          $Res Function(_$GetThemeErrorStateImpl) then) =
      __$$GetThemeErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetThemeErrorStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$GetThemeErrorStateImpl>
    implements _$$GetThemeErrorStateImplCopyWith<$Res> {
  __$$GetThemeErrorStateImplCopyWithImpl(_$GetThemeErrorStateImpl _value,
      $Res Function(_$GetThemeErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetThemeErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetThemeErrorStateImpl implements _GetThemeErrorState {
  const _$GetThemeErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ThemeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetThemeErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetThemeErrorStateImplCopyWith<_$GetThemeErrorStateImpl> get copyWith =>
      __$$GetThemeErrorStateImplCopyWithImpl<_$GetThemeErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(ThemeMode mode) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(ThemeMode mode)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(ThemeMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitialState value) initial,
    required TResult Function(_GetThemeLoadingState value) loading,
    required TResult Function(_GetThemeErrorState value) error,
    required TResult Function(_GetThemeLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitialState value)? initial,
    TResult? Function(_GetThemeLoadingState value)? loading,
    TResult? Function(_GetThemeErrorState value)? error,
    TResult? Function(_GetThemeLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitialState value)? initial,
    TResult Function(_GetThemeLoadingState value)? loading,
    TResult Function(_GetThemeErrorState value)? error,
    TResult Function(_GetThemeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GetThemeErrorState implements ThemeState {
  const factory _GetThemeErrorState(final String message) =
      _$GetThemeErrorStateImpl;

  String get message;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetThemeErrorStateImplCopyWith<_$GetThemeErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetThemeLoadedStateImplCopyWith<$Res> {
  factory _$$GetThemeLoadedStateImplCopyWith(_$GetThemeLoadedStateImpl value,
          $Res Function(_$GetThemeLoadedStateImpl) then) =
      __$$GetThemeLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$GetThemeLoadedStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$GetThemeLoadedStateImpl>
    implements _$$GetThemeLoadedStateImplCopyWith<$Res> {
  __$$GetThemeLoadedStateImplCopyWithImpl(_$GetThemeLoadedStateImpl _value,
      $Res Function(_$GetThemeLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$GetThemeLoadedStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$GetThemeLoadedStateImpl implements _GetThemeLoadedState {
  const _$GetThemeLoadedStateImpl({required this.mode});

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeState.loaded(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetThemeLoadedStateImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetThemeLoadedStateImplCopyWith<_$GetThemeLoadedStateImpl> get copyWith =>
      __$$GetThemeLoadedStateImplCopyWithImpl<_$GetThemeLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(ThemeMode mode) loaded,
  }) {
    return loaded(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(ThemeMode mode)? loaded,
  }) {
    return loaded?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(ThemeMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitialState value) initial,
    required TResult Function(_GetThemeLoadingState value) loading,
    required TResult Function(_GetThemeErrorState value) error,
    required TResult Function(_GetThemeLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitialState value)? initial,
    TResult? Function(_GetThemeLoadingState value)? loading,
    TResult? Function(_GetThemeErrorState value)? error,
    TResult? Function(_GetThemeLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitialState value)? initial,
    TResult Function(_GetThemeLoadingState value)? loading,
    TResult Function(_GetThemeErrorState value)? error,
    TResult Function(_GetThemeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _GetThemeLoadedState implements ThemeState {
  const factory _GetThemeLoadedState({required final ThemeMode mode}) =
      _$GetThemeLoadedStateImpl;

  ThemeMode get mode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetThemeLoadedStateImplCopyWith<_$GetThemeLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
