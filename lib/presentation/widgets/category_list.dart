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
          ),
          context.appOffsetBox.horizontal4x,
        ],
      ),
    );
  }
}
