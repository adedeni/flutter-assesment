import 'package:flutter/material.dart';
import 'package:paxform/common/icons/svg_icons.dart';
import 'package:paxform/constants/image_strings.dart';
import 'package:paxform/constants/sizes.dart';

class ASectionHeading extends StatelessWidget {
  const ASectionHeading({
    super.key,
    this.textColor,

    required this.title,
    this.buttonTitle = 'See all',
  });

  final Color? textColor;

  final String title, buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),

        Row(
          children: [
            Text(
              buttonTitle,
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.apply(color: textColor),
              maxLines: 1,
            ),
            SizedBox(width: ASizes.sm),
            ASvgIcon(
              svgIconName: AImages.arrow,
              width: 16,
              height: 16,
              iconColor: textColor,
            ),
          ],
        ),
      ],
    );
  }
}
