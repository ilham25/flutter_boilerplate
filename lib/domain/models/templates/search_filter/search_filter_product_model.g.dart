// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchFilterProductModel _$SearchFilterProductModelFromJson(
  Map<String, dynamic> json,
) => _SearchFilterProductModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  image: json['image'] as String? ?? "",
  title: json['title'] as String? ?? "",
  price: (json['price'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SearchFilterProductModelToJson(
  _SearchFilterProductModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'image': instance.image,
  'title': instance.title,
  'price': instance.price,
};
