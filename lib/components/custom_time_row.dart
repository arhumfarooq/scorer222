import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:scorer/components/players_Row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/session_useable_row.dart';
import 'package:scorer/widgets/useable_container.dart';
class CustomTimeRow extends StatelessWidget {
  const CustomTimeRow({
    super.key,
    required this.heightScaleFactor,
    required this.widthScaleFactor,
  });

  final double heightScaleFactor;
  final double widthScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 116 * heightScaleFactor,
            width: 105 * widthScaleFactor,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7 * widthScaleFactor,
              ),
              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldText(
                  text: "2:98",
                  selectionColor: AppColors.redColor,
                  fontSize: 24 * widthScaleFactor,
                ),
                BoldText(
                  text: "Time\nDuration",
                  fontSize: 16 * widthScaleFactor,
                  selectionColor: AppColors.blueColor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10 * widthScaleFactor),
        Expanded(
          child: Container(
            height: 116 * heightScaleFactor,
            width: 105 * widthScaleFactor,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7 * widthScaleFactor,
              ),
              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldText(
                  text: "12",
                  selectionColor: AppColors.forwardColor,
                  fontSize: 24 * widthScaleFactor,
                ),
                BoldText(
                  text: "Active\nPlayers",
                  fontSize: 16 * widthScaleFactor,
                  selectionColor: AppColors.blueColor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10 * widthScaleFactor),
        Expanded(
          child: Container(
            height: 116 * heightScaleFactor,
            width: 105 * widthScaleFactor,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7 * widthScaleFactor,
              ),
              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldText(
                  text: "03",
                  selectionColor: AppColors.redColor,
                  fontSize: 24 * widthScaleFactor,
                ),
                BoldText(
                  text: "Total\nPhases",
                  fontSize: 16 * widthScaleFactor,
                  selectionColor: AppColors.blueColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}