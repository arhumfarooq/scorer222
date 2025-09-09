import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/adminside/admin_realtime_monitoring_container.dart';
import 'package:scorer/components/adminside/admin_team_progress.dart';
import 'package:scorer/components/phases_container.dart';
import 'package:scorer/components/real_time_monitor_container.dart';
import 'package:scorer/components/stages_row.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/components/team_progress_Container.dart';
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
class AdminSessionContainer extends StatelessWidget {
  const AdminSessionContainer({
    super.key,
    required this.contentWidth,
    required this.screenHeight,
    required this.screenWidth,
    required this.verticalSpacing,
  });

  final double contentWidth;
  final double screenHeight;
  final double screenWidth;
  final double verticalSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: contentWidth,
          height: screenHeight * 0.32,
          decoration: BoxDecoration(
            border: Border.all(
                color: AppColors.greyColor,
                width: screenWidth * 0.004),
            borderRadius:
                BorderRadius.circular(screenWidth * 0.06),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: verticalSpacing),
                BoldText(
                    text: "Session Timeline",
                    selectionColor: AppColors.blueColor,
                    fontSize: screenWidth * 0.04),
      SizedBox(height: verticalSpacing),
               
                UseableTextrow(
                    color: AppColors.forwardColor,
                    text: "Session Start: 12:20 PM"),
                // SizedBox(height: verticalSpacing * 0.2),
                UseableTextrow(
                    color: AppColors.forwardColor2,
                    text: "Current Time: 1:00 PM"),
                // SizedBox(height: verticalSpacing * 0.2),
                UseableTextrow(
                    color: AppColors.forwardColor3,
                    text: "Estimated End: 1:55 PM"),
                      SizedBox(height: verticalSpacing),
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.005,
                      width: screenWidth * 0.45,
                      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
          screenWidth * 0.05),
      color: AppColors.forwardColor),
                    ),
                    Container(
                      height: screenHeight * 0.007,
                      width: screenWidth * 0.22,
                      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
          screenWidth * 0.05),
      color: AppColors.greyColor),
                    ),
                  ],
                ),
                SizedBox(height: verticalSpacing),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    MainText(
                      // height: 1,
    text: "40% Complete",
    fontSize: screenWidth * 0.04),
                    BoldText(
    text: "55 minutes remaining",
    fontSize: screenWidth * 0.04,
    selectionColor: AppColors.blueColor),
                  ],
                ),
    
              ],
            ),
          ),
        );
  }
}
