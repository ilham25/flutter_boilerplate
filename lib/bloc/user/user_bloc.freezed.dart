// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> users, int page,
            bool hasReachedMax, bool onLoadMore)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_GetUserLoadingState value) loading,
    required TResult Function(_GetUserErrorState value) error,
    required TResult Function(_GetUserLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_GetUserLoadingState value)? loading,
    TResult? Function(_GetUserErrorState value)? error,
    TResult? Function(_GetUserLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_GetUserLoadingState value)? loading,
    TResult Function(_GetUserErrorState value)? error,
    TResult Function(_GetUserLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserInitialStateImplCopyWith<$Res> {
  factory _$$UserInitialStateImplCopyWith(_$UserInitialStateImpl value,
          $Res Function(_$UserInitialStateImpl) then) =
      __$$UserInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserInitialStateImpl>
    implements _$$UserInitialStateImplCopyWith<$Res> {
  __$$UserInitialStateImplCopyWithImpl(_$UserInitialStateImpl _value,
      $Res Function(_$UserInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserInitialStateImpl implements _UserInitialState {
  const _$UserInitialStateImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> users, int page,
            bool hasReachedMax, bool onLoadMore)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_GetUserLoadingState value) loading,
    required TResult Function(_GetUserErrorState value) error,
    required TResult Function(_GetUserLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_GetUserLoadingState value)? loading,
    TResult? Function(_GetUserErrorState value)? error,
    TResult? Function(_GetUserLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_GetUserLoadingState value)? loading,
    TResult Function(_GetUserErrorState value)? error,
    TResult Function(_GetUserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInitialState implements UserState {
  const factory _UserInitialState() = _$UserInitialStateImpl;
}

/// @nodoc
abstract class _$$GetUserLoadingStateImplCopyWith<$Res> {
  factory _$$GetUserLoadingStateImplCopyWith(_$GetUserLoadingStateImpl value,
          $Res Function(_$GetUserLoadingStateImpl) then) =
      __$$GetUserLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserLoadingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserLoadingStateImpl>
    implements _$$GetUserLoadingStateImplCopyWith<$Res> {
  __$$GetUserLoadingStateImplCopyWithImpl(_$GetUserLoadingStateImpl _value,
      $Res Function(_$GetUserLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserLoadingStateImpl implements _GetUserLoadingState {
  const _$GetUserLoadingStateImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> users, int page,
            bool hasReachedMax, bool onLoadMore)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_GetUserLoadingState value) loading,
    required TResult Function(_GetUserErrorState value) error,
    required TResult Function(_GetUserLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_GetUserLoadingState value)? loading,
    TResult? Function(_GetUserErrorState value)? error,
    TResult? Function(_GetUserLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_GetUserLoadingState value)? loading,
    TResult Function(_GetUserErrorState value)? error,
    TResult Function(_GetUserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetUserLoadingState implements UserState {
  const factory _GetUserLoadingState() = _$GetUserLoadingStateImpl;
}

/// @nodoc
abstract class _$$GetUserErrorStateImplCopyWith<$Res> {
  factory _$$GetUserErrorStateImplCopyWith(_$GetUserErrorStateImpl value,
          $Res Function(_$GetUserErrorStateImpl) then) =
      __$$GetUserErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetUserErrorStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserErrorStateImpl>
    implements _$$GetUserErrorStateImplCopyWith<$Res> {
  __$$GetUserErrorStateImplCopyWithImpl(_$GetUserErrorStateImpl _value,
      $Res Function(_$GetUserErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetUserErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserErrorStateImpl implements _GetUserErrorState {
  const _$GetUserErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserErrorStateImplCopyWith<_$GetUserErrorStateImpl> get copyWith =>
      __$$GetUserErrorStateImplCopyWithImpl<_$GetUserErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> users, int page,
            bool hasReachedMax, bool onLoadMore)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_GetUserLoadingState value) loading,
    required TResult Function(_GetUserErrorState value) error,
    required TResult Function(_GetUserLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_GetUserLoadingState value)? loading,
    TResult? Function(_GetUserErrorState value)? error,
    TResult? Function(_GetUserLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_GetUserLoadingState value)? loading,
    TResult Function(_GetUserErrorState value)? error,
    TResult Function(_GetUserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GetUserErrorState implements UserState {
  const factory _GetUserErrorState(final String message) =
      _$GetUserErrorStateImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserErrorStateImplCopyWith<_$GetUserErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserLoadedStateImplCopyWith<$Res> {
  factory _$$GetUserLoadedStateImplCopyWith(_$GetUserLoadedStateImpl value,
          $Res Function(_$GetUserLoadedStateImpl) then) =
      __$$GetUserLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<UserEntity> users, int page, bool hasReachedMax, bool onLoadMore});
}

/// @nodoc
class __$$GetUserLoadedStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUserLoadedStateImpl>
    implements _$$GetUserLoadedStateImplCopyWith<$Res> {
  __$$GetUserLoadedStateImplCopyWithImpl(_$GetUserLoadedStateImpl _value,
      $Res Function(_$GetUserLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? onLoadMore = null,
  }) {
    return _then(_$GetUserLoadedStateImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      onLoadMore: null == onLoadMore
          ? _value.onLoadMore
          : onLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetUserLoadedStateImpl implements _GetUserLoadedState {
  const _$GetUserLoadedStateImpl(
      {required final List<UserEntity> users,
      required this.page,
      required this.hasReachedMax,
      required this.onLoadMore})
      : _users = users;

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int page;
  @override
  final bool hasReachedMax;
  @override
  final bool onLoadMore;

  @override
  String toString() {
    return 'UserState.loaded(users: $users, page: $page, hasReachedMax: $hasReachedMax, onLoadMore: $onLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.onLoadMore, onLoadMore) ||
                other.onLoadMore == onLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      page,
      hasReachedMax,
      onLoadMore);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserLoadedStateImplCopyWith<_$GetUserLoadedStateImpl> get copyWith =>
      __$$GetUserLoadedStateImplCopyWithImpl<_$GetUserLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> users, int page,
            bool hasReachedMax, bool onLoadMore)
        loaded,
  }) {
    return loaded(users, page, hasReachedMax, onLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
  }) {
    return loaded?.call(users, page, hasReachedMax, onLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, page, hasReachedMax, onLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_GetUserLoadingState value) loading,
    required TResult Function(_GetUserErrorState value) error,
    required TResult Function(_GetUserLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_GetUserLoadingState value)? loading,
    TResult? Function(_GetUserErrorState value)? error,
    TResult? Function(_GetUserLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_GetUserLoadingState value)? loading,
    TResult Function(_GetUserErrorState value)? error,
    TResult Function(_GetUserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _GetUserLoadedState implements UserState {
  const factory _GetUserLoadedState(
      {required final List<UserEntity> users,
      required final int page,
      required final bool hasReachedMax,
      required final bool onLoadMore}) = _$GetUserLoadedStateImpl;

  List<UserEntity> get users;
  int get page;
  bool get hasReachedMax;
  bool get onLoadMore;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserLoadedStateImplCopyWith<_$GetUserLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
