import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/main_text.dart';

class LeaderStackContainer extends StatelessWidget {
  const LeaderStackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: 174,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  bottomLeft: Radius.circular(80)
                ),
                color: AppColors.forwardColor
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  children: [
                    SvgPicture.asset(Appimages.king),
                    SizedBox(width: 3,),
                    MainText(text: "Leaderboard",fontSize: 16,color: AppColors.whiteColor,)
                  ],
                ),
              ),
            );
  }
}