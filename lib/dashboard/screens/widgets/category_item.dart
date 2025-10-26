import 'package:flutter/material.dart';
import 'package:paxform/common/icons/svg_icons.dart';
import 'package:paxform/constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final MedicalCategory category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ASizes.md),
      width: 74,
      height: 74,
      decoration: BoxDecoration(
        color: AColors.lightContainer,
        borderRadius: BorderRadius.circular(ASizes.fontSizeSm),
      ),
      child: Center(
        child: Column(
          children: [
            ASvgIcon(width: 34, height: 34, svgIconName: category.icon),
            const SizedBox(height: ASizes.xs),
            Text(
              category.name,
              style: Theme.of(context).textTheme.displaySmall,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
