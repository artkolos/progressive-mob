import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_pm/domain/model/product_list/product_list.dart';

import '../../repository/product_repositpry.dart';

part 'catalog_bloc.freezed.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final ProductRepository _productRepository;

  CatalogBloc(this._productRepository) : super(const CatalogState.initial()) {
    on(_onEvent);
  }

  FutureOr<void> _onEvent(CatalogEvent mainEvent, Emitter<CatalogState> emit) =>
      mainEvent.map(
        getProducts: (_GetProducts event) => _getProducts(event, emit),
      );

  Future<void> _getProducts(
      _GetProducts event, Emitter<CatalogState> emit) async {
    final ProductList productList = await _productRepository.getProductList();
    emit(CatalogState.success(productList: productList));
  }
}

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.getProducts() = _GetProducts;
}

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = _Initial;

  const factory CatalogState.success({required ProductList productList}) =
      _Success;
}
