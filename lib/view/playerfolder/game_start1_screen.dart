import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/useable_container.dart';

class GameStart1Screen extends StatelessWidget {
  const GameStart1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
       final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;
    return Scaffold(
      body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Appimages.player2,height: 63,width: 50, ),
                  Expanded(child: Center(child: BoldText(text: "Team Alpha",fontSize: 22,))),
                  Image.asset(Appimages.house1,height: 63,width: 80 ),
        
                
                    
                ],
              ),
            ),
              Column(
                children: [
                  Stack(
                  
                    clipBehavior: Clip.none,
                        children: [
                         
                          Image.asset(Appimages.group,height: 181,width: 209,),
                           Positioned(
                            bottom: 15,
                            right:35,
                            child: CreateContainer(text: "5 Phases",width: 84,)),
                        ],
                      ),
                      BoldText(text: "Team Building Workshop",fontSize: 16,selectionColor: AppColors.blueColor,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Appimages.person),
                          SizedBox(width: 8,),
                          MainText(text: "Facilitator: Sarah Johnson",fontSize: 14,)
                        ],
                      ),
              
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 13),
                       child: Container(
                            height: 381 * heightScaleFactor,
                            width: 376 * widthScaleFactor,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.greyColor, width: 1.5),
                              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                     top: 17 * heightScaleFactor,
                                     right: 21 * widthScaleFactor,
                                     left: 20 * widthScaleFactor,
                              ),
                              child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldText(
                            text: "Current Phase",
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                          Row(
                            children: [
                              UseableContainer(
                                text: "Phase 2",
                                color: AppColors.orangeColor,
                                fontSize: 12 * heightScaleFactor,
                              ),
                              SizedBox(width: 10 * widthScaleFactor),
                              MainText(
                                text: "Strategy Building",
                                fontSize: 14 * heightScaleFactor,
                              )
                            ],
                          )
                        ],
                                           ),
                                         CircularPercentIndicator(
                                         radius: 40.0, // circle ka size
                                         lineWidth: 4.0, // border ki thickness
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
                              text: "Remaining",
                              fontSize: screenWidth * 0.03,
                              height: 1),
                                           ],
                                         ),
                                       ),
                                         ],
                                       ),
                                        SizedBox(height: 20 * heightScaleFactor),
                                       MainText(text: "Team collaboration and strategic planning phase",fontSize: 12,),
                                       SizedBox(height: 15 * heightScaleFactor),


Row(
  children: [
    Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.forwardColor
      ),
      child: Center(
        child: Icon(Icons.check,size: 17,color: AppColors.whiteColor,),
      ),
    ),
    SizedBox(width: 7,),
    Container(width: 100,
    height: 4,
    decoration: BoxDecoration(
      color: AppColors.forwardColor,
      borderRadius: BorderRadius.circular(20)
    ),),
    SizedBox(width: 7,),

     Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.orangeColor
      ),
      child: Center(
        child: MainText(text: "2",color: AppColors.whiteColor,fontSize: 11,)
      ),
    ),
    SizedBox(width: 7,),

       Container(width: 100,
    height: 4,
    decoration: BoxDecoration(
      color: AppColors.greyColor,
      borderRadius: BorderRadius.circular(20)
    ),),
    SizedBox(width: 7,),
     Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.greyColor
      ),
      child: Center(
        child: MainText(text: "3",color: AppColors.whiteColor,fontSize: 11,)
      ),
    ),


  ],
),
SizedBox(height: 16,),

                     CustomStratgyContainer(
                      borderColor: AppColors.selectLangugaeColor,
                      iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "Stage 2", text2: "Time Left 30 min", text3: "Active", smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,),
SizedBox(height: 20,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Expanded(
                        child: PauseContainer(
                          text: "Pause",
                          height: 45 * heightScaleFactor,
                          width: 140 * widthScaleFactor,
                          // fontSize: 14 * heightScaleFactor,
                        ),
                                           ),
                                           SizedBox(width: 20 * widthScaleFactor),
                                           Expanded(
                        child: PauseContainer(
                          text: "Next Phase",
                          icon: Icons.fast_forward,
                          color: AppColors.assignColor,
                          height: 45 * heightScaleFactor,
                          width: 140 * widthScaleFactor,
                          // fontSize: 14 * heightScaleFactor,
                        ),
                                           )
                                         ],
                                       )
                                     ],
                              ),
                            ),
                          ),
                     ),
                     Container(
                      height: 347,
width: 338,
decoration: BoxDecoration(
  border: Border.all(color: AppColors.greyColor,width: 1.5),
  borderRadius: BorderRadius.circular(24)
),

                     )
                ],
              ),
        
        
          ],
        ),
      ))),
    );
  }
}