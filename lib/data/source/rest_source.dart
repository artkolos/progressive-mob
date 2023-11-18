import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../domain/model/product_list/product_list.dart';

String jsonStr =
    '{ "data": [ { "id": 1, "title": "Комбо с Воппером Дж. 1", "price": 189, "path": "assets/images/image1.jpg" }, { "id": 2, "title": "Воппер с сыром", "price": 249, "path": "assets/images/image2.jpg" }, { "id": 3, "title": "Комбо на двоих с Чизбургером", "price": 399, "path": "assets/images/image4.jpg" }, { "id": 4, "title": "Кинг Наггетс (станд.)", "price": 119, "path": "assets/images/image3.jpg" } ] }';

@injectable
class RestSource {
  Future<ProductList> getProductList() async {
    await Future.delayed(const Duration(seconds: 2));
    final Map<String, dynamic> responseJson = json.decode(jsonStr);
    return ProductList.fromJson(responseJson);
  }
}
