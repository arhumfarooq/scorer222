// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/forward_button_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/page_changed_container.dart';

class StartScreen3 extends StatelessWidget {
  const StartScreen3({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double screenHeight = constraints.maxHeight;
              final double titleFontSize = screenHeight * 0.03;
              final double descriptionFontSize = screenHeight * 0.018;
              final double imageTopPadding = screenHeight * 0.1;
              final double imageLeftPadding = constraints.maxWidth * 0.16;
              final double imageManHeight = screenHeight * 0.5;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 20,),
                    SvgPicture.asset(
                      Appimages.splash,
                      width: constraints.maxWidth * 0.2,
                      height: constraints.maxHeight * 0.08,
                    ),
                     Padding(
                       padding:  EdgeInsets.only(left: 20),
                       child: Image.asset(
                                         Appimages.game,
                                         height: imageManHeight,
                                            
                                       ),
                     ),
                    //  SizedBox(height: 20,),
                    // SizedBox(height: screenHeight * 0.1),
             
                    
                    Center(
                      child: BoldText(
                        height: 1.2,
                        selectionColor: AppColors.blueColor,
                        text: "One Platform, Many\nGames",
                        textAlign: TextAlign.center,
                        fontSize: titleFontSize,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Center(
                      child: MainText(
                        text:
                        "Play and score across multiple formats Odyssée des OKR, FeedLoop, Elo’R, Transform’Action, and Eranove Odyssey each designed for unique training experiences.",
                            // "Whether you’re an Administrator setting up sessions, a Facilitator managing the game, or a Player competing for the top spot, Score’Master+ is designed to fit your role perfectly.",
                        textAlign: TextAlign.center,
                        fontSize: descriptionFontSize,
                        height: 1.24,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         ForwardButtonContainer(image: Appimages.arrowback,
                           onTap:(){
                        Get.back();
                      },
                         ),
                        // SizedBox(width: constraints.maxWidth * 0.2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PageChangedContainer(
                              color: AppColors.pageColor,
                              width: constraints.maxWidth * 0.03,
                              height: screenHeight * 0.008,
                            ),
                            SizedBox(width: constraints.maxWidth * 0.01),
                             PageChangedContainer(
                              color: AppColors.pageColor,
                              width: constraints.maxWidth * 0.03,
                              height: screenHeight * 0.008,
                            ),
                          
                            SizedBox(width: constraints.maxWidth * 0.01),
                             PageChangedContainer(
                              color: AppColors.forwardColor,
                              width: constraints.maxWidth * 0.08,
                              height: screenHeight * 0.008,
                            ),
                          ],
                        ),
                        ForwardButtonContainer(
                            onTap:(){
                        Get.toNamed(RouteName.chooseYourRoleScreen);
                      },
                        ),
                      ],
                    ),
                    const Spacer(),
                    Center(child: SvgPicture.asset(Appimages.bottom)),
                    SizedBox(height: screenHeight * 0.02),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

