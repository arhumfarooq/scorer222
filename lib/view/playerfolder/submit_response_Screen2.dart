// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_sloder_row.dart';
// import 'package:scorer/widgets/custom_stratgy_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';
// import 'package:scorer/widgets/useable_textrow.dart';

// class SubmitResponseScreen2 extends StatelessWidget {
//   const SubmitResponseScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
//   child: Column(
//     children: [
//         Padding(
//                           padding: const EdgeInsets.only(left: 30,right: 10),
//                           child: Row(
//                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Image.asset(Appimages.player2,height: 63,width: 50, ),
//                               Expanded(child: Center(child: BoldText(text: "Team Alpha",fontSize: 22,))),
//                               Image.asset(Appimages.house1,height: 63,width: 80 ),
                    
                            
                                
//                             ],
//                           ),
//                         ),
              
//                           Stack(
                              
//                                 clipBehavior: Clip.none,
//                                     children: [
//                                      SvgPicture.asset(Appimages.Crown,height: 162,width: 162,),
//                                       // Image.asset(Appimages.ok,height: 310,width: 310,),
//                                        Positioned(
//                                         bottom: -10,
//                                         right:-20,
//                                         child: CreateContainer(text: "5 Phases",width: 84,)),
//                                     ],
//                                   ),
//                                   SizedBox(height: 30,),
//                                   BoldText(text: "Response Submitted!",fontSize: 16,selectionColor: AppColors.blueColor,),
//   Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 30),
//     child: Container(
//       height: 510,
//       width: 330,
//       decoration: BoxDecoration(
//         border: Border.all(color: AppColors.greyColor,width: 1.5),
//         borderRadius: BorderRadius.circular(24)
//       ),
//       child: Stack(
    
