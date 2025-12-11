// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchFilterProductModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'image') String get image;@JsonKey(name: 'title') String get title;@JsonKey(name: 'price') int get price;
/// Create a copy of SearchFilterProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFilterProductModelCopyWith<SearchFilterProductModel> get copyWith => _$SearchFilterProductModelCopyWithImpl<SearchFilterProductModel>(this as SearchFilterProductModel, _$identity);

  /// Serializes this SearchFilterProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilterProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,title,price);

@override
String toString() {
  return 'SearchFilterProductModel(id: $id, image: $image, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class $SearchFilterProductModelCopyWith<$Res>  {
  factory $SearchFilterProductModelCopyWith(SearchFilterProductModel value, $Res Function(SearchFilterProductModel) _then) = _$SearchFilterProductModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'image') String image,@JsonKey(name: 'title') String title,@JsonKey(name: 'price') int price
});




}
/// @nodoc
class _$SearchFilterProductModelCopyWithImpl<$Res>
    implements $SearchFilterProductModelCopyWith<$Res> {
  _$SearchFilterProductModelCopyWithImpl(this._self, this._then);

  final SearchFilterProductModel _self;
  final $Res Function(SearchFilterProductModel) _then;

/// Create a copy of SearchFilterProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? image = null,Object? title = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFilterProductModel].
extension SearchFilterProductModelPatterns on SearchFilterProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFilterProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilterProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFilterProductModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchFilterProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFilterProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFilterProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'image')  String image, @JsonKey(name: 'title')  String title, @JsonKey(name: 'price')  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilterProductModel() when $default != null:
return $default(_that.id,_that.image,_that.title,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'image')  String image, @JsonKey(name: 'title')  String title, @JsonKey(name: 'price')  int price)  $default,) {final _that = this;
switch (_that) {
case _SearchFilterProductModel():
return $default(_that.id,_that.image,_that.title,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'image')  String image, @JsonKey(name: 'title')  String title, @JsonKey(name: 'price')  int price)?  $default,) {final _that = this;
switch (_that) {
case _SearchFilterProductModel() when $default != null:
return $default(_that.id,_that.image,_that.title,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchFilterProductModel implements SearchFilterProductModel {
  const _SearchFilterProductModel({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'image') this.image = "", @JsonKey(name: 'title') this.title = "", @JsonKey(name: 'price') this.price = 0});
  factory _SearchFilterProductModel.fromJson(Map<String, dynamic> json) => _$SearchFilterProductModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'price') final  int price;

/// Create a copy of SearchFilterProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFilterProductModelCopyWith<_SearchFilterProductModel> get copyWith => __$SearchFilterProductModelCopyWithImpl<_SearchFilterProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchFilterProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilterProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,title,price);

@override
String toString() {
  return 'SearchFilterProductModel(id: $id, image: $image, title: $title, price: $price)';
}


}

/// @nodoc
abstract mixin class _$SearchFilterProductModelCopyWith<$Res> implements $SearchFilterProductModelCopyWith<$Res> {
  factory _$SearchFilterProductModelCopyWith(_SearchFilterProductModel value, $Res Function(_SearchFilterProductModel) _then) = __$SearchFilterProductModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'image') String image,@JsonKey(name: 'title') String title,@JsonKey(name: 'price') int price
});




}
/// @nodoc
class __$SearchFilterProductModelCopyWithImpl<$Res>
    implements _$SearchFilterProductModelCopyWith<$Res> {
  __$SearchFilterProductModelCopyWithImpl(this._self, this._then);

  final _SearchFilterProductModel _self;
  final $Res Function(_SearchFilterProductModel) _then;

/// Create a copy of SearchFilterProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? image = null,Object? title = null,Object? price = null,}) {
  return _then(_SearchFilterProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
