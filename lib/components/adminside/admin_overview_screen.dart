
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer/components/adminside/admin_new_Session_screen.dart';
import 'package:scorer/components/engagement_Container.dart';
import 'package:scorer/components/new_session_container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/useable_container.dart';
import 'package:scorer/widgets/useable_textrow.dart';

class AdminOverviewScreen extends StatelessWidget {
  const AdminOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    return SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20 * heightScaleFactor),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                  text: "Session Information",
                  selectionColor: AppColors.blueColor,
                  fontSize: 16 * heightScaleFactor,
                ),
                MainText(
                  text: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                  fontSize: 14 * heightScaleFactor,
                  height: 1.5,
                )
              ],
            ),
          ),
          SizedBox(height: 20 * heightScaleFactor),
          EngagementContainer(widthScaleFactor: widthScaleFactor, heightScaleFactor: heightScaleFactor),
          SizedBox(height: 10 * heightScaleFactor),
          AdminNewSessionScreen(widthScaleFactor: widthScaleFactor, heightScaleFactor: heightScaleFactor),
          
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16 * widthScaleFactor),
            child: Column(
              children: [
                Container(
                                width: screenWidth * 0.9,
                                height:220 ,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.greyColor, width: 1.7),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.05,
                                    vertical: screenHeight * 0.02,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BoldText(
                                        text: "System Activity",
                                        selectionColor: AppColors.blueColor,
                                        fontSize: screenWidth * 0.04,
                                      ),
                                      SizedBox(height: screenHeight * 0.010),
                                      UseableTextrow(
                                        color: AppColors.forwardColor,
                                        text: "Alex joined session",
                                        // text1: "4 Players",
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                      UseableTextrow(
                                        color: AppColors.forwardColor2,
                                        text: "Phase 2 auto-started",
                                        // text1: "4 Players",
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                      UseableTextrow(
                                        color: AppColors.forwardColor3,
                                        text: "Connection timeout: Mike",
                                        // text1: "4 Players",
                                      ),
                                        SizedBox(height: screenHeight * 0.01),
                                      UseableTextrow(
                                        color: AppColors.forwardColor3,
                                        text: "Mike went inactive • 5m ago",
                                        // text1: "4 Players",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 22,),
                              LoginButton(text: "Export Result by Phase",ishow: true,image: Appimages.export,),
                              SizedBox(height: 9,),
                               LoginButton(text: "Export Result by Team",ishow: true,image: Appimages.export,color: AppColors.redColor,),
                              SizedBox(height: 9,),
                               LoginButton(text: "Export Result by Player",ishow: true,image: Appimages.export,color: AppColors.forwardColor,),
                              SizedBox(height: 44,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