//             clipBehavior: Clip.none,
    
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               children: [
//                 SizedBox(height: 27,),
//                                         BoldText(text: "AI Analysis & Suggestion",fontSize: 16,selectionColor: AppColors.blueColor,),
          
//                                         SizedBox(height: 28,),
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//           Positioned(
//             right: -10,
//             top: -10,
//             child: SvgPicture.asset(Appimages.arrowdown)),
//           Container(
//             child: Image.asset(Appimages.ai2),
//           )
//             ],
//           ),
//                                         Row(
//                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             BoldText(text: "Relevance Score",fontSize: 16,selectionColor: AppColors.blueColor,),
//                                              UseableContainer(
//                                   text: "78",
//                                   fontFamily: "giory",
//                                   fontSize: 14 ,
//                                   width: 37 ,
//                                   height: 28 ,
//                                   color: AppColors.orangeColor,
//                                 )
//                                           ],
//                                         ),
//                                         MainText(text: "Response directly addresses the prompt with clear objective and actionable strategies.",fontSize: 14,height: 1.3,)
//           ,SizedBox(height: 10,)
          
//           ,Divider(color: AppColors.greyColor,thickness: 1,),
//           SizedBox(height: 20,),
//            Row(
//                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             BoldText(text: "Quality Assessment",fontSize: 16,selectionColor: AppColors.blueColor,),
//                                              UseableContainer(
//                                   text: "High",
//                                   // fontFamily: "giory",
//                                   fontSize: 12 ,
//                                   width: 46 ,
//                                   height: 28 ,
//                                   color: AppColors.forwardColor,
//                                 )
//                                           ],
//                                         ),
//                                         SizedBox(height: 10,),
//                                         MainText(text: "Well-structured response with specific metrics and measurable outcomes.",fontSize: 14,height: 1.3,)
          
          
                
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: -70,
//             left: 70,
//             child: Container(
//                 height: 181 , // Use width scale for a square container
//                 width: 181 ,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                     colors: [
//                       AppColors.forwardColor,
//                       Colors.grey.shade200,
//                     ],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                 ),
//                 child: Container(
//                   margin: EdgeInsets.all(3 ),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: const Color.fromARGB(255, 202, 202, 202),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       BoldText(
//                         text: "89/100",
//                         fontSize: 38 ,
//                         selectionColor: AppColors.createBorderColor,
//                       ),
//                       SizedBox(height: 4 ),
//                       BoldText(
//                         text: "Final Score",
//                         fontSize: 16 ,
//                         selectionColor: AppColors.blueColor,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//           ),
//         ],
//       ),
//     ),
//   ),
//   SizedBox(height: 100,),
//    Padding(
//     //  padding: const EdgeInsets.all(8.0),
//     padding: const EdgeInsets.symmetric(horizontal: 30),

//      child: Container(
//                           height: 236 ,
//                           width: 336 ,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: AppColors.greyColor, width: 1.7 ),
//                             borderRadius: BorderRadius.circular(24 ),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.only(left: 17 , right: 15 ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(height: 20 ),
//                                 BoldText(
//                                   text: "Scoring Breakdown",
//                                   selectionColor: AppColors.blueColor,
//                                   fontSize: 16 ,
//                                 ),
//                                 // SizedBox(height: 31 * heightScaleFactor),
//                                 SizedBox(height: 5 ),
     
//                                 CustomSloderRow(text: "Clarity & Specificity", text2: "22/25"),
//                                 SizedBox(height: 5 ),
//                                 CustomSloderRow(text: "Strategic Thinking", text2: "22/25"),
//                                 // SizedBox(height: 5 * heightScaleFactor),
//                                 SizedBox(height: 5 ),
     
//                                 CustomSloderRow(text: "Feasibility", text2: "22/25"),
//                                 // SizedBox(height: 5 * heightScaleFactor),
//                                 SizedBox(height: 5 ),
     
//                                 CustomSloderRow(text: "Innovation", text2: "22/25"),
//                               ],
//                             ),
//                           ),
//                         ),
//    ),
//                       SizedBox(height: 29,),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 13),
//                         child: Container(
//                           width: 376,
//                           height: 271,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: AppColors.greyColor,width: 1.5),
//                             borderRadius: BorderRadius.circular(24)
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             child: Column(
//                               children: [
//                                 SizedBox(height: 30,),
//                                   Row(
//                                     children: [
//                                       Icon(Icons.star,color: AppColors.yellowColor,),
//                                       SizedBox(width: 9,),
//                                       BoldText(
//                                         text: "Tips for Next Challenge",
//                                         selectionColor: AppColors.blueColor,
//                                         fontSize: 16 ,
//                                       ),
//                                     ],
//                                   ),
// SizedBox(height: 28,),
//                                    UseableTextrow(
//                                     height: 1.4,
//                     color: AppColors.forwardColor,
//                     text: "Include contingency planning in your\ndecision-making process"),
//                     SizedBox(height: 20,),
//                      UseableTextrow(
//                                     height: 1.4,
//                     color: AppColors.forwardColor,
//                     text: "Consider stakeholder impact beyond\nimmediate team members"),
//                       SizedBox(height: 20,),
//                      UseableTextrow(
//                                     height: 1.4,
//                     color: AppColors.forwardColor,
//                     text: "Quantify benefits where possible to\nstrengthen your reasoning"),

//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 29,),
//                        Padding(
//                                     padding: const EdgeInsets.symmetric(horizontal: 30),
//                                     child: Column(
//                                       children: [
//                                           CustomStratgyContainer(
//                                       width3: 81,
//                                       iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 1 Strategy Building", text2: "Completed • 20 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
//                             flex: 4,flex1: 0,
//                             ),
//                             SizedBox(height: 10,),
//                               CustomStratgyContainer(
//                                       width3: 81,
//                                       iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 2 Strategy Building", text2: "Active • 30 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
//                             flex: 4,flex1: 0,
//                             ),
//                             SizedBox(height: 10,),
//                              CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 3: Implementation", text2: "Upcoming • 15 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
//                              ),
//                             SizedBox(height: 10,),
//                              CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 4: Evaluation", text2: "Upcoming • 15 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
//                              ),
//                              SizedBox(height: 30,),
//                              LoginButton(text: "Move to Phase 3",color: AppColors.forwardColor,ishow: true,
//                              image: Appimages.submit,
//                              ),
//                              SizedBox(height: 10,),
//                               LoginButton(text: "Live Leaderboard",ishow: true,
//                              image: Appimages.tropy1,
//                              ),
//                                 SizedBox(height: 10,),
//                                LoginButton(text: "Export PDF",ishow: true,color: AppColors.redColor,
//                              image: Appimages.export,
//                              ),
//                              SizedBox(height: 40,)
                             
          
                                        
//                                       ],
//                                     ),
//                                   )
            
              
            
//     ],
//   ),
// )),),

//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_sloder_row.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';
import 'package:scorer/widgets/useable_textrow.dart';

class SubmitResponseScreen2 extends StatelessWidget {
  const SubmitResponseScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Use a base width to calculate a scaling factor.
    const double baseWidth = 375.0; 
      //  final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeAreaTop = MediaQuery.of(context).padding.top;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    // A more direct way to get scaling factors
    final double baseHeight = 812.0;
    // final double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;
    final double scaleFactor = screenWidth / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30 * scaleFactor, right: 10 * scaleFactor),
                  child: Row(
                    children: [
                      Image.asset(
                        Appimages.player2,
                        height: 63 * scaleFactor,
                        width: 50 * scaleFactor,
                      ),
                      Expanded(
                        child: Center(
                          child: BoldText(
                          text: "team_alpha".tr,
                            fontSize: 22 * scaleFactor,
                          ),
                        ),
                      ),
                      Image.asset(
                        Appimages.house1,
                        height: 63 * scaleFactor,
                        width: 80 * scaleFactor,
                      ),
                    ],
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset(
                      Appimages.Crown,
                      height: 162 * scaleFactor,
                      width: 162 * scaleFactor,
                    ),
                    Positioned(
                      bottom: -10 * scaleFactor,
                      right: -20 * scaleFactor,
                      child: CreateContainer(
                        text: "5 Phases",
                        width: 84 * scaleFactor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30 * scaleFactor),
                BoldText(
                   text: "response_submitted".tr,
                  fontSize: 16 * scaleFactor,
                  selectionColor: AppColors.blueColor,
                ),
                              SizedBox(height: 20 * scaleFactor),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
                  child: Container(
                    height: 510 * scaleFactor,
                    width: 330 * scaleFactor,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1.5 * scaleFactor,
                      ),
                      borderRadius: BorderRadius.circular(24 * scaleFactor),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15 * scaleFactor),
                          child: Column(
                            children: [
                              SizedBox(height: 27 * scaleFactor),
                              BoldText(
                                text: "ai_analysis_suggestion".tr,
                                fontSize: 16 * scaleFactor,
                                selectionColor: AppColors.blueColor,
                              ),
                              SizedBox(height: 28 * scaleFactor),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: -10 * scaleFactor,
                                    top: -10 * scaleFactor,
                                    child: SvgPicture.asset(Appimages.arrowdown),
                                  ),
                                  Container(
                                    child: Image.asset(Appimages.ai2),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(
                                   text: "relevance_score".tr,
                                    fontSize: 16 * scaleFactor,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                  UseableContainer(
                                    text: "78",
                                    fontFamily: "giory",
                                    fontSize: 14 * scaleFactor,
                                    width: 37 * scaleFactor,
                                    height: 28 * scaleFactor,
                                    color: AppColors.orangeColor,
                                  )
                                ],
                              ),
                            MainText(
  text: "response_address_prompt".tr,
  fontSize: 14 * scaleFactor,
  height: 1.3,
),

                              SizedBox(height: 10 * scaleFactor),
                              Divider(
                                color: AppColors.greyColor,
                                thickness: 1 * scaleFactor,
                              ),
                              SizedBox(height: 20 * scaleFactor),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                BoldText(
  text: "quality_assessment".tr,
  fontSize: 16 * scaleFactor,
  selectionColor: AppColors.blueColor,
),
                                  
UseableContainer(
  text: "high".tr,
  fontSize: 12 * scaleFactor,
  width: 46 * scaleFactor,
  height: 28 * scaleFactor,
  color: AppColors.forwardColor,
),
                                ],
                              ),
                              SizedBox(height: 10 * scaleFactor),
                              MainText(
                                text: "Well-structured response with specific metrics and measurable outcomes.",
                                fontSize: 14 * scaleFactor,
                                height: 1.3,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -70 * scaleFactor,
                          left: 70 * scaleFactor,
                          child: Container(
                            height: 181 * scaleFactor,
                            width: 181 * scaleFactor,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.forwardColor,
                                  Colors.grey.shade200,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(3 * scaleFactor),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 202, 202, 202),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BoldText(
                                    text: "89/100",
                                    fontSize: 30 .sp,
                                    selectionColor: AppColors.createBorderColor,
                                  ),
                                  SizedBox(height: 4 * scaleFactor),
                                 BoldText(
  text: "final_score".tr,
  fontSize: 16.sp,
  selectionColor: AppColors.blueColor,
),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100 * scaleFactor),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
                  child: Container(
                    height: 215 .h,
                    width: 336 .w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1.7 * scaleFactor,
                      ),
                      borderRadius: BorderRadius.circular(24 * scaleFactor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 17 * scaleFactor,
                        right: 15 * scaleFactor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20 * scaleFactor),
                          BoldText(
                           text: "scoring_breakdown".tr,
                            selectionColor: AppColors.blueColor,
                            fontSize: 16 .sp,
                          ),
                          SizedBox(height: 5 * scaleFactor),
                         CustomSloderRow(
  // fontSize: (Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
  fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 14.sp,
smallSize: 11.sp


  ),
  text: "clarity_specificity".tr, text2: "22/25"),
                          SizedBox(height: 5 * scaleFactor),
                         CustomSloderRow(
  // fontSize: (Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
    fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 14.sp,
smallSize: 11.sp


  ),
  text: "strategic_thinking".tr, text2: "22/25"),
                          SizedBox(height: 5 * scaleFactor),
                         CustomSloderRow(
  // fontSize: (Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
    fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 14.sp,
smallSize: 11.sp

  ),
  text: "feasibility".tr, text2: "22/25"),
                          SizedBox(height: 5 * scaleFactor),
                        CustomSloderRow(
  // fontSize: (Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
  fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 14.sp,
smallSize: 11.sp


  ),
  text: "innovation".tr, text2: "22/25"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18* scaleFactor),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13 * scaleFactor),
                  child: Container(
                    width: 376 * scaleFactor,
                    height: 271 * scaleFactor,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1.5 * scaleFactor,
                      ),
                      borderRadius: BorderRadius.circular(24 * scaleFactor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15 * scaleFactor),
                      child: Column(
                        children: [
                          SizedBox(height: 30 * scaleFactor),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.yellowColor,
                                size: 24 * scaleFactor,
                              ),
                              SizedBox(width: 9 * scaleFactor),
                             
BoldText(
  text: "tips_next_challenge".tr,
  selectionColor: AppColors.blueColor,
  fontSize: 16 * scaleFactor,
),
                            ],
                          ),
                          SizedBox(height: 28 * scaleFactor),
                         
