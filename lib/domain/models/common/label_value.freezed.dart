// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LabelValue<T> {

 String get label; T get value;
/// Create a copy of LabelValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabelValueCopyWith<T, LabelValue<T>> get copyWith => _$LabelValueCopyWithImpl<T, LabelValue<T>>(this as LabelValue<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabelValue<T>&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,label,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'LabelValue<$T>(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $LabelValueCopyWith<T,$Res>  {
  factory $LabelValueCopyWith(LabelValue<T> value, $Res Function(LabelValue<T>) _then) = _$LabelValueCopyWithImpl;
@useResult
$Res call({
 String label, T value
});




}
/// @nodoc
class _$LabelValueCopyWithImpl<T,$Res>
    implements $LabelValueCopyWith<T, $Res> {
  _$LabelValueCopyWithImpl(this._self, this._then);

  final LabelValue<T> _self;
  final $Res Function(LabelValue<T>) _then;

/// Create a copy of LabelValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [LabelValue].
extension LabelValuePatterns<T> on LabelValue<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabelValue<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabelValue() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabelValue<T> value)  $default,){
final _that = this;
switch (_that) {
case _LabelValue():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabelValue<T> value)?  $default,){
final _that = this;
switch (_that) {
case _LabelValue() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  T value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabelValue() when $default != null:
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  T value)  $default,) {final _that = this;
switch (_that) {
case _LabelValue():
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  T value)?  $default,) {final _that = this;
switch (_that) {
case _LabelValue() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _LabelValue<T> implements LabelValue<T> {
  const _LabelValue({required this.label, required this.value});
  

@override final  String label;
@override final  T value;

/// Create a copy of LabelValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabelValueCopyWith<T, _LabelValue<T>> get copyWith => __$LabelValueCopyWithImpl<T, _LabelValue<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabelValue<T>&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,label,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'LabelValue<$T>(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$LabelValueCopyWith<T,$Res> implements $LabelValueCopyWith<T, $Res> {
  factory _$LabelValueCopyWith(_LabelValue<T> value, $Res Function(_LabelValue<T>) _then) = __$LabelValueCopyWithImpl;
@override @useResult
$Res call({
 String label, T value
});




}
/// @nodoc
class __$LabelValueCopyWithImpl<T,$Res>
    implements _$LabelValueCopyWith<T, $Res> {
  __$LabelValueCopyWithImpl(this._self, this._then);

  final _LabelValue<T> _self;
  final $Res Function(_LabelValue<T>) _then;

/// Create a copy of LabelValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = freezed,}) {
  return _then(_LabelValue<T>(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
