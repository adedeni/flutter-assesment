import 'package:flutter/material.dart';
import '../../../constants/sizes.dart';
import '../../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final MedicalCategory category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: category.backgroundColor,
            borderRadius: BorderRadius.circular(ASizes.borderRadiusMd),
          ),
          child: Icon(
            category.icon,
            color: category.iconColor,
            size: 28,
          ),
        ),
        const SizedBox(height: ASizes.xs),
        Text(
          category.name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}