import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer/components/adminside/admin_Session_container.dart';
import 'package:scorer/components/adminside/admin_realtime_monitoring_container.dart';
import 'package:scorer/components/adminside/admin_team_progress.dart';
import 'package:scorer/components/phases_container.dart';
import 'package:scorer/components/responsive_fonts.dart';
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
import 'package:scorer/widgets/useable_textrow.dart';

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
     const double baseWidth = 414.0;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Stack(
      children: [
        /// Scrollable Content
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: verticalSpacing * 2),
              CreateContainer(
                  text: "current_phase".tr, width: screenWidth * 0.3),
              SizedBox(height: verticalSpacing),
             
              // SizedBox(height: verticalSpacing),
 Center(
                child: CircularPercentIndicator(
                  radius: 60*widthScaleFactor,
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
                  fontSize: screenWidth * 0.05,
                  selectionColor: AppColors.blueColor),
              MainText(
                  text: "remaining".tr,
                  fontSize: screenWidth * 0.036,
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
                              text: "remaining".tr,
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
                                   
                                text: "back".tr)),
                        SizedBox(width: horizontalPadding),
                       Expanded(
  child: PauseContainer(
    onTap: () {
     
    },
    text:"next_stage".tr,
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
                      BoldText( text: "all_phases".tr,fontSize: 16,selectionColor: AppColors.blueColor,),
SizedBox(height: 25,),
                     CustomStratgyContainer(
                      // fontSize: isSpanish?2:14,
fontSize2:  ResponsiveFont.getFontSize(),

// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
                      width3: 80,
                      iconContainer: AppColors.forwardColor, icon: Icons.check, text1:  "phase1_strategy".tr, text2: "Completed • 20 min", text3: "completed".tr, smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                    flex: 3,flex1: 0,
                    ),
                    SizedBox(height: 10,),
                     CustomStratgyContainer(
                      // fontSize2:isSpanish? 11:14,
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize2:  ResponsiveFont.getFontSize(),


                      // fontSize: 6,
                      // width3: 80,
                      iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "phase2_strategy".tr ,text2: "Active • 30 min", text3: "active".tr, smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
             
                    ),
                     SizedBox(height: 10,),
                     CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize2:  ResponsiveFont.getFontSize(),

                      width3: 80,
                      iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "phase3_implementation".tr, text2: "Upcoming • 25 min", text3: "pending".tr, smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),
                         SizedBox(height: 10,),
                     CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize2:  ResponsiveFont.getFontSize(),

                      width3: 80,
                      iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "phase4_evaluation".tr,text2: "Upcoming • 15 min", text3: "pending".tr, smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),



                 
                  ],
                ),
              ),


SizedBox(height: 20,),
            //   Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 13),
            //     child: Container(
            //       width: 376,
            //       height: 250,
            //       decoration: BoxDecoration(
            //         border: Border.all(color: AppColors.greyColor,width: 1.5),
            //         borderRadius: BorderRadius.circular(24)
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 20),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(height: 31,),
            //             BoldText(text: "Session Timeline",fontSize: 16,selectionColor: AppColors.blueColor,),
            //             SizedBox(height: 20,),
            //             UseableTextrow(color: AppColors.forwardColor, text: "Session Start: 12:20 PM"),
            //             UseableTextrow(color: AppColors.forwardColor2, text: "Current Time: 1:00 PM"),
            //             UseableTextrow(color: AppColors.forwardColor3, text: "Estimated End: 1:55 PM"),
            //             SizedBox(height: 20,),
            //              Row(
            //   children: [
            //     Expanded(
            //       flex: 3,
            //       child: Container(
            //         height: 5,
            //         // width: width1 ?? progressBarWidth,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: AppColors.forwardColor,
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       flex: 1,
            //       child: Container(
            //         height:5 ,
            //         // width: width2 ?? 0,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: AppColors.greyColor,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10,),
            //   Row(
            //   mainAxisAlignment:
            //       MainAxisAlignment.spaceBetween,
            //   children: [
            //     MainText(
            //       // height: 1,
            //         text:  "40% Complete".tr,
            //         fontSize: screenWidth * 0.035),
            //     BoldText(
            //         text: "55 minutes remaining",
            //         fontSize: screenWidth * 0.035,
            //         selectionColor: AppColors.blueColor),
            //   ],
            // ),

            //           ],
            //         ),
            //       ),
            //     ),
                
            //   ),
            Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        width: contentWidth,
        height: screenHeight * 0.31, // A proportional height (approx. 250 on 812px height screen)
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyColor, width: 1.5 * widthScaleFactor),
          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20 * widthScaleFactor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 31 * (screenHeight / 812.0)), // Scales based on the original design's height
              BoldText(
                text: "Session Timeline",
                fontSize: 16 * widthScaleFactor,
                selectionColor: AppColors.blueColor,
              ),
              SizedBox(height: 20 * (screenHeight / 812.0)),
              UseableTextrow(color: AppColors.forwardColor, text: "Session Start: 12:20 PM"),
              UseableTextrow(color: AppColors.forwardColor2, text: "Current Time: 1:00 PM"),
              UseableTextrow(color: AppColors.forwardColor3, text: "Estimated End: 1:55 PM"),
              SizedBox(height: 20 * (screenHeight / 812.0)),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 5 * (screenHeight / 812.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * widthScaleFactor),
                        color: AppColors.forwardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 5 * (screenHeight / 812.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * widthScaleFactor),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10 * (screenHeight / 812.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainText(text: "40% Complete", fontSize: screenWidth * 0.035),
                  BoldText(
                    text: "55 minutes remaining",
                    fontSize: screenWidth * 0.035,
                    selectionColor: AppColors.blueColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
                 SizedBox(height: 20,),
          
 Center(
                      child: LoginButton(
                      fontSize: 20,

                        text:  "add_phases".tr,
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
                      fontSize: 20,

                       text: "view_responses".tr,
                        color: AppColors.forwardColor,
                        ishow: true,
                        image: Appimages.eye,
                      ),
                    ),
                    SizedBox(height: verticalSpacing * 2),
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
