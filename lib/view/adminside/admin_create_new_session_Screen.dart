// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:scorer/components/players_Row.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// // import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_phase_Container.dart';
// import 'package:scorer/widgets/filter_useable_container.dart';
// import 'package:scorer/widgets/game_Select_useable_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/players_container.dart';
// import 'package:scorer/widgets/session_useable_row.dart';
// import 'package:scorer/widgets/useable_container.dart';
// class AdminCreateNewSessionScreen extends StatelessWidget {
//   final bool isSelected;
//   const AdminCreateNewSessionScreen({super.key, this.isSelected = true});

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;

//     // Define a base width for scaling, assuming a typical phone screen width of 375.
//     const double baseWidth = 375.0;
//     final double scaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 100 * scaleFactor,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: 28 * scaleFactor,
//                         left: 150 * scaleFactor,
//                         child: Container(
//                           width: 100 * scaleFactor,
//                           height: 37 * scaleFactor,
//                           decoration: BoxDecoration(
//                             color: AppColors.forwardColor,
//                             borderRadius: BorderRadius.circular(80 * scaleFactor),
//                           ),
//                           child: Center(
//                             child: BoldText(
//                               text: "Session",
//                               fontSize: 22 * scaleFactor,
//                               selectionColor: AppColors.whiteColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 30 * scaleFactor),
//                             child: BoldText(
//                               text: "Create New",
//                               selectionColor: AppColors.blueColor,
//                               fontSize: 24 * scaleFactor,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(top: 10 * scaleFactor, right: 10 * scaleFactor),
//                             child: Image.asset(
//                               Appimages.house1,
//                               height: 85 * scaleFactor,
//                               width: 100 * scaleFactor,
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
//                   child: Column(
//                     children: [
//                       Image.asset(Appimages.game, width: 300 * scaleFactor),
//                       SizedBox(height: 40 * scaleFactor),
//                       Container(
//                         height: 74 * scaleFactor,
//                         width: 337 * scaleFactor,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(24 * scaleFactor),
//                           border: Border.all(
//                             color: AppColors.selectLangugaeColor.withOpacity(0.1),
//                             width: 2 * scaleFactor,
//                           ),
//                         ),
//                         child: Center(
//                           child: BoldText(
//                             text: "Enter Session Name",
//                             fontSize: 22 * scaleFactor,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 50 * scaleFactor),
//                       BoldText(
//                         text: "Select Game Format",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16 * scaleFactor,
//                       ),
//                       SizedBox(height: 30 * scaleFactor),
//                       GameSelectUseableContainer(
//                         text1: "Odyssée des OKR",
//                         text2: "Strategic goal-setting workshop",
//                         isSelected: isSelected,
//                       ),
//                       SizedBox(height: 10 * scaleFactor),
//                       GameSelectUseableContainer(
//                         text1: "FeedLoop",
//                         text2: "Feedback and collaboration game",
//                         isSelected: false,
//                       ),
//                       SizedBox(height: 10 * scaleFactor),
//                       GameSelectUseableContainer(
//                         text1: "Innovation Challenge",
//                         text2: "Creative problem-solving workshop",
//                         isSelected: isSelected,
//                       ),
//                       SizedBox(height: 31 * scaleFactor),
//                       BoldText(
//                         text: "Number of Phases",
//                         fontSize: 16 * scaleFactor,
//                         selectionColor: AppColors.blueColor,
//                       ),
//                       SizedBox(height: 14 * scaleFactor),
//                       MainText(
//                         text: "Phase structure adapts based on selected game format",
//                         color: AppColors.teamColor,
//                         textAlign: TextAlign.center,
//                         height: 1.4,
//                         fontSize: 15 * scaleFactor,
//                       ),
//                       SizedBox(height: 29 * scaleFactor),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               height: 116 * scaleFactor,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: AppColors.minus2, width: 1.5 * scaleFactor),
//                                 borderRadius: BorderRadius.circular(24 * scaleFactor),
//                               ),
//                               child: Center(
//                                 child: Container(
//                                   width: 36.5 * scaleFactor,
//                                   height: 36.5 * scaleFactor,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10 * scaleFactor),
//                                     color: AppColors.minus,
//                                   ),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.remove,
//                                       color: AppColors.whiteColor,
//                                       size: 24 * scaleFactor,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: SizedBox(
//                               height: 116 * scaleFactor,
//                               child: Center(
//                                 child: BoldText(
//                                   text: "03",
//                                   fontSize: 40 * scaleFactor,
//                                   selectionColor: AppColors.blueColor,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Container(
//                               height: 116 * scaleFactor,
//                               decoration: BoxDecoration(
//                                 color: AppColors.forwardColor,
//                                 borderRadius: BorderRadius.circular(24 * scaleFactor),
//                               ),
//                               child: Center(
//                                 child: Container(
//                                   width: 36.5 * scaleFactor,
//                                   height: 36.5 * scaleFactor,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10 * scaleFactor),
//                                     color: AppColors.whiteColor,
//                                   ),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.add,
//                                       color: AppColors.forwardColor,
//                                       size: 24 * scaleFactor,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 30 * scaleFactor),
//                       BoldText(
//                         text: "Enter Details of phase 1",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16 * scaleFactor,
//                       ),
//                       SizedBox(height: 25 * scaleFactor),
//                       CustomPhaseContainer(text1: "Name of Phase 1", text2: "Strategy"),
//                       SizedBox(height: 9 * scaleFactor),
//                       CustomPhaseContainer(text1: "No of Stages", text2: "03"),
//                       SizedBox(height: 9 * scaleFactor),
//                       CustomPhaseContainer(text1: "Duration", text2: "15 min"),
//                       SizedBox(height: 30 * scaleFactor),
//                       BoldText(
//                         text: "Phase 1 Stages",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16 * scaleFactor,
//                       ),
//                       SizedBox(height: 25 * scaleFactor),
//                       FilterUseableContainer(isSelected: true, text: "MCQ", onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: false, text: "Open-ended", onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: true, text: "Puzzle", onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: false, text: "Simulation", onTap: () {}),
//                       SizedBox(height: 24 * scaleFactor),
//                       LoginButton(
//                         text: "Move to phase 2",
//                         height: 45 * scaleFactor,
//                         color: AppColors.forwardColor,
//                         radius: 12 * scaleFactor,
//                         fontSize: 14 * scaleFactor,
//                         fontFamily: "refsan",
//                       ),
//                       SizedBox(height: 50 * scaleFactor),
//                       BoldText(
//                         text: "Player Capacity",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16 * scaleFactor,
//                       ),
//                       SizedBox(height: 30 * scaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             children: [
//                               Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
//                               SizedBox(height: 10 * scaleFactor),
//                               BoldText(text: "5-10", fontSize: 16 * scaleFactor, selectionColor: AppColors.blueColor),
//                               MainText(text: "Small", fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.teamColor)
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
//                               SizedBox(height: 10 * scaleFactor),
//                               BoldText(text: "10-20", fontSize: 16 * scaleFactor, selectionColor: AppColors.forwardColor),
//                               MainText(text: "Medium", fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.forwardColor)
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
//                               SizedBox(height: 10 * scaleFactor),
//                               BoldText(text: "20-50", fontSize: 16 * scaleFactor, selectionColor: AppColors.blueColor),
//                               MainText(text: "Large", fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.teamColor)
//                             ],
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 31 * scaleFactor),
//                       Container(
//                         height: 50 * scaleFactor,
//                         width: 334 * scaleFactor,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12 * scaleFactor),
//                           border: Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
//                           child: TextFormField(
//                             cursorColor: AppColors.languageTextColor,
//                             decoration: InputDecoration(
//                               hintText: "Or enter custom number",
//                               focusedBorder: InputBorder.none,
//                               enabledBorder: InputBorder.none,
//                               hintStyle: TextStyle(color: Colors.grey, fontSize: 16 * scaleFactor),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12 * scaleFactor),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 40 * scaleFactor),
//                       BoldText(
//                         text: "Badge Labeling",
//                         fontSize: 16 * scaleFactor,
//                         selectionColor: AppColors.blueColor,
//                       ),
//                       SizedBox(height: 16 * scaleFactor),
//                       Image.asset(Appimages.badge, width: 129 * scaleFactor, height: 120 * scaleFactor),
//                       SizedBox(height: 11 * scaleFactor),
//                       CustomPhaseContainer(
//                         text1: "Badge Name",
//                         text2: "Gold Achiever",
//                         fontSize: 16 * scaleFactor,
//                         color: AppColors.forwardColor,
//                       ),
//                       SizedBox(height: 8 * scaleFactor),
//                       CustomPhaseContainer(
//                         text1: "Required Score",
//                         text2: "90+",
//                         fontSize: 16 * scaleFactor,
//                         color: AppColors.forwardColor,
//                       ),
//                       SizedBox(height: 16 * scaleFactor),
//                       LoginButton(
//                         text: "Add More Badges",
//                         height: 45 * scaleFactor,
//                         color: AppColors.forwardColor,
//                         radius: 12 * scaleFactor,
//                         fontSize: 14 * scaleFactor,
//                         fontFamily: "refsan",
//                       ),
//                       SizedBox(height: 18 * scaleFactor),
//                       Container(
//                         width: 337 * scaleFactor,
//                         height: 76 * scaleFactor,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
//                           borderRadius: BorderRadius.circular(24 * scaleFactor),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 3 * scaleFactor),
//                           child: Row(
//                             children: [
//                               Row(
//                                 children: [
//                                   Image.asset(Appimages.ai2, width: 45 * scaleFactor, height: 40 * scaleFactor),
//                                   SizedBox(width: 2 * scaleFactor),
//                                   Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       MainText(text: "AI Scoring", fontSize: 14 * scaleFactor),
//                                       MainText(text: "Enable automatic scoring using AI", fontSize: 11 * scaleFactor, color: AppColors.teamColor, height: 1.2),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               Expanded(
//                                 child: FlutterSwitch(
//                                   value: true,
//                                   onToggle: (val) {},
//                                   height: 26 * scaleFactor,
//                                   width: 40 * scaleFactor,
//                                   activeColor: AppColors.forwardColor,
//                                   inactiveColor: AppColors.forwardColor,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 30 * scaleFactor),
//                       BoldText(
//                         text: "Additional Settings",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16 * scaleFactor,
//                       ),
//                       SizedBox(height: 20 * scaleFactor),
//                       FilterUseableContainer(isSelected: true, text: 'Allow late joiners', onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: false, text: 'Send email invitations', onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: false, text: 'Record session for review', onTap: () {}),
//                       SizedBox(height: 30 * scaleFactor),
//                       LoginButton(
//                         text: "Start immediately",
//                         ishow: true,
//                         icon: Icons.play_arrow_rounded,
//                         imageHeight: 30 * scaleFactor,
//                         imageWidth: 30 * scaleFactor,
//                       ),
//                       SizedBox(height: 13 * scaleFactor),
//                       LoginButton(
//                         text: "Schedule for later",
//                         image: Appimages.calender,
//                         ishow: true,
//                         color: AppColors.forwardColor,
//                       ),
//                       SizedBox(height: 50 * scaleFactor), // Add some bottom padding
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/custom_phase_Container.dart';
import 'package:scorer/widgets/filter_useable_container.dart';
import 'package:scorer/widgets/game_Select_useable_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';

