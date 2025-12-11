import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter_product_model.freezed.dart';
part 'search_filter_product_model.g.dart';

@freezed
abstract class SearchFilterProductModel with _$SearchFilterProductModel {
  const factory SearchFilterProductModel({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'image') @Default("") String image,
    @JsonKey(name: 'title') @Default("") String title,
    @JsonKey(name: 'price') @Default(0) int price,
  }) = _SearchFilterProductModel;

  factory SearchFilterProductModel.fromJson(Map<String, dynamic> json) =>
      _$SearchFilterProductModelFromJson(json);
}
