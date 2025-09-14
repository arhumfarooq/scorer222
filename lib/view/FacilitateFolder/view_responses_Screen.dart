// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:get/instance_manager.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_stratgy_container.dart';

// class ViewResponsesScreen extends StatelessWidget {
//   final StageController controller = Get.put(StageController());
//   ViewResponsesScreen({super.key});
//      final List<String> tabs = ["Overview", "Phases", "Players",];
// double getTextWidth(String text, double fontSize) {
//   final TextPainter textPainter = TextPainter(
//     text: TextSpan(
//       text: text,
//       style: TextStyle(fontSize: fontSize),
//     ),
//     maxLines: 1,
//     textDirection: TextDirection.ltr,
//   )..layout();

//   return textPainter.width + 22; // +20 padding left-right
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child:SafeArea(
//         child: Padding(
//           padding:  EdgeInsets.symmetric(horizontal: 30),
//           child: Column(
//             children: [
//                  Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SvgPicture.asset(Appimages.arrowback,color: AppColors.forwardColor,width: 24,height: 20,)
//                 //  SizedBox(width: 32,)
//                  , BoldText(text: "Stage 2 Responses",selectionColor: AppColors.blueColor,fontSize: 24,),
//                  Text("")
//                 ],
//               ),

//                CustomStratgyContainer(
//                 isshow: true,
//                 mainHeight: 1.3,
//                 fontSize: 14,
//                 containerHeight: 180,
//                 width3: 54,
//                 spaceHeight2: 20,
//                 spaceHeight: 14,
//                 extra: "Define your team's primary objective for the next quarter and identify three key strategies to achieve it.",
//                           width1: 150,
//                           width2: 126,
//                           iconContainer: AppColors.selectLangugaeColor,
//                           icon: Icons.play_arrow_rounded,
//                           text1: "Phase 2 Strategy Building",
//                           text2: 'Completed • 20 min',
//                           text3: 'Active',
//                           smallContainer: AppColors.selectLangugaeColor,
//                           largeConatiner: AppColors.selectLangugaeColor,
//                         ),
//                         SizedBox(height: 31,),
//                         CreateContainer(text: "Stage 2 Scoring",width: 134,),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Container(width: 157,height: 51,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: AppColors.greyColor,width: 1.5),
//                                 borderRadius: BorderRadius.circular(12)
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   BoldText(text: "08",selectionColor: AppColors.redColor,fontSize: 24,),
//                                   SizedBox(width: 11,),
//                                   BoldText(text: "Scored",selectionColor: AppColors.blueColor,fontSize: 16,)
                              
//                                 ],
//                               ),
//                               ),
//                             ),
//                             SizedBox(width: 15,),
//                             Expanded(
//                               child: Container(width: 157,height: 51,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: AppColors.greyColor,width: 1.5),
//                                 borderRadius: BorderRadius.circular(12)
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   BoldText(text: "04",selectionColor: AppColors.redColor,fontSize: 24,),
//                                   SizedBox(width: 11,),
//                                   BoldText(text: "Pending",selectionColor: AppColors.blueColor,fontSize: 16,)
                              
//                                 ],
//                               ),
//                               ),
//                             )
//                           ],
//                         ),

//                          Obx(() {
//           double left = 6; 
//           for (int i = 0; i < controller.selectedIndex.value; i++) {
//             left += getTextWidth(tabs[i], 14);
//           }
        
//           double currentWidth = getTextWidth(
//             tabs[controller.selectedIndex.value], 14);
        
//           return Container(
//             height: 53,
//             width: 336,
//             decoration: BoxDecoration(
//         color: AppColors.settingColor,
//         borderRadius: BorderRadius.circular(12),
//             ),
//             child: Stack(
//         children: [
//           // Highlight bar
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 250),
//             curve: Curves.easeInOut,
//             left: left,
//             top: 5.5,
//             child: Container(
//               height: 42,
//               width: currentWidth,
//               decoration: BoxDecoration(
//                 color: AppColors.forwardColor,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//           ),
        
