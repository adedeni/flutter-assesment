import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class AppointmentSliderIndicator extends StatelessWidget {
  const AppointmentSliderIndicator({
    super.key,
    required this.currentIndex,
    required this.totalCount,
  });

  final int currentIndex;
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalCount,
        (index) => Container(
          width: 18, 
          height: 4, 
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: index == currentIndex
                ? AColors
                      .slider
                : AColors.slider.withAlpha(55),
            borderRadius: BorderRadius.circular(
              2,
            ), 
          ),
        ),
      ),
    );
  }
}
