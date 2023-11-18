// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_pm/data/repository/product_repository_impl.dart' as _i5;
import 'package:test_pm/data/source/rest_source.dart' as _i3;
import 'package:test_pm/domain/bloc/catalog/catalog_bloc.dart' as _i6;
import 'package:test_pm/domain/repository/product_repositpry.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.RestSource>(() => _i3.RestSource());
    gh.lazySingleton<_i4.ProductRepository>(
        () => _i5.ProductRepositoryImpl(gh<_i3.RestSource>()));
    gh.factory<_i6.CatalogBloc>(
        () => _i6.CatalogBloc(gh<_i4.ProductRepository>()));
    return this;
  }
}
