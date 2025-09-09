import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/players_container.dart';

class PlayerDashboardScreen2 extends StatelessWidget {
  const PlayerDashboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
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
                SizedBox(height: 30,),
                        Container(
                          width: 330,
                          height: 64,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.forwardColor,width: 2),
                            borderRadius: BorderRadius.circular(60),
                            color: AppColors.forwardColor.withOpacity(0.1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            BoldText(text: "Team Code",fontSize: 16,selectionColor: AppColors.blueColor,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainText(text: "ABC123",color: AppColors.forwardColor,fontSize: 24,fontFamily: "gotham",),
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.forwardColor
                                  ),
                                  child: Center(child: SvgPicture.asset(Appimages.copy,color: AppColors.whiteColor,height: 16,width: 16,)))
                              ],
                            )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: AppColors.brownColor2,
                                shape: BoxShape.circle
                              ),
        
                            ),
                            SizedBox(width: 8,),
                            MainText(text: "Waiting for facilitator to start the session...",fontSize: 12,)
                          ],
                        ),
                          PlayersContainers(
                              color: AppColors.forwardColor ,
                      text3: "Joined.",
                    text1: "1",
                    text2: "You",
                    image: Appimages.play1),
                SizedBox(height: 15,),
                PlayersContainers(
                      color: AppColors.forwardColor ,
                      text3: "Joined.",
                      text1: "2",
                      text2: "Sarah J.",
                      image: Appimages.play2),
                SizedBox(height: 15,),
              
                // SizedBox(height: verticalSpacing * 0.7),
                PlayersContainers(
                    color: AppColors.forwardColor ,
                      text3: "Joined.",
                    text1: "3",
                    text2: "Mike C.",
                    image: Appimages.play3),
                // SizedBox(height: verticalSpacing * 0.7),
                SizedBox(height: 15,),
        
                PlayersContainers(
                    color: AppColors.forwardColor ,
                      text3: "Joined.",
                    text1: "4",
                    text2: "David B.",
                    image: Appimages.play4),
                // SizedBox(height: verticalSpacing * 0.7),
                SizedBox(height: 15,),
        
                PlayersContainers(
                    color: AppColors.forwardColor ,
                      text3: "Joined.",
                    text1: "5",
                    text2: "Lisa G.",
                    image: Appimages.play5),
                    SizedBox(height: 15,),
                  Container(
  width: 338,
  height: 113,
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.greyColor, width: 1.5),
    borderRadius: BorderRadius.circular(24),
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 29),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SvgPicture.asset(Appimages.bulb),
        const SizedBox(width: 10), // thoda gap icon aur text ke beech
        Expanded( // 👈 yeh add kiya
          child: MainText(
            height: 1.6,
            text:
                "Make sure your device is charged and you have a stable internet connection for the best experience.",
            fontSize: 13,
            textAlign: TextAlign.start, // ya center, jo design chahiye
          ),
        ),
      ],
    ),
  ),
),

SizedBox(height: 15,),
LoginButton(text: "Leave Session",ishow: true,image: Appimages.leave,color: AppColors.redColor,),
SizedBox(height: 60,)

        
                  ],
                ),
              ),
        
        
          ],
        ),
      ))),
    );
  }
}