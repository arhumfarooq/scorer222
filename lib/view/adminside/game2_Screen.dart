







































































                    

                                 







          
          

          






























































































































































                                
                             










































































  
                     
                    
                    
          
          




































    




































import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:scorer/components/adminside/custom_Container.dart';
import 'package:scorer/components/adminside/default_time_container.dart';
import 'package:scorer/components/adminside/game_logic_setup_container.dart';
import 'package:scorer/components/count_container_row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/custom_phase_Container.dart';
import 'package:scorer/widgets/custom_sloder_row.dart';
import 'package:scorer/widgets/filter_useable_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/use_able_game_row.dart';

class Game2Screen extends StatelessWidget {
  const Game2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    
    const double baseWidth = 375.0;
    final double scaleFactor = screenWidth / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50 * scaleFactor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(
                                Appimages.arrowback,
                                colorFilter: ColorFilter.mode(
                                    AppColors.forwardColor, BlendMode.srcIn),
                                width: 24 .w,
                                height: 20 .h,
                              ),
                            ),
                      RichText(
                                                     text: TextSpan(
                                                       style:  TextStyle(fontSize: 22* scaleFactor, fontWeight: FontWeight.bold),
                                                       children: [
                              TextSpan(
                                text: "create_ne".tr,  
                               
                               style: TextStyle(
                                 color: AppColors.blueColor, 
                               ),
                                                         ),
                                                         WidgetSpan(
                               alignment: PlaceholderAlignment.middle, 
                               child: Container(
                                 
                                 decoration: BoxDecoration(
                                   color: Color(0xff8DC046),
                                   borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                bottomLeft: Radius.circular(30),
                                   ),
                                 ),
                                 child:  Text(
                                   "w".tr,
                                   style: TextStyle(
                                                color: AppColors.blueColor, 
                                                fontSize: 22 * scaleFactor,
                                                fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ),
                                                         ),
                                                         WidgetSpan(
                               alignment: PlaceholderAlignment.middle, 
                               child: Container(
                                 decoration: BoxDecoration(
                                   color: AppColors.forwardColor,
                                   borderRadius: const BorderRadius.only(
                                                topRight: Radius.circular(30),
                                                bottomRight: Radius.circular(30),
                                   ),
                                 ),
                                 child: Padding(
                                   padding:  EdgeInsets.only(left: 4.0, right: 10.0),
                                   child:  Text(
                                                "game".tr,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22 * scaleFactor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                   ),
                                 ),
                               ),
                                                         ),
                                                       ],
                                                     ),
                                                   ),
                                                   
                                                   Text("")
                                                   ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: SizedBox(
                    height: 150 * scaleFactor, 
                    child: Image.asset(
                      Appimages.game,
                      fit: BoxFit.contain, 
                    ),
                                    ),
                  ),
                  SizedBox(height: 20,),
                  LoginTextfield(
                      text: "enter_game_name".tr, fontsize: 14 * scaleFactor),
                  SizedBox(height: 9 * scaleFactor),
                  LoginTextfield(
                    ishow: true,
                      text: "description".tr,
                      height: 120 * scaleFactor,
                      fontsize: 14 * scaleFactor),
                  SizedBox(height: 9 * scaleFactor),

                  BoldText(
                    text:"number_of_phases".tr,
                    fontSize: 16 * scaleFactor,
                    selectionColor: AppColors.blueColor,
                  ),
                  SizedBox(height: 14 * scaleFactor),
                  MainText(
                    text: "phase_structure_adapts".tr,
                    color: AppColors.teamColor,
                    textAlign: TextAlign.center,
                    height: 1.4,
                    fontSize: 15 * scaleFactor,
                  ),
                  SizedBox(height: 29 * scaleFactor),
                  CountContainerRow(scaleFactor: scaleFactor),
                  SizedBox(height: 20 * scaleFactor,),
                  GameLOgicSetupContainer(scaleFactor: scaleFactor),
                  SizedBox(height: 20*scaleFactor,),
                  LoginButton(
                    fontSize: 19.sp,
                    text: "add_phase".tr,
                    ishow: true,
                    icon: Icons.add,
                    imageHeight: 26 * scaleFactor,
                    imageWidth: 26 * scaleFactor,
                  ),
                  SizedBox(height: 34 * scaleFactor),
                  BoldText(
                   text: "challenge_types".tr,
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                  ),
                  SizedBox(height: 25 * scaleFactor),
                  FilterUseableContainer(
  
  isSelected: true, text: "mcq".tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: false, text: "open_ended".tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: true, text: "puzzle".tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: false, text: "simulation".tr, onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  CustomContainer(scaleFactor: scaleFactor),
                  SizedBox(height: 24 * scaleFactor),
                  DefaultTimeContainer(scaleFactor: scaleFactor),
                  SizedBox(height: 16 * scaleFactor),

                  Center(
                    child: BoldText(
                      text: "badge_labeling".tr,
                      fontSize: 16 * scaleFactor,
                      selectionColor: AppColors.blueColor,
                    ),
                  ),
                  SizedBox(height: 16 * scaleFactor),
                  Center(
                    child: Image.asset(Appimages.badge,
                        width: 129 * scaleFactor, height: 120 * scaleFactor),
                  ),
                  SizedBox(height: 11 * scaleFactor),
                  CustomPhaseContainer(
                    text1: "badge_name".tr,

                    text2:  "gold_achiever".tr,
                    fontSize: 16.sp,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 8 * scaleFactor),
                  CustomPhaseContainer(
                    text1:"required_score".tr,
                    text2: "90+",
                    fontSize: 16 .sp,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 16 * scaleFactor),
                  LoginButton(
                    text: "add_more_badges".tr,
                    height: 45 * scaleFactor,
                    color: AppColors.forwardColor,
                    radius: 12 * scaleFactor,
                    fontSize: 14.sp,
                    fontFamily: "refsan",
                  ),
                  SizedBox(height: 18 * scaleFactor),
                  BoldText(
                    text:  "additional_settings".tr,
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                  ),
                  SizedBox(height: 20 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: true, text: 'manual'.tr,
 onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(isSelected: false, text: 'ai'.tr, onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: false, text:  'mixed'.tr, onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  CustomContainer(
                    scaleFactor: scaleFactor,
                    text1: "points_per_correct_answer".tr,
                    text2: "10pts",
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 10 * scaleFactor),
                  CustomContainer(
                    scaleFactor: scaleFactor,
                    text1:  "penalty_for_wrong_answers".tr,
                    text2: "-5pts",
                    color: AppColors.redColor,
                  ),
                  
                  SizedBox(height: 16 * scaleFactor),

                  GameRow(
                      screenHeight: screenHeight, screenWidth: screenWidth, scaleFactor: scaleFactor),
                  SizedBox(height: 10 * scaleFactor),
                  GameRow(
                      text: "allow_team_mode".tr,
                      screenHeight: screenHeight,
                      screenWidth: screenWidth, scaleFactor: scaleFactor),
                  SizedBox(height: 10 * scaleFactor),
                  GameRow(
                      text: "auto_start_sessions".tr,
                      screenHeight: screenHeight,
                      screenWidth: screenWidth, scaleFactor: scaleFactor),
                  SizedBox(height: 43 * scaleFactor),
                  LoginButton(
                    fontSize: 20.sp,
                      text: "save".tr,
                      ishow: true,
                      image: Appimages.save,
                      ),
                  SizedBox(height: 10 * scaleFactor),
                  LoginButton(
                    fontSize: 20.sp
                    ,
                      text: "cancel".tr,
                      color: AppColors.forwardColor,
                      ),
                  SizedBox(height: 43 * scaleFactor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

