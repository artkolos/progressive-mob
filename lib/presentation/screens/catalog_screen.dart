import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pm/domain/bloc/catalog/catalog_bloc.dart';
import 'package:test_pm/injectable.dart';
import 'package:test_pm/presentation/extensions/app_icons_ext.dart';
import 'package:test_pm/presentation/extensions/app_offset_box_ext.dart';
import 'package:test_pm/presentation/extensions/colors_ext.dart';
import 'package:test_pm/presentation/extensions/sizes_ext.dart';
import 'package:test_pm/presentation/extensions/text_styles_ext.dart';
import 'package:test_pm/presentation/widgets/catalog_item.dart';

import '../widgets/category_list.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  late final CatalogBloc _catalogBloc;

  @override
  void initState() {
    super.initState();
    _catalogBloc = getIt.get<CatalogBloc>();
  }

  @override
  Widget build(BuildContext context) {
    _catalogBloc.add(const CatalogEvent.getProducts());
    return BlocProvider(
      create: (context) => _catalogBloc,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            context.icons.arrowBackOutline,
            size: 30,
          ),
          title: Center(
            child: Text(
              'Бургер Кинг',
              style: context.textStyles.title3SemiBold.copyWith(
                color: context.colors.onPrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            Icon(
              context.icons.info,
              size: 30,
            ),
            context.appOffsetBox.horizontal2x,
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.sizes.size4x,
            vertical: context.sizes.size2x,
          ),
          child: BlocBuilder<CatalogBloc, CatalogState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CategoryList(),
                  context.appOffsetBox.vertical4x,
                  state.maybeWhen(
                    success: (products) => Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 295,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: products.data.length,
                        itemBuilder: (_, index) => CatalogItem(
                            title: products.data[index].title,
                            imagePath: products.data[index].path,
                            price: products.data[index].price),
                      ),
                    ),
                    orElse: () => const SizedBox(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
