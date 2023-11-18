import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_pm/domain/model/product_item/product_item.dart';

part 'product_list.freezed.dart';

part 'product_list.g.dart';

@freezed
class ProductList with _$ProductList{
  @JsonSerializable(explicitToJson: true)
  const factory ProductList({required List<ProductItem> data}) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}