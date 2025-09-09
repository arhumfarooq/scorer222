
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/stages_row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/stage_controllers.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/useable_container.dart';
import 'package:scorer/widgets/useable_textrow.dart';
class TeamAlphaContainer extends StatelessWidget {
  const TeamAlphaContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.4,
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth * 0.03),
          bottomLeft: Radius.circular(screenWidth * 0.03),
        ),
        color: AppColors.forwardColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.1,
                top: screenHeight * 0.015),
            child: MainText(
              text: "Team Alpha",
              fontFamily: "gotham",
              fontSize: screenWidth * 0.04,
              color: AppColors.whiteColor,
              height: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.003),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_up_outlined,
                    color: AppColors.arrowColor,
                    size: screenWidth * 0.05),
                MainText(
                  text: "2,890 pts  ",
                  fontFamily: "gotham",
                  fontSize: screenWidth * 0.04,
                  height: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
