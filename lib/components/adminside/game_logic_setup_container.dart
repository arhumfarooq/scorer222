
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/use_able_game_row.dart';

class GameLOgicSetupContainer extends StatelessWidget {
  const GameLOgicSetupContainer({
    super.key,
    required this.scaleFactor,
  });

  final double scaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336 * scaleFactor,
      height: 256 * scaleFactor,
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColors.greyColor, width: 1.5 * scaleFactor),
        borderRadius: BorderRadius.circular(24 * scaleFactor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15 * scaleFactor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28 * scaleFactor),
            BoldText(
                text: "game_logic_setup".tr,
                fontSize: 16 * scaleFactor,
                selectionColor: AppColors.blueColor),
            SizedBox(height: 19 * scaleFactor),
            UseAbleGameRow(
              text1: 'Phase 1 - Strategy',
              text2: '3 Stage - 1h 12 minutes',
             
            ),
            SizedBox(height: 12 * scaleFactor),
            UseAbleGameRow(
              text1: 'Phase 2 - Strategy',
              text2: '3 Stage - 1h 12 minutes',
          
            ),
            SizedBox(height: 12 * scaleFactor),
            UseAbleGameRow(
              text1: 'Phase 3 - Strategy',
              text2: '3 Stage - 1h 12 minutes',
              // scaleFactor: scaleFactor,
            ),
          ],
        ),
      ),
    );
  }
}

class GameRow extends StatelessWidget {
  final String? text;
  final double screenHeight;
  final double screenWidth;
  final double scaleFactor;

  const   GameRow({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    this.text,
    required this.scaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText(
          text: text ?? "enable_leaderboard".tr,
          fontSize: 14 * scaleFactor,
        ),
        FlutterSwitch(
          value: true,
          onToggle: (val) {},
          height: screenHeight * 0.03,
          width: screenWidth * 0.13,
          activeColor: AppColors.forwardColor,
          inactiveColor: AppColors.forwardColor,
        )
      ],
    );
  }
}


