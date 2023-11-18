import '../model/product_list/product_list.dart';

abstract class ProductRepository {
  Future<ProductList> getProductList();
}
