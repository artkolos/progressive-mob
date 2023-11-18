import 'package:flutter/cupertino.dart';
import 'package:test_pm/presentation/extensions/app_offset_box_ext.dart';
import 'package:test_pm/presentation/extensions/sizes_ext.dart';
import 'package:test_pm/presentation/extensions/text_styles_ext.dart';
import 'package:test_pm/presentation/theme/colors.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.price});

  final String title;
  final String imagePath;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: AppColors.gray05Dark,
        borderRadius: BorderRadius.circular(
          context.sizes.size6x,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.sizes.size6x),
              topRight: Radius.circular(context.sizes.size6x),
            ),
            child: Image.asset(
              imagePath,
            ),
          ),
          context.appOffsetBox.vertical4x,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.sizes.size4x,
            ),
            child: Text(
              title,
              style: context.textStyles.subheadSemiBold,
            ),
          ),
          context.appOffsetBox.vertical4x,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.sizes.size4x,
            ),
            child: Text(
              '$price ₽',
              style: context.textStyles.subheadSemiBold,
            ),
          ),
          context.appOffsetBox.vertical4x,
        ],
      ),
    );
  }
}
