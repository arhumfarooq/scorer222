import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/custom_sloder_row.dart';

class DefaultTimeContainer extends StatelessWidget {
  const DefaultTimeContainer({
    super.key,
    required this.scaleFactor,
  });

  final double scaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236 * scaleFactor,
      width: 336 * scaleFactor,
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColors.greyColor, width: 1.7 * scaleFactor),
        borderRadius: BorderRadius.circular(24 * scaleFactor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23 * scaleFactor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20 * scaleFactor),
            BoldText(
              text:"default_time_limit_per_phase".tr,
              selectionColor: AppColors.blueColor,
              fontSize: 16 * scaleFactor,
            ),
            SizedBox(height: 31 * scaleFactor),
            CustomSloderRow(
                text: "Phase 1",
                text2: "easy".tr,
                value: 15,
                width: 82 * scaleFactor,
                fontSize: 16 * scaleFactor,
                width1: 10 * scaleFactor),
            SizedBox(height: 5 * scaleFactor),
            CustomSloderRow(
                width1: 10 * scaleFactor,
                text: "Phase 2",
                text2:"medium".tr,
                value: 20,
                color: AppColors.orangeColor,
                width: 82 * scaleFactor,
                fontSize: 16 * scaleFactor),
            SizedBox(height: 5 * scaleFactor),
            CustomSloderRow(
                width1: 10 * scaleFactor,
                text: "Phase 3",
                text2:"hard".tr,
                value: 30,
                color: AppColors.redColor,
                width: 82 * scaleFactor,
                fontSize: 16 * scaleFactor),
          ],
        ),
      ),
    );
  }
}