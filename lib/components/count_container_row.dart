
import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';

class CountContainerRow extends StatelessWidget {
  const CountContainerRow({
    super.key,
    required this.scaleFactor,
  });

  final double scaleFactor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 116 * scaleFactor,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.minus2, width: 1.5 * scaleFactor),
              borderRadius: BorderRadius.circular(24 * scaleFactor),
            ),
            child: Center(
              child: Container(
                width: 36.5 * scaleFactor,
                height: 36.5 * scaleFactor,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * scaleFactor),
                  color: AppColors.minus,
                ),
                child: Center(
                  child: Icon(
                    Icons.remove,
                    color: AppColors.whiteColor,
                    size: 24 * scaleFactor,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 116 * scaleFactor,
            child: Center(
              child: BoldText(
                text: "03",
                fontSize: 40 * scaleFactor,
                selectionColor: AppColors.blueColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 116 * scaleFactor,
            decoration: BoxDecoration(
              color: AppColors.forwardColor,
              borderRadius: BorderRadius.circular(24 * scaleFactor),
            ),
            child: Center(
              child: Container(
                width: 36.5 * scaleFactor,
                height: 36.5 * scaleFactor,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * scaleFactor),
                  color: AppColors.whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.forwardColor,
                    size: 24 * scaleFactor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}