import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item.freezed.dart';

part 'product_item.g.dart';
@freezed
class ProductItem with _$ProductItem {
  @JsonSerializable(explicitToJson: true)
  const factory ProductItem({
    required int id,
    required String title,
    required int price,
    required String path,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}