//           // Tabs
//           Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: List.generate(tabs.length, (index) {
//               return GestureDetector(
//                 onTap: () => controller.changeTab(index),
//                 child: Container(
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.only(left: 10,right: 12),
//                   child: Text(
//                     tabs[index],
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: controller.selectedIndex.value == index
//                           ? AppColors.whiteColor
//                           : AppColors.languageColor,
//                     ),
//                   ),
//                 ),
//               );
//             }),
//           )
//         ],
//             ),
//           );
//         }),
//         //  Obx(
//                   // () => screens[controller.selectedIndex.value])
        
       
          
//             ],
//           ),
//         ),
//       ) ),
//     );
// }}


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_response_container.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';

class ViewResponsesScreen extends StatelessWidget {
  final StageController controller = Get.put(StageController());
  ViewResponsesScreen({super.key});
final List<String> tabs = ["all".tr, "pending".tr, "scored".tr];


  @override
  Widget build(BuildContext context) {
    bool isSpanish = Get.locale?.languageCode == 'es';

    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    // A base height and width to scale from, e.g., a common phone (iPhone 11)
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Stack(
            
            children: [
              
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // SizedBox(height: 23,),
                       SizedBox(
  height: 50,
  child: Stack(
    alignment: Alignment.center,
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: SvgPicture.asset(
          Appimages.arrowback,
          colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
          width: 24 * widthScaleFactor,
          height: 20 * heightScaleFactor,
        ),
      ),
      Center(
        child: BoldText(
            text: "stage2_responses".tr,
            fontSize:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 20:22,

          selectionColor: AppColors.blueColor,
        ),
      ),
    ],
  ),
),
                      SizedBox(height: 27,),
                  
                      CustomStratgyContainer(
                        isshow: true,
                        mainHeight: 1.3,
                        fontSize: 14,
                        containerHeight: 180,
                        width3: 54,
                        spaceHeight2: 20,
                        spaceHeight: 14,
                        extra:
                            "Define your team's primary objective for the next quarter and identify three key strategies to achieve it.",
                        width1: 150,
                        width2: 126,
                        iconContainer: AppColors.selectLangugaeColor,
                        icon: Icons.play_arrow_rounded,
                        text1:"phase2_strategy".tr,
                       fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,

                        text2: 'Completed • 20 min',
                        text3: 'active'.tr,
                        smallContainer: AppColors.selectLangugaeColor,
                        largeConatiner: AppColors.selectLangugaeColor,
                      ),
                  
                      SizedBox(height: 31),
                      CreateContainer( text: "stage2_scoring".tr, width: 134),
                  SizedBox(height: 31,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 51,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.greyColor, width: 1.5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BoldText(
                                    text: "08",
                                    selectionColor: AppColors.redColor,
                                    fontSize: 24,
                                  ),
                                  SizedBox(width: 11),
                                  BoldText(
                                    text: "scored".tr,
                                    selectionColor: AppColors.blueColor,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Container(
                              height: 51,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.greyColor, width: 1.5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BoldText(
                                    text: "04",
                                    selectionColor: AppColors.redColor,
                                    fontSize: 24,
                                  ),
                                  SizedBox(width: 11),
                                  BoldText(
                                    text: "pending".tr,
                                    selectionColor: AppColors.blueColor,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              
                  
                      SizedBox(height: 20),
                  
                      /// ✅ Tabs with Equal Width Highlight
                     Obx(() {
                    double totalWidth = MediaQuery.of(context).size.width - 60; 
                    // 60 = left (30) + right (30) padding
                    double tabWidth = totalWidth / tabs.length;
                    double left = controller.selectedIndex.value * tabWidth;
                  
                    return Container(
                      height: 53,
                      width: totalWidth,
                      decoration: BoxDecoration(
                        color: AppColors.settingColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          // Highlight bar
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                            left: left+4,
                            top: 5.5,
                            child: Container(
                  height: 42,
                             width: tabWidth - 8, // 👈 dono side se 4-4 px kam
                  decoration: BoxDecoration(
                    color: AppColors.forwardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                            ),
                          ),
                  
                          // Tabs
                          Row(
                            children: List.generate(tabs.length, (index) {
                  return SizedBox(
                    width: tabWidth,
                    child: GestureDetector(
                      onTap: () => controller.changeTab(index),
                      child: Center(
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            fontSize: 14,
                            color: controller.selectedIndex.value == index
                                ? AppColors.whiteColor
                                : AppColors.languageColor,
                          ),
                        ),
                      ),
                    ),
                  );
                            }),
                          )
                        ],
                      ),
                    );
                  }),
                  
                  SizedBox(height: 13,),
                  CustomResponseContainer(
onTap: () {
  Get.toNamed(RouteName.evaluateResponseScreen2);
},

                  ),
                  SizedBox(height: 13,),
              
                  CustomResponseContainer(
                    onTap: () {
  Get.toNamed(RouteName.viewScoreScreen);
},
              color1: AppColors.forwardColor,
              text1: "view_score".tr,
              image: Appimages.eye,
              text: "scored".tr,
              ishow: true,
              textColor: AppColors.whiteColor,
              
                  ),
                   SizedBox(height: 13,),
                  CustomResponseContainer(
                      onTap: () {
  Get.toNamed(RouteName.evaluateResponseScreen2);
},
                  ),
                  SizedBox(height: 13,),
              
                  CustomResponseContainer(
              color1: AppColors.forwardColor,
               text1: "view_score".tr,
              image: Appimages.eye,
              text: "scored".tr,
              ishow: true,
              textColor: AppColors.whiteColor,
              
                  ),
              
                  SizedBox(height: 30),
                  
                            BoldText(
                               text: "all_phases".tr,
                                fontSize: 16,
                                selectionColor: AppColors.blueColor),
                            CustomStratgyContainer(
                                // width3: 73,
                        spaceHeight2: 20,
                        spaceHeight: 14,
                        fontSize3:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:12,
                              // width1: 207,
                              //  width2: 70,
                              // fontSize2:isSpanish? 11:14,
                            fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,

                              iconContainer: AppColors.forwardColor,
                              icon: Icons.check,
                              width1: 277,
                            text1:  "phase1_strategy".tr, text2: "Completed • 20 min", text3: "completed".tr,
                                // width3: 70,
                              smallContainer: AppColors.forwardColor,
                              largeConatiner: AppColors.forwardColor,
                          width3  :(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 64:73,

                            ),
                            SizedBox(height: 10),
                            CustomStratgyContainer(
                                mainHeight: 1.3,
                        fontSize: 14,
                        // containerHeight: 180,
                        //   :(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
                        // width3: 54,
                          width3  :(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 50:54,

                        spaceHeight2: 20,
                        spaceHeight: 14,
                              width1: 207,
                               width2: 70,
                              //  fontSize2:isSpanish? 11:14,
                            fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,

                              iconContainer: AppColors.selectLangugaeColor,
                              icon: Icons.play_arrow_rounded,
                            text1: "phase2_strategy".tr ,text2: "Active • 30 min", text3: "active".tr,
                              smallContainer: AppColors.selectLangugaeColor,
                              largeConatiner: AppColors.selectLangugaeColor,
                            ),
                            SizedBox(height: 10),
                            CustomStratgyContainer(
                              width3: 70,
                        spaceHeight2: 20,
                        spaceHeight: 14,
                              width1: 207,
                               width2: 70,
                              iconContainer: AppColors.watchColor,
                              // fontSize2:isSpanish? 11:14,
                            fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,

                              icon: Icons.watch_later,
                           text1: "phase3_implementation".tr, text2: "Upcoming • 25 min", text3: "pending".tr,
                              smallContainer: AppColors.watchColor,
                              largeConatiner: AppColors.greyColor,
                            ),
                            SizedBox(height: 10),
                            CustomStratgyContainer(
                                  width3: 70,
                                // width3: 54,
                        spaceHeight2: 20,
                        spaceHeight: 14,
                              width1: 207,
                               width2: 70,
                              iconContainer: AppColors.watchColor,
                            fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,

                              icon: Icons.watch_later,
                            text1: "phase4_evaluation".tr,text2: "Upcoming • 15 min", text3: "pending".tr,
                              smallContainer: AppColors.watchColor,
                              largeConatiner: AppColors.greyColor,
                            ),
                            SizedBox(height: 25),
                  
                            
                  
                  
                  // SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),

              
        /// Fixed Overlay "Team Alpha"
         Positioned(
          right: 0,
          top: screenHeight * 0.2,
          child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
        ),

        /// Player Image
       
      
            ],
          ),
        ),
      ),
    );
  }
}
