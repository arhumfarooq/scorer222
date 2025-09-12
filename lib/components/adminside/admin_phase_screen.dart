import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer/components/adminside/admin_Session_container.dart';
import 'package:scorer/components/adminside/admin_realtime_monitoring_container.dart';
import 'package:scorer/components/adminside/admin_team_progress.dart';
import 'package:scorer/components/phases_container.dart';
import 'package:scorer/components/stages_row.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/controllers/stage_controllers.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';

class AdminPhaseScreen extends StatelessWidget {
  final StageController controller = Get.put(StageController());
  AdminPhaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Common scaling
    final verticalSpacing = screenHeight * 0.02;
    final horizontalPadding = screenWidth * 0.05;
    final contentWidth = screenWidth * 0.9;

    return Stack(
      children: [
        /// Scrollable Content
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: verticalSpacing * 2),
              CreateContainer(
                  text: "Current Phase", width: screenWidth * 0.3),
              SizedBox(height: verticalSpacing),
             
              // SizedBox(height: verticalSpacing),
 Center(
                child: CircularPercentIndicator(
                  radius: 60.0, // circle ka size
                  lineWidth: 5.0, // border ki thickness
                  percent: 0.7, // yaha aap progress set karoge (0.0 to 1.0)
                  animation: true,
                  animationDuration: 500,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.transparent,
                  progressColor: AppColors.forwardColor,
                  center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             BoldText(
                  text: "12:32",
                  fontSize: screenWidth * 0.06,
                  selectionColor: AppColors.blueColor),
              MainText(
                  text: "Remaining",
                  fontSize: screenWidth * 0.04,
                  height: 1),
          ],
                  ),
                ),
              ),
              SizedBox(height: verticalSpacing),

              /// Example Content
              PhaseContainer(horizontalPadding: horizontalPadding, contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth),
              Icon(Icons.arrow_downward_sharp,
                  color: AppColors.forwardColor, size: screenWidth * 0.08),
              SizedBox(height: verticalSpacing),

              StagesRow(),
              SizedBox(height: verticalSpacing),

              /// Progress Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Row(
                        children: [
                          Expanded(
                                      flex:  3 ,

                            child: Container(
                              height: screenHeight * 0.008,
                              width:
                                  contentWidth * 0.5,
                              decoration: BoxDecoration(
                                  color
                                      : AppColors.selectLangugaeColor,
                                  borderRadius:
                                      BorderRadius.circular(screenWidth * 0.05)),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.008,
                            width: contentWidth * 0.4,
                            decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.05)),
                          ),
                        ],
                      ),
                    SizedBox(height: screenHeight * 0.01),
                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                              text: "12:32",
                              fontSize: screenWidth * 0.06,
                              selectionColor: AppColors.blueColor),
                          MainText(
                              text: "Remaining",
                              fontSize: screenWidth * 0.04),
                        ],
                      ),
                
                    SizedBox(height: verticalSpacing),

                    /// Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: PauseContainer(
                                onTap: () {},
                                   
                                text: "Back")),
                        SizedBox(width: horizontalPadding),
                       Expanded(
  child: PauseContainer(
    onTap: () {
     
    },
    text: "Next Stage",
    icon: Icons.fast_forward,
    color: AppColors.assignColor,
  ),
),
                     ],
                    ),
                    SizedBox(height: verticalSpacing),

                    /// Team Progress
                    AdminTeamProgress(contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth, verticalSpacing: verticalSpacing,),
                    SizedBox(height: verticalSpacing),
                    



                    /// Real-Time Monitoring
                    AdminRealtimeMonitoringContainer(contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth, verticalSpacing: verticalSpacing),
                    SizedBox(height: verticalSpacing),
                      BoldText(text: "All Phases",fontSize: 16,selectionColor: AppColors.blueColor,),
SizedBox(height: 25,),
                    CustomStratgyContainer(iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 1 Strategy Building", text2: "Completed • 20 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                    flex: 4,flex1: 0,
                    ),
                    SizedBox(height: 10,),
                     CustomStratgyContainer(iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "Phase 2 Strategy Building", text2: "Active • 30 min", text3: "Active", smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
             
                    ),
                     SizedBox(height: 10,),
                     CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 3: Implementation", text2: "Upcoming • 25 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),
                         SizedBox(height: 10,),
                     CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 4: Evaluation", text2: "Upcoming • 15 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),
                    SizedBox(height: 25,),
                    AdminSessionContainer(contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth, verticalSpacing: verticalSpacing),
                   
 Center(
                      child: LoginButton(
                        text: "Add Phases",
                        // color: AppColors.forwardColor,
                        ishow: true,
                        // image: Appimages.eye,
                        icon: Icons.add,
                      ),
                    ),
                    SizedBox(height: verticalSpacing ),

                    /// View Responses Button
                    Center(
                      child: LoginButton(
                        text: "View Responses",
                        color: AppColors.forwardColor,
                        ishow: true,
                        image: Appimages.eye,
                      ),
                    ),
                    SizedBox(height: verticalSpacing * 2),
                  ],
                ),
              ),
            ],
          ),
        ),

        /// Fixed Overlay Timer
        

        /// Fixed Overlay "Team Alpha"
       Positioned(
          right: 0,
          top: screenHeight * 0.2,
          child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
        ),

        /// Player Image
       
 
      ],
    );
  }
}
