// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchFilterBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilterBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchFilterBlocState()';
}


}

/// @nodoc
class $SearchFilterBlocStateCopyWith<$Res>  {
$SearchFilterBlocStateCopyWith(SearchFilterBlocState _, $Res Function(SearchFilterBlocState) __);
}


/// Adds pattern-matching-related methods to [SearchFilterBlocState].
extension SearchFilterBlocStatePatterns on SearchFilterBlocState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SearchFilterBlocStateInitialState value)?  initial,TResult Function( _GetSearchFilterBlocStateLoadingState value)?  loading,TResult Function( _GetSearchFilterBlocStateErrorState value)?  error,TResult Function( _GetSearchFilterBlocStateLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilterBlocStateInitialState() when initial != null:
return initial(_that);case _GetSearchFilterBlocStateLoadingState() when loading != null:
return loading(_that);case _GetSearchFilterBlocStateErrorState() when error != null:
return error(_that);case _GetSearchFilterBlocStateLoadedState() when loaded != null:
return loaded(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SearchFilterBlocStateInitialState value)  initial,required TResult Function( _GetSearchFilterBlocStateLoadingState value)  loading,required TResult Function( _GetSearchFilterBlocStateErrorState value)  error,required TResult Function( _GetSearchFilterBlocStateLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _SearchFilterBlocStateInitialState():
return initial(_that);case _GetSearchFilterBlocStateLoadingState():
return loading(_that);case _GetSearchFilterBlocStateErrorState():
return error(_that);case _GetSearchFilterBlocStateLoadedState():
return loaded(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SearchFilterBlocStateInitialState value)?  initial,TResult? Function( _GetSearchFilterBlocStateLoadingState value)?  loading,TResult? Function( _GetSearchFilterBlocStateErrorState value)?  error,TResult? Function( _GetSearchFilterBlocStateLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _SearchFilterBlocStateInitialState() when initial != null:
return initial(_that);case _GetSearchFilterBlocStateLoadingState() when loading != null:
return loading(_that);case _GetSearchFilterBlocStateErrorState() when error != null:
return error(_that);case _GetSearchFilterBlocStateLoadedState() when loaded != null:
return loaded(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<SearchFilterProductModel> items,  String? query)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilterBlocStateInitialState() when initial != null:
return initial();case _GetSearchFilterBlocStateLoadingState() when loading != null:
return loading();case _GetSearchFilterBlocStateErrorState() when error != null:
return error(_that.message);case _GetSearchFilterBlocStateLoadedState() when loaded != null:
return loaded(_that.items,_that.query);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<SearchFilterProductModel> items,  String? query)  loaded,}) {final _that = this;
switch (_that) {
case _SearchFilterBlocStateInitialState():
return initial();case _GetSearchFilterBlocStateLoadingState():
return loading();case _GetSearchFilterBlocStateErrorState():
return error(_that.message);case _GetSearchFilterBlocStateLoadedState():
return loaded(_that.items,_that.query);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<SearchFilterProductModel> items,  String? query)?  loaded,}) {final _that = this;
switch (_that) {
case _SearchFilterBlocStateInitialState() when initial != null:
return initial();case _GetSearchFilterBlocStateLoadingState() when loading != null:
return loading();case _GetSearchFilterBlocStateErrorState() when error != null:
return error(_that.message);case _GetSearchFilterBlocStateLoadedState() when loaded != null:
return loaded(_that.items,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFilterBlocStateInitialState implements SearchFilterBlocState {
  const _SearchFilterBlocStateInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilterBlocStateInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchFilterBlocState.initial()';
}


}




/// @nodoc


class _GetSearchFilterBlocStateLoadingState implements SearchFilterBlocState {
  const _GetSearchFilterBlocStateLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSearchFilterBlocStateLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchFilterBlocState.loading()';
}


}




/// @nodoc


class _GetSearchFilterBlocStateErrorState implements SearchFilterBlocState {
  const _GetSearchFilterBlocStateErrorState(this.message);
  

 final  String message;

/// Create a copy of SearchFilterBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSearchFilterBlocStateErrorStateCopyWith<_GetSearchFilterBlocStateErrorState> get copyWith => __$GetSearchFilterBlocStateErrorStateCopyWithImpl<_GetSearchFilterBlocStateErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSearchFilterBlocStateErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SearchFilterBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetSearchFilterBlocStateErrorStateCopyWith<$Res> implements $SearchFilterBlocStateCopyWith<$Res> {
  factory _$GetSearchFilterBlocStateErrorStateCopyWith(_GetSearchFilterBlocStateErrorState value, $Res Function(_GetSearchFilterBlocStateErrorState) _then) = __$GetSearchFilterBlocStateErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetSearchFilterBlocStateErrorStateCopyWithImpl<$Res>
    implements _$GetSearchFilterBlocStateErrorStateCopyWith<$Res> {
  __$GetSearchFilterBlocStateErrorStateCopyWithImpl(this._self, this._then);

  final _GetSearchFilterBlocStateErrorState _self;
  final $Res Function(_GetSearchFilterBlocStateErrorState) _then;

/// Create a copy of SearchFilterBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetSearchFilterBlocStateErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetSearchFilterBlocStateLoadedState implements SearchFilterBlocState {
  const _GetSearchFilterBlocStateLoadedState({required final  List<SearchFilterProductModel> items, this.query}): _items = items;
  

 final  List<SearchFilterProductModel> _items;
 List<SearchFilterProductModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  String? query;

/// Create a copy of SearchFilterBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSearchFilterBlocStateLoadedStateCopyWith<_GetSearchFilterBlocStateLoadedState> get copyWith => __$GetSearchFilterBlocStateLoadedStateCopyWithImpl<_GetSearchFilterBlocStateLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSearchFilterBlocStateLoadedState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),query);

@override
String toString() {
  return 'SearchFilterBlocState.loaded(items: $items, query: $query)';
}


}

/// @nodoc
abstract mixin class _$GetSearchFilterBlocStateLoadedStateCopyWith<$Res> implements $SearchFilterBlocStateCopyWith<$Res> {
  factory _$GetSearchFilterBlocStateLoadedStateCopyWith(_GetSearchFilterBlocStateLoadedState value, $Res Function(_GetSearchFilterBlocStateLoadedState) _then) = __$GetSearchFilterBlocStateLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<SearchFilterProductModel> items, String? query
});




}
/// @nodoc
class __$GetSearchFilterBlocStateLoadedStateCopyWithImpl<$Res>
    implements _$GetSearchFilterBlocStateLoadedStateCopyWith<$Res> {
  __$GetSearchFilterBlocStateLoadedStateCopyWithImpl(this._self, this._then);

  final _GetSearchFilterBlocStateLoadedState _self;
  final $Res Function(_GetSearchFilterBlocStateLoadedState) _then;

/// Create a copy of SearchFilterBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? query = freezed,}) {
  return _then(_GetSearchFilterBlocStateLoadedState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SearchFilterProductModel>,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