class AdminCreateNewSessionScreen extends StatelessWidget {
  final bool isSelected;
  const AdminCreateNewSessionScreen({super.key, this.isSelected = true});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions to use for adaptive scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    const double baseWidth = 375.0; // Base width for design
    final double scaleFactor = screenWidth / baseWidth;

    return GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor), // Apply horizontal padding once
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children horizontally
                children: [
                  // Header section
                  SizedBox(
                    height: 100 * scaleFactor,
                    child: Stack(
                      children: [
                        // Positioned(
                        //   top: 28,
                        //   left: MediaQuery.of(context).size.width>380?185: 110 ,
                        //   child: Container(
                        //     width: 100 ,
                        //     height: 37 ,
                        //     decoration: BoxDecoration(
                        //       color: AppColors.forwardColor,
                        //       borderRadius: BorderRadius.circular(80 * scaleFactor),
                        //     ),
                        //     child: Center(
                        //       child: BoldText(
                        //         text: "Session",
                        //         fontSize: 22 * scaleFactor,
                        //         selectionColor: AppColors.whiteColor,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container(
                              
                            //   child: Stack(
                            //     clipBehavior: Clip.none,
                            //     children: [
                            //       Positioned(
                            //         bottom: 1,
                            //         top: 2,
                            //         right: -90,
                            //         child: Container(
                            //                                     width: 90 * scaleFactor,
                            //                                     height: 37 * scaleFactor,
                            //                                     decoration: BoxDecoration(
                            //                                       color: AppColors.forwardColor,
                            //                                       borderRadius: BorderRadius.circular(80 * scaleFactor),
                            //                                     ),
                            //                                     child: Center(
                            //                                       child: BoldText(
                            //                                         text: "Session",
                            //                                         fontSize: 18 * scaleFactor,
                            //                                         selectionColor: AppColors.whiteColor,
                            //                                       ),
                            //                                     ),
                            //                                   ),
                            //       ),
                            //       Row(
                            //         children: [
                            //           BoldText(
                            //         text: "Create New",
                            //         selectionColor: AppColors.blueColor,
                            //         fontSize: 24 * scaleFactor,
                            //       ),
                            //         ],
                            //       ),
                            //     ],
                            //   )
                            // ),
                            RichText(
      text: TextSpan(
        style:  TextStyle(fontSize: 22* scaleFactor, fontWeight: FontWeight.bold),
        children: [
           TextSpan(
            text: "create_ne".tr,
            
            style: TextStyle(
              color: AppColors.blueColor, // Dark Blue
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle, // aligns inline
            child: Container(
              // padding: const EdgeInsets.symmetric( vertical: 4),
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
            alignment: PlaceholderAlignment.middle, // aligns inline
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
                  "session".tr,
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
                            Padding(
                              padding: EdgeInsets.only(top: 10 * scaleFactor),
                              child: Image.asset(
                                Appimages.house1,
                                height: 85 * scaleFactor,
                                width: 100 * scaleFactor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Main content
                  SizedBox(
                  height: 150 * scaleFactor, // set height you want
                  child: Image.asset(
                    Appimages.game,
                    fit: BoxFit.contain, // ensures it fits without stretching
                  ),
                ),
                  SizedBox(height: 20 * scaleFactor),
                  // Container(
                  //   height: 74 * scaleFactor,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(24 * scaleFactor),
                  //     border: Border.all(
                  //       color: AppColors.selectLangugaeColor.withOpacity(0.1),
                  //       width: 2 * scaleFactor,
                  //     ),
                  //   ),
                  //   child: Center(
                  //     child: BoldText(
                  //       text: "Enter Session Name",
                  //       fontSize: 22 * scaleFactor,
                  //     ),
                  //   ),
                  // ),
                  TextFormField(
                    textAlign: TextAlign.center, 
  style: TextStyle(
    fontSize: 22 * scaleFactor,
    fontWeight: FontWeight.w600,
  ),
  decoration: InputDecoration(
    hintText: "enter_session_name".tr,
    hintStyle: TextStyle(
      // fontSize: 20 * scaleFactor,
fontSize:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 16:22,

      fontWeight: FontWeight.w600,
      color: AppColors.languageTextColor
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 20 * scaleFactor,
      horizontal: 16 * scaleFactor,
    ),
    border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(24 * scaleFactor),
      borderSide: BorderSide(
        color: AppColors.assignColor,
        width: 2 * scaleFactor,
      ),
    ) ,
    // enabledBrder: InputBorder.none
    
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24 * scaleFactor),
      borderSide: BorderSide(
        color: AppColors.assignColor,
        width: 2 * scaleFactor,
      ),
    ) ,
  ),
)
,
                  SizedBox(height: 50 * scaleFactor),
                  BoldText(
  text:   "select_game_format".tr, 
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30 * scaleFactor),
                  GameSelectUseableContainer(
fontSize:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:13,

                    text1: "odyssee_des_okr".tr,
                    
  text2: "strategic_goal_workshop".tr,
                    isSelected: isSelected,
                  ),
                  SizedBox(height: 10 * scaleFactor),
                  GameSelectUseableContainer(
fontSize:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:13,

                      text1: "feedloop".tr,
  text2: "feedback_collab_game".tr,
                    isSelected: false,
                  ),
                  SizedBox(height: 10 * scaleFactor),
                  GameSelectUseableContainer(
fontSize:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:13,

                     text1: "innovation_challenge".tr,
  text2: "creative_problem_workshop".tr,
                    isSelected: isSelected,
                  ),
                  SizedBox(height: 31 * scaleFactor),
                  BoldText(
                    text: "number_of_phases".tr,
                    fontSize: 16 * scaleFactor,
                    selectionColor: AppColors.blueColor,
                    textAlign: TextAlign.center,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          height: 116 * scaleFactor,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.minus2, width: 1.5 * scaleFactor),
                            borderRadius: BorderRadius.circular(24 * scaleFactor),
                          ),
                          child: Center(
                            child: Container(
                              width: 36.5 * scaleFactor,
                              height: 36.5 * scaleFactor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * scaleFactor),
                                color: AppColors.minus,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.whiteColor,
                                  size: 24 * scaleFactor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10 * scaleFactor),
                      Expanded(
                        child: SizedBox(
                          height: 116 * scaleFactor,
                          child: Center(
                            child: BoldText(
                              text: "03",
                              fontSize: 40 * scaleFactor,
                              selectionColor: AppColors.blueColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10 * scaleFactor),
                      Flexible(
                        child: Container(
                          height: 116 * scaleFactor,
                          decoration: BoxDecoration(
                            color: AppColors.forwardColor,
                            borderRadius: BorderRadius.circular(24 * scaleFactor),
                          ),
                          child: Center(
                            child: Container(
                              width: 36.5 * scaleFactor,
                              height: 36.5 * scaleFactor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * scaleFactor),
                                color: AppColors.whiteColor,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.forwardColor,
                                  size: 24 * scaleFactor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30 * scaleFactor),
                  BoldText(
                     text: "enter_details_phase_1".tr,
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25 * scaleFactor),
CustomPhaseContainer(text1: "name_phase_1".tr, text2: "Strategy"),
                  SizedBox(height: 9 * scaleFactor),
CustomPhaseContainer(text1: "no_of_stages".tr, text2: "03"),
                  SizedBox(height: 9 * scaleFactor),
                  CustomPhaseContainer(text1: "Duration", text2: "15 min"),
                  SizedBox(height: 30 * scaleFactor),
                  BoldText(
                    text: "phase_1_stages".tr,
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                    textAlign: TextAlign.center,
                  ),
                                     SizedBox(height: 25 * scaleFactor),
FilterUseableContainer(isSelected: true, text: "mcq".tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: false, text: "open_ended".tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: true, text: "puzzle".tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: false, text: "simulation".tr, onTap: () {}),
               SizedBox(height: 24 * scaleFactor),
                  LoginButton(
                   text: "move_to_phase2".tr,
                    height: 45 * scaleFactor,
                    color: AppColors.forwardColor,
                    radius: 12 * scaleFactor,
                    fontSize: 14 * scaleFactor,
                    fontFamily: "refsan",
                  ),
                  SizedBox(height: 50 * scaleFactor),
                  BoldText(
                      text: "player_capacity".tr,
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30 * scaleFactor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
                            SizedBox(height: 10 * scaleFactor),
                            BoldText(text: "5-10", fontSize: 16 * scaleFactor, selectionColor: AppColors.blueColor),
                            MainText(text: "small".tr,fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.teamColor)
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
                            SizedBox(height: 10 * scaleFactor),
                            BoldText(text: "10-20", fontSize: 16 * scaleFactor, selectionColor: AppColors.forwardColor),
                            MainText(text: "medium".tr,  fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.forwardColor)
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
                            SizedBox(height: 10 * scaleFactor),
                            BoldText(text: "20-50", fontSize: 16 * scaleFactor, selectionColor: AppColors.blueColor),
                            MainText(text: "large".tr, fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.teamColor)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 31 * scaleFactor),
                  Container(
                    height: 50 * scaleFactor,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * scaleFactor),
                      border: Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
                      child: TextFormField(
                        cursorColor: AppColors.languageTextColor,
                        decoration: InputDecoration(
                           hintText: "enter_custom_number".tr,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 16 * scaleFactor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12 * scaleFactor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40 * scaleFactor),
                  BoldText(
                  text: "badge_labeling".tr,
                    fontSize: 16 * scaleFactor,
                    selectionColor: AppColors.blueColor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16 * scaleFactor),
                  Image.asset(Appimages.badge, width: 129 * scaleFactor, height: 120 * scaleFactor),
                  SizedBox(height: 11 * scaleFactor),
                  CustomPhaseContainer(
                    text1: "badge_name".tr,
  text2: "gold_achiever".tr,
                    fontSize: 16 * scaleFactor,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 8 * scaleFactor),
                  CustomPhaseContainer(
                    text1:"required_score".tr,
                    text2: "90+",
                    fontSize: 16 * scaleFactor,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 16 * scaleFactor),
                  LoginButton(
                    text:  "add_more_badges".tr,
                    height: 45 * scaleFactor,
                    color: AppColors.forwardColor,
                    radius: 12 * scaleFactor,
                    fontSize: 14 * scaleFactor,
                    fontFamily: "refsan",
                  ),
                  SizedBox(height: 18 * scaleFactor),
                  Container(
                    height: 76 * scaleFactor,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
                      borderRadius: BorderRadius.circular(24 * scaleFactor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3 * scaleFactor),
                      child: Row(
                        children: [
                          Image.asset(Appimages.ai2, width: 45 * scaleFactor, height: 40 * scaleFactor),
                          SizedBox(width: 2 * scaleFactor),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                    MainText(text: "ai_scoring".tr, fontSize: 14 * scaleFactor),

                              // MainText(text: "AI Scoring", fontSize: 14 * scaleFactor),
MainText(text: "enable_ai_scoring".tr, fontSize: 11 * scaleFactor, color: AppColors.teamColor, height: 1.2),
                        
                              // MainText(text: "Enable automatic scoring using AI", fontSize: 11 * scaleFactor, color: AppColors.teamColor, height: 1.2),
                            ],
                          ),
                          const Spacer(), // Use Spacer to push the switch to the end
                          FlutterSwitch(
                            value: true,
                            onToggle: (val) {},
                            height: 26 * scaleFactor,
                            width: 40 * scaleFactor,
                            activeColor: AppColors.forwardColor,
                            inactiveColor: AppColors.forwardColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30 * scaleFactor),
                  BoldText(
  text: "additional_settings".tr,
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                    textAlign: TextAlign.center,
                  ),
               SizedBox(height: 20 * scaleFactor),
FilterUseableContainer(isSelected: true, text: 'allow_late_joiners'.tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
FilterUseableContainer(isSelected: false, text: 'send_email_invitations'.tr, onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
                     FilterUseableContainer(isSelected: false, text: 'record_session_review'.tr, onTap: () {}),
                      SizedBox(height: 30 * scaleFactor),                  SizedBox(height: 30 * scaleFactor),
                  LoginButton(
                                  fontSize: 19,

                      text: "start_immediately".tr,
                    ishow: true,
                    icon: Icons.play_arrow_rounded,
                    imageHeight: 30 * scaleFactor,
                    imageWidth: 30 * scaleFactor,
                  ),
                  SizedBox(height: 13 * scaleFactor),
                  LoginButton(
                    fontSize: 19,

                      text:      "schedule_for_later".tr, 
              
                    image: Appimages.calender,
                    ishow: true,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 50 * scaleFactor),
                ],
              ),
            ),
          ),
        ),
      );
  }
}