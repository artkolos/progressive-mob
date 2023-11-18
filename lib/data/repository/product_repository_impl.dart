import 'package:injectable/injectable.dart';
import 'package:test_pm/data/source/rest_source.dart';
import 'package:test_pm/domain/model/product_list/product_list.dart';
import 'package:test_pm/domain/repository/product_repositpry.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final RestSource _restSource;

  ProductRepositoryImpl(this._restSource);

  @override
  Future<ProductList> getProductList() => _restSource.getProductList();
}
