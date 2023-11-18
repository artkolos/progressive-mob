import 'package:flutter/cupertino.dart';
import 'package:test_pm/presentation/extensions/sizes_ext.dart';
import 'package:test_pm/presentation/extensions/text_styles_ext.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.color,
    required this.onTap,
    required this.colorTitle,
  });

  final String title;
  final Color color;
  final Color colorTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.sizes.size2x,
          vertical: context.sizes.size2x,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            context.sizes.size6x,
          ),
        ),
        child: Text(
          title,
          style: context.textStyles.bodySemiBold.copyWith(
            color: colorTitle,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