UseableTextrow(
  // fontsize11:ResponsiveFont.getFontSize() ,
  fontsize11:ResponsiveFont.getFontSizeCustom(
    smallSize: 9*widthScaleFactor*widthScaleFactor,
defaultSize: 13*widthScaleFactor*widthScaleFactor
  ) ,
  height: 1.4,
  color: AppColors.forwardColor,
  text: "tip_contingency".tr,
),
                          SizedBox(height: 20 * scaleFactor),
                        UseableTextrow(
  fontsize11:ResponsiveFont.getFontSizeCustom(
    smallSize: 9*widthScaleFactor,
defaultSize: 13*widthScaleFactor
  ) ,

  height: 1.4,
  color: AppColors.forwardColor,
  text: "tip_stakeholder".tr,
),
                          SizedBox(height: 20 * scaleFactor),
                        
UseableTextrow(
  height: 1.4,
  fontsize11:ResponsiveFont.getFontSizeCustom(
    smallSize: 9*widthScaleFactor,
defaultSize: 13*widthScaleFactor
  ) ,
  color: AppColors.forwardColor,
  text: "tip_quantify".tr,
),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18 * scaleFactor),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
                  child: Column(
                    children: [
                      CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize2:  ResponsiveFont.getFontSize(),

                        fontSize3: 10,
                            width3: 68 * scaleFactor,
                        iconContainer: AppColors.forwardColor,
                        icon: Icons.check,
                         text1: "phase1_strategy".tr,
                        text2: "Completed • 20 min",
                        text3: "completed".tr,
                        smallContainer: AppColors.forwardColor,
                        largeConatiner: AppColors.forwardColor,
                        flex: 4,
                        flex1: 0,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize2:  ResponsiveFont.getFontSize(),

                       fontSize3: 10,
                            width3: 68 * scaleFactor,
                        iconContainer: AppColors.forwardColor,
                        icon: Icons.check,
                         text1: "phase2_strategy".tr,
                        text2: "Active • 30 min",
                        text3: "Completed",
                        smallContainer: AppColors.forwardColor,
                        largeConatiner: AppColors.forwardColor,
                        flex: 4,
                        flex1: 0,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      CustomStratgyContainer(
fontSize2:  ResponsiveFont.getFontSize(),
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize3: 10,
                            width3: 68 * scaleFactor,
                        iconContainer: AppColors.watchColor,
                        icon: Icons.watch_later,
                        text1: "phase3_implementation".tr, 
                        text2: "Upcoming • 15 min",
                        text3: "Pending",
                        smallContainer: AppColors.watchColor,
                        largeConatiner: AppColors.greyColor,
                        flex: 4,
                        flex1: 0,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
fontSize2:  ResponsiveFont.getFontSize(),
                        
                     fontSize3: 10,
                            width3: 68 * scaleFactor,   iconContainer: AppColors.watchColor,
                        icon: Icons.watch_later,
                       text1: "phase4_evaluation".tr,
                        text2: "Upcoming • 15 min",
                        text3: "Pending",
                        smallContainer: AppColors.watchColor,
                        largeConatiner: AppColors.greyColor,
                        flex: 4,
                        flex1: 0,
                      ),
                      SizedBox(height: 30 * scaleFactor),
                      LoginButton(
                        fontSize: 19.sp,

                        text: "move_to_phase_3".tr,
                        color: AppColors.forwardColor,
                        ishow: true,
                        image: Appimages.submit,
                        imageHeight: 32 .h,
                        imageWidth: 32 .w,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      LoginButton(
                        fontSize: 19.sp,
                        onTap: () => Get.toNamed(RouteName.playerLeaderboardScreen),

                        text:"live_leaderboard".tr,
                        ishow: true,
                        image: Appimages.tropy1,
                        imageHeight: 32 .h,
                        imageWidth: 32 .w,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      LoginButton(
                        // onTap: () => Get.toNamed(RouteName.submitResponseScreen2),
                        fontSize: 19.sp,
                        text: "export_pdf".tr,
                        ishow: true,
                        color: AppColors.redColor,
                        image: Appimages.export,
                        imageHeight: 32 .h,
                        imageWidth: 32 .w,
                      ),
                      SizedBox(height: 40 * scaleFactor),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
