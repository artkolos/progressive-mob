import 'package:flutter/cupertino.dart';
import 'package:test_pm/presentation/extensions/app_offset_box_ext.dart';
import 'package:test_pm/presentation/extensions/colors_ext.dart';

import '../theme/colors.dart';
import 'category_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem(
            title: 'Популярные блюда',
            color:
                _value == 0 ? AppColors.yellowDark : context.colors.background,
            onTap: () {
              _value = 0;
              setState(() {});
            },
            colorTitle:
                _value == 0 ? context.colors.background : AppColors.gray05Dark,
          ),
          context.appOffsetBox.horizontal4x,
          CategoryItem(
            title: 'Комбо',
            color:
                _value == 1 ? AppColors.yellowDark : context.colors.background,
            onTap: () {
              _value = 1;
              setState(() {});
            },
            colorTitle:
                _value == 1 ? context.colors.background : AppColors.gray05Dark,
          ),
          context.appOffsetBox.horizontal4x,
          CategoryItem(
            title: 'Креветки',
            color:
                _value == 2 ? AppColors.yellowDark : context.colors.background,
            onTap: () {
              _value = 2;
              setState(() {});
            },
            colorTitle:
                _value == 2 ? context.colors.background : AppColors.gray05Dark,
          ),
          context.appOffsetBox.horizontal4x,
          CategoryItem(
            title: 'Роллы',
            color:
                _value == 3 ? AppColors.yellowDark : context.colors.background,
            onTap: () {
              _value = 3;
              setState(() {});
            },
            colorTitle:
                _value == 3 ? context.colors.background : AppColors.gray05Dark,
          ),
          context.appOffsetBox.horizontal4x,
        ],
      ),
    );
  }
}
