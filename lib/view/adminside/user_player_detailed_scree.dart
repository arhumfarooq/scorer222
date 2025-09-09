import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_dashboard_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class UserPlayerDetailedScree extends StatelessWidget {
  const UserPlayerDetailedScree({super.key});

  @override
  Widget build(BuildContext context) {
     final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;
    final activeInactiveBoxHeight = screenHeight * 0.14;


    // A base height and width to scale from, e.g., a common phone (iPhone 11)
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;
    return Scaffold(
      body: GradientBackground(child: SafeArea(child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
          SizedBox(
            height: 135, // 👈 image ki height ke barabar
            child: Stack(
              alignment: Alignment.center,
              children: [
          // Arrow thoda upar left
          Positioned(
            left: 0,
            top: 20, // 👈 is value ko adjust karke arrow ka vertical position control karo
            child: SvgPicture.asset(
              Appimages.arrowback,
              colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
              width: 24 * widthScaleFactor,
              height: 20 * heightScaleFactor,
            ),
          ),
          
          // Player image center
          Center(
            child: Image.asset(
              Appimages.player2,
              width: 101,
              height: 135,
              fit: BoxFit.contain,
            ),
          ),
              ],
            ),
          ),
          BoldText(text: "John Smith",fontSize: 16,selectionColor: AppColors.blueColor,),
          MainText(text: "john.smith@company.com",fontSize: 14,height: 1.4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainText(text: "Last Login",fontSize: 14,color: AppColors.redColor,),
              SizedBox(width: 3,),
              Container(width: 9,height: 9,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.redColor
              ),
              ),
              SizedBox(width: 3,),
          
               MainText(text: "Jan 15, 2025",fontSize: 14,color: AppColors.redColor,),
              // SizedBox(width: 3,),
            ],
          ),
          UseableContainer(text: "Active",color: AppColors.forwardColor,),
          SizedBox(height: 24,),
          
          Row(
            children: [
           Expanded(
                        child: Container(
                          height: activeInactiveBoxHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyColor, width: 1.7),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BoldText(
                                text: "12",
                                selectionColor: AppColors.redColor,
                                fontSize: screenWidth * 0.06,
                              ),
                              BoldText(
                                text: "Sessions\n Played",
                                fontSize: screenWidth * 0.04,
                                selectionColor: AppColors.blueColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                       Expanded(
                        child: Container(
                          height: activeInactiveBoxHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyColor, width: 1.7),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BoldText(
                                text: "8.5",
                                selectionColor: AppColors.forwardColor,
                                fontSize: screenWidth * 0.06,
                              ),
                              BoldText(
                                text: "Average\n  Score",
                                fontSize: screenWidth * 0.04,
                                selectionColor: AppColors.blueColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                       Expanded(
                        child: Container(
                          height: activeInactiveBoxHeight,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyColor, width: 1.7),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BoldText(
                                text: "03",
                                selectionColor: AppColors.redColor,
                                fontSize: screenWidth * 0.06,
                              ),
                              BoldText(
                                text: "Total\nMVP",
                                fontSize: screenWidth * 0.04,
                                selectionColor: AppColors.blueColor,
                              ),
                            ],
                          ),
                        ),
                      ),
            ],
          ),
          SizedBox(height: 33,),
          BoldText(text: "Account Information",selectionColor: AppColors.blueColor,fontSize: 16,),
          SizedBox(height: 20,),
          Container(
            height: 177,
            width: 376,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.greyColor,width: 1.5)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainText(
                            text: "Email",
                            fontSize: 14 * heightScaleFactor,
                          ),
                          BoldText(
                            text: "john.smith@company.com",
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                        
                        ],
                      ),
                      SizedBox(height: 10 * heightScaleFactor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainText(
                            text: "Phone",
                            fontSize: 14 * heightScaleFactor,
                          ),
                          BoldText(
                            text: "+1 (555) 987-6543",
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                         
                        ],
                      ),
                      SizedBox(height: 10 * heightScaleFactor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainText(
                            text: "Join Date",
                            fontSize: 14 * heightScaleFactor,
                          ),
                          BoldText(
                            text: "September 8, 2024",
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 10 * heightScaleFactor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainText(
                            text: "Player Level",
                            fontSize: 14 * heightScaleFactor,
                          ),
                        CreateContainer(text: "Level 3",
                        top: 7,
                        right: -19,
                        )
                        ],
                      ),
          
                    
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          BoldText(text: "Recent Sessionsa",selectionColor: AppColors.blueColor,fontSize: 16,),
          // Column ke andar jahan tum last me container use kar rahe ho
CustomDashboardContainer(
  horizontal: 0,
  mainWidth: 376,
  right: -20,
  mainHeight: 222,
  color2: AppColors.forwardColor,
  color1: AppColors.orangeColor,
  heading: "Team Building Workshop",
  text1: "Phase 2",
  height: 9,
  text2: "Active",
  text6: "2nd Position",
  smallImage: Appimages.Crown,
  description:
      "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
  icon1: Icons.play_arrow,
  text5: "12 Players",
  isshow: true,
),
SizedBox(height: 12,),
CustomDashboardContainer(
  horizontal: 0,
  mainWidth: 376,
  right: -20,
  mainHeight: 222,
  color2: AppColors.yellowColor,
  color1: AppColors.redColor,
  heading: "Team Building Workshop",
  text1: "Phase 3",
  height: 9,
  text2: "Paused",
  text6: "3rd Position",
  smallImage: Appimages.Crown,
  description:
      "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
  icon1: Icons.play_arrow,
  text5: "12 Players",
  isshow: true,
),
SizedBox(height: 40,),
LoginButton(text: "Delete Player",image: Appimages.delete,ishow: true,color: AppColors.redColor,),
SizedBox(height: 13,),
LoginButton(text: "Edit Player",icon: Icons.edit,ishow: true,color: AppColors.forwardColor,),
SizedBox(height: 42,)



          
            ],
          ),
        ),
      ))),
    );
  }
}