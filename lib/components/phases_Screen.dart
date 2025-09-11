// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:get/get.dart';
// // import 'package:get/get_core/src/get_main.dart';
// // import 'package:scorer/components/stages_row.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/controllers/stage_controllers.dart';
// // import 'package:scorer/widgets/bold_text.dart';
// // import 'package:scorer/widgets/create_container.dart';
// // import 'package:scorer/widgets/custom_stratgy_container.dart';
// // import 'package:scorer/widgets/login_button.dart';
// // import 'package:scorer/widgets/main_text.dart';
// // import 'package:scorer/widgets/pause_container.dart';
// // import 'package:scorer/widgets/players_container.dart';
// // import 'package:scorer/widgets/useable_container.dart';
// // import 'package:scorer/widgets/useable_textrow.dart';

// // class PhasesScreen extends StatelessWidget {
// //   final StageController controller = Get.put(StageController());
// // // final item= controller.isCompleted.value;
// //    PhasesScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: [
       
// //         /// Scrollable Content
// //         Container(
// //           child: SingleChildScrollView(
// //             child: Container(
// //               // height: double.infinity,
// //               child: Column(
// //                 children: [
// //                   SizedBox(height: 30),
// //                   CreateContainer(text: "Current Phase", width: 112),
// //                   SizedBox(height: 15),
// //                   SvgPicture.asset(Appimages.time, width: 112.84, height: 112.84),
// //                   SizedBox(height: 20),
              
// //                   /// Example Content
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 20),
// //                     child: Container(
// //                       width: 334,
// //                       height: 103,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(12),
// //                         border: Border.all(
// //                             color: AppColors.selectLangugaeColor, width: 1.5),
// //                       ),
// //                       child: Padding(
// //                         padding: const EdgeInsets.symmetric(horizontal: 10),
// //                         child: Column(
// //                           children: [
// //                             Row(
// //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                               children: [
// //                                 Row(
// //                                   children: [
// //                                     SvgPicture.asset(Appimages.div),
// //                                     SizedBox(width: 8),
// //                                     UseableContainer(
// //                                       text: "Phase 2",
// //                                       color: AppColors.orangeColor,
// //                                     ),
// //                                     SizedBox(width: 8),
// //                                     MainText(
// //                                         text: "Strategy Building", fontSize: 14),
// //                                   ],
// //                                 ),
// //                                 UseableContainer(
// //                                     text: "Active",
// //                                     color: AppColors.selectLangugaeColor),
// //                               ],
// //                             ),
// //                             SizedBox(height: 7),
// //                             Padding(
// //                               padding: const EdgeInsets.only(left: 30),
// //                               child: MainText(
// //                                 height: 1.7,
// //                                 text:
// //                                     "Team collaboration and strategic planning phase",
// //                                 color: AppColors.teamColor,
// //                                 fontSize: 14,
// //                               ),
// //                             )
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
              
// //                   Icon(Icons.arrow_downward_sharp,
// //                       color: AppColors.forwardColor, size: 30),
// //                   SizedBox(height: 23),
              
// //                   StagesRow(),
// //                   SizedBox(height: 15),
              
// //                   /// Progress Bar
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 20),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Obx((){
// // return Row(
// //                           children: [
// //                             Container(
// //                               height: 6,//320
// //                               width:controller.isCompleted.value?320: 170,
// //                               decoration: BoxDecoration(
// //                                   color:controller.isCompleted.value? AppColors.forwardColor: AppColors.selectLangugaeColor,
// //                                   borderRadius: BorderRadius.circular(20)),
// //                             ),
// //                             Container(
// //                               height: 6,
// //                               width:controller.isCompleted.value?0: 150,
// //                               decoration: BoxDecoration(
// //                                   color: AppColors.greyColor,
// //                                   borderRadius: BorderRadius.circular(20)),
// //                             ),
// //                           ],
// //                         );

// //                         }),
// // SizedBox(height: 10,),
// //                         Obx((){
// // return  Row(
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                      BoldText(
// //                                         text:controller.isCompleted.value?"8:19": "12:32",
// //                                         fontSize: 23,
// //                                         selectionColor: AppColors.blueColor),
// //                                     MainText(
// //                                         text:controller.isCompleted.value?"Complete": "Remaining", fontSize: 16),
                                   
// //                                   ],
// //                                 );


// //                         }),
// //                         SizedBox(height: 23),
              
// //                         /// Buttons
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Expanded(child: PauseContainer(
// //                               onTap: () => controller.isCompleted.value=false,
// //                               text: "Back")),
// //                             SizedBox(width: 20),
// //                             Expanded(
// //                               child: PauseContainer(
// //                                 onTap:(){
// //                                   controller.isCompleted.value=true;
// //                                 } ,
// //                                 text: "Assign Score",
// //                                 icon: Icons.fast_forward,
// //                                 color: AppColors.assignColor,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         SizedBox(height: 24),
              
// //                         /// Team Progress
// //                         Container(
// //                           width: 376,
// //                           height: 556,
// //                           decoration: BoxDecoration(
// //                             border: Border.all(
// //                                 color: AppColors.greyColor, width: 1.7),
// //                             borderRadius: BorderRadius.circular(24),
// //                           ),
// //                           child: Padding(
// //                             padding: const EdgeInsets.symmetric(horizontal: 20),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 SizedBox(height: 30),
// //                                 BoldText(
// //                                     text: "Team Progress",
// //                                     selectionColor: AppColors.blueColor,
// //                                     fontSize: 16),
// //                                 SizedBox(height: 15),
                             

// //                               Obx(() {
// //   return Row(
// //     children: [
// //       Expanded(
// //         flex: controller.isCompleted.value ? 3 : 2, // ratio
// //         child: Container(
// //           height: 6,
// //           decoration: BoxDecoration(
// //             color: AppColors.forwardColor,
// //             borderRadius: BorderRadius.circular(20),
// //           ),
// //         ),
// //       ),
// //       Expanded(
// //         flex: controller.isCompleted.value ? 0 : 2, // ratio
// //         child: Container(
// //           height: 6,
// //           decoration: BoxDecoration(
// //             color: AppColors.greyColor,
// //             borderRadius: BorderRadius.circular(20),
// //           ),
// //         ),
// //       ),
// //     ],
// //   );
// // }),

// //                                 SizedBox(height: 15),
// //                            Obx(()=>     Row(
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     const SizedBox(),
// //                                     BoldText(
// //                                       text:controller.isCompleted.value?"5 of 5 submitted": "4 of 5 submitted",
// //                                       fontSize: 16,
// //                                       selectionColor: AppColors.blueColor,
// //                                     ),
// //                                   ],
// //                                 ),),
// //                                 SizedBox(height: 30),
// //                                 PlayersContainers(
// //                                     text1: "1",
// //                                     text2: "You",
// //                                     image: Appimages.play1),
// //                                 SizedBox(height: 15),
// //                           Obx((){
// // return       PlayersContainers(
// //                                     color:controller.isCompleted.value?AppColors.forwardColor:  AppColors.yellowColor,
// //                                     width: 7,
// //                                     width1: 76,
// //                                     text3:controller.isCompleted.value?"Submitted": "Working...",
// //                                     text1: "2",
// //                                     text2: "Sarah J.",
// //                                     image: Appimages.play2);

// //                           }),
// //                                 SizedBox(height: 15),
// //                                 PlayersContainers(
// //                                     width: 10,
// //                                     text1: "3",
// //                                     text2: "Mike C.",
// //                                     image: Appimages.play3),
// //                                 SizedBox(height: 15),
// //                                 PlayersContainers(
// //                                     width: 5,
// //                                     text1: "4",
// //                                     text2: "David B.",
// //                                     image: Appimages.play4),
// //                                 SizedBox(height: 15),
// //                                 PlayersContainers(
// //                                     width: 12,
// //                                     text1: "5",
// //                                     text2: "Lisa G.",
// //                                     image: Appimages.play5),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: 30),
              
// //                         BoldText(
// //                             text: "All Phases",
// //                             fontSize: 16,
// //                             selectionColor: AppColors.blueColor),
// //                         CustomStratgyContainer(
// //                           iconContainer: AppColors.forwardColor,
// //                           icon: Icons.check,
// //                           text1: "Phase 1 Strategy Building",
// //                           text2: 'Completed • 20 min',
// //                           text3: 'Completed',
// //                           smallContainer: AppColors.forwardColor,
// //                           largeConatiner: AppColors.forwardColor,
// //                         ),
// //                         SizedBox(height: 10),
// //                         CustomStratgyContainer(
// //                           width1: 207,
// //                           width2: 90,
// //                           iconContainer: AppColors.selectLangugaeColor,
// //                           icon: Icons.play_arrow_rounded,
// //                           text1: "Phase 2 Strategy Building",
// //                           text2: 'Active • 30 min',
// //                           text3: 'Active',
// //                           smallContainer: AppColors.selectLangugaeColor,
// //                           largeConatiner: AppColors.selectLangugaeColor,
// //                         ),
// //                         SizedBox(height: 10),
// //                         CustomStratgyContainer(
// //                           iconContainer: AppColors.watchColor,
// //                           icon: Icons.watch_later,
// //                           text1: "Phase 3: Implementation",
// //                           text2: 'Upcoming • 25 min',
// //                           text3: 'Pending',
// //                           smallContainer: AppColors.watchColor,
// //                           largeConatiner: AppColors.greyColor,
// //                         ),
// //                         SizedBox(height: 10),
// //                         CustomStratgyContainer(
// //                           iconContainer: AppColors.watchColor,
// //                           icon: Icons.watch_later,
// //                           text1: "Phase 4: Evaluation",
// //                           text2: 'Upcoming • 25 min',
// //                           text3: 'Pending',
// //                           smallContainer: AppColors.watchColor,
// //                           largeConatiner: AppColors.greyColor,
// //                         ),
// //                         SizedBox(height: 25),
              
// //                         /// Real-Time Monitoring
// //                         Container(
// //                           width: 376,
// //                           height: 292,
// //                           decoration: BoxDecoration(
// //                             border: Border.all(
// //                                 color: AppColors.greyColor, width: 1.7),
// //                             borderRadius: BorderRadius.circular(24),
// //                           ),
// //                           child: Padding(
// //                             padding: const EdgeInsets.symmetric(horizontal: 23),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 SizedBox(height: 24),
// //                                 BoldText(
// //                                     text: "Real-Time Monitoring",
// //                                     selectionColor: AppColors.blueColor,
// //                                     fontSize: 16),
// //                                 SizedBox(height: 20),
// //                                 Row(
// //                                   children: [
// //                                     Container(
// //                                       height: 5,
// //                                       width: 180,
// //                                       decoration: BoxDecoration(
// //                                           borderRadius: BorderRadius.circular(20),
// //                                           color: AppColors.forwardColor),
// //                                     ),
// //                                     Container(
// //                                       height: 5,
// //                                       width: 90,
// //                                       decoration: BoxDecoration(
// //                                           borderRadius: BorderRadius.circular(20),
// //                                           color: AppColors.greyColor),
// //                                     ),
// //                                   ],
// //                                 ),
// //                                 SizedBox(height: 16),
// //                                 Row(
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     MainText(
// //                                         text: "Player Engagement", fontSize: 14),
// //                                     BoldText(
// //                                         text: "89%",
// //                                         fontSize: 16,
// //                                         selectionColor: AppColors.blueColor),
// //                                   ],
// //                                 ),
// //                                 SizedBox(height: 20),
// //                                 MainText(text: "Recent Activity", fontSize: 14),
// //                                 SizedBox(height: 15),
// //                                 UseableTextrow(
// //                                     color: AppColors.forwardColor,
// //                                     text: "Alex submitted response • 1m ago"),
// //                                 SizedBox(height: 10),
// //                                 UseableTextrow(
// //                                     color: AppColors.forwardColor2,
// //                                     text: "Sarah joined team discussion • 2m ago"),
// //                                 SizedBox(height: 10),
// //                                 UseableTextrow(
// //                                     color: AppColors.forwardColor3,
// //                                     text: "Mike went inactive • 5m ago"),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: 20),
              
// //                         /// View Responses Button
// //                         LoginButton(
// //                           text: "View Responses",
// //                           color: AppColors.forwardColor,
// //                           ishow: true,
// //                           image: Appimages.eye,
// //                         ),
// //                         SizedBox(height: 100),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),

// //         /// Fixed Overlay Timer
// //         Positioned(
// //           top: 110,
// //           left: 145,
// //           child: Column(
// //             children: [
// //               BoldText(
// //                   text: "12:32",
// //                   fontSize: 23,
// //                   selectionColor: AppColors.blueColor),
// //               MainText(text: "Remaining", fontSize: 14, height: 1),
// //             ],
// //           ),
// //         ),

// //         /// Fixed Overlay "Team Alpha"
// //         Positioned(
// //           right: 0,
// //           top: 200,
// //           child: Container(
// //             width: 150,
// //             height: 55,
// //             decoration: BoxDecoration(
// //               borderRadius: const BorderRadius.only(
// //                 topLeft: Radius.circular(10),
// //                 bottomLeft: Radius.circular(10),
// //               ),
// //               color: AppColors.forwardColor,
// //             ),
// //             child: Column(
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.only(left: 40, top: 10),
// //                   child: MainText(
// //                     text: "Team Alpha",
// //                     fontFamily: "gotham",
// //                     fontSize: 14,
// //                     color: AppColors.whiteColor,
// //                     height: 0,
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.only(bottom: 1),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.end,
// //                     children: [
// //                       Icon(Icons.keyboard_arrow_up_outlined,
// //                           color: AppColors.arrowColor),
// //                       MainText(
// //                         text: "2,890 pts   ",
// //                         fontFamily: "gotham",
// //                         fontSize: 14,
// //                         height: 0,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //          Positioned(
// //           top: 163,
// //           left: 200,
// //           child: Image.asset(Appimages.man3,width: 62,height: 101,)),

       
// //       ],
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer/components/stages_row.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_stratgy_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/pause_container.dart';
// import 'package:scorer/widgets/players_container.dart';
// import 'package:scorer/widgets/useable_container.dart';
// import 'package:scorer/widgets/useable_textrow.dart';

// class PhasesScreen extends StatelessWidget {
//   final StageController controller = Get.put(StageController());
//   PhasesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     // Responsive values
//     final verticalSpacing = screenHeight * 0.02;
//     final horizontalPadding = screenWidth * 0.05;
//     final contentWidth = screenWidth * 0.9;
//     final containerHeight = screenHeight * 0.12;
//     final smallContainerWidth = screenWidth * 0.3;
//     final largeContainerHeight = screenHeight * 0.65;
//     final largeContainerWidth = screenWidth * 0.9;

//     return Stack(
//       children: [
//         /// Scrollable Content
//         SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: verticalSpacing * 2),
//               CreateContainer(
//                   text: "Current Phase", width: smallContainerWidth),
//               SizedBox(height: verticalSpacing),
//               SvgPicture.asset(Appimages.time,
//                   width: screenWidth * 0.3, height: screenWidth * 0.3),
//               SizedBox(height: verticalSpacing),

//               /// Example Content
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//                 child: Container(
//                   width: contentWidth,
//                   height: containerHeight,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     border: Border.all(
//                         color: AppColors.selectLangugaeColor, width: 1.5),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 SvgPicture.asset(Appimages.div),
//                                 SizedBox(width: screenWidth * 0.02),
//                                 UseableContainer(
//                                   text: "Phase 2",
//                                   color: AppColors.orangeColor,
//                                 ),
//                                 SizedBox(width: screenWidth * 0.02),
//                                 MainText(text: "Strategy Building", fontSize: screenWidth * 0.04),
//                               ],
//                             ),
//                             UseableContainer(
//                                 text: "Active",
//                                 color: AppColors.selectLangugaeColor),
//                           ],
//                         ),
//                         SizedBox(height: screenHeight * 0.01),
//                         Padding(
//                           padding: EdgeInsets.only(left: screenWidth * 0.08),
//                           child: MainText(
//                             height: 1.2,
//                             text: "Team collaboration and strategic planning phase",
//                             color: AppColors.teamColor,
//                             fontSize: screenWidth * 0.04,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Icon(Icons.arrow_downward_sharp,
//                   color: AppColors.forwardColor, size: screenWidth * 0.08),
//               SizedBox(height: verticalSpacing),

//               StagesRow(),
//               SizedBox(height: verticalSpacing),

//               /// Progress Bar
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Obx(() {
//                       return Row(
//                         children: [
//                           Container(
//                             height: 6,
//                             width: controller.isCompleted.value
//                                 ? contentWidth
//                                 : contentWidth * 0.5,
//                             decoration: BoxDecoration(
//                                 color: controller.isCompleted.value
//                                     ? AppColors.forwardColor
//                                     : AppColors.selectLangugaeColor,
//                                 borderRadius: BorderRadius.circular(20)),
//                           ),
//                           Container(
//                             height: 6,
//                             width: controller.isCompleted.value
//                                 ? 0
//                                 : contentWidth * 0.4,
//                             decoration: BoxDecoration(
//                                 color: AppColors.greyColor,
//                                 borderRadius: BorderRadius.circular(20)),
//                           ),
//                         ],
//                       );
//                     }),
//                     SizedBox(height: screenHeight * 0.01),
//                     Obx(() {
//                       return Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           BoldText(
//                               text: controller.isCompleted.value
//                                   ? "8:19"
//                                   : "12:32",
//                               fontSize: screenWidth * 0.06,
//                               selectionColor: AppColors.blueColor),
//                           MainText(
//                               text: controller.isCompleted.value
//                                   ? "Complete"
//                                   : "Remaining",
//                               fontSize: screenWidth * 0.04),
//                         ],
//                       );
//                     }),
//                     SizedBox(height: verticalSpacing),

//                     /// Buttons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Expanded(
//                             child: PauseContainer(
//                                 onTap: () => controller.isCompleted.value = false,
//                                 text: "Back")),
//                         SizedBox(width: horizontalPadding),
//                         Expanded(
//                           child: PauseContainer(
//                             onTap: () {
//                               controller.isCompleted.value = true;
//                             },
//                             text: "Assign Score",
//                             icon: Icons.fast_forward,
//                             color: AppColors.assignColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: verticalSpacing),

//                     /// Team Progress
//                     Container(
//                       width: contentWidth,
//                       height: largeContainerHeight,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: AppColors.greyColor, width: 1.7),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: verticalSpacing),
//                             BoldText(
//                                 text: "Team Progress",
//                                 selectionColor: AppColors.blueColor,
//                                 fontSize: screenWidth * 0.04),
//                             SizedBox(height: screenHeight * 0.015),
//                             Obx(() {
//                               return Row(
//                                 children: [
//                                   Expanded(
//                                     flex: controller.isCompleted.value ? 3 : 2,
//                                     child: Container(
//                                       height: 6,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.forwardColor,
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: controller.isCompleted.value ? 0 : 2,
//                                     child: Container(
//                                       height: 6,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.greyColor,
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             }),
//                             SizedBox(height: screenHeight * 0.015),
//                             Obx(
//                               () => Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const SizedBox(),
//                                   BoldText(
//                                     text: controller.isCompleted.value
//                                         ? "5 of 5 submitted"
//                                         : "4 of 5 submitted",
//                                     fontSize: screenWidth * 0.04,
//                                     selectionColor: AppColors.blueColor,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: verticalSpacing),
//                             PlayersContainers(
//                                 text1: "1", text2: "You", image: Appimages.play1),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             Obx(() {
//                               return PlayersContainers(
//                                   color: controller.isCompleted.value
//                                       ? AppColors.forwardColor
//                                       : AppColors.yellowColor,
//                                   // width: screenWidth * 0.015,
//                                   // width1: screenWidth * 0.2,
//                                   text3: controller.isCompleted.value
//                                       ? "Submitted"
//                                       : "Working...",
//                                   text1: "2",
//                                   text2: "Sarah J.",
//                                   image: Appimages.play2);
//                             }),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             PlayersContainers(
//                                 // width: screenWidth * 0.025,
//                                 text1: "3",
//                                 text2: "Mike C.",
//                                 image: Appimages.play3),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             PlayersContainers(
//                                 // width: screenWidth * 0.013,
//                                 text1: "4",
//                                 text2: "David B.",
//                                 image: Appimages.play4),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             PlayersContainers(
//                                 // width: screenWidth * 0.03,
//                                 text1: "5",
//                                 text2: "Lisa G.",
//                                 image: Appimages.play5),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: verticalSpacing),

//                     /// Real-Time Monitoring
//                     Container(
//                       width: contentWidth,
//                       height: screenHeight * 0.35,
//                       decoration: BoxDecoration(
//                         border:
//                             Border.all(color: AppColors.greyColor, width: 1.7),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: verticalSpacing),
//                             BoldText(
//                                 text: "Real-Time Monitoring",
//                                 selectionColor: AppColors.blueColor,
//                                 fontSize: screenWidth * 0.04),
//                             SizedBox(height: verticalSpacing),
//                             Row(
//                               children: [
//                                 Container(
//                                   height: 5,
//                                   width: screenWidth * 0.45,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: AppColors.forwardColor),
//                                 ),
//                                 Container(
//                                   height: 5,
//                                   width: screenWidth * 0.22,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: AppColors.greyColor),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: verticalSpacing),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 MainText(text: "Player Engagement", fontSize: screenWidth * 0.04),
//                                 BoldText(
//                                     text: "89%",
//                                     fontSize: screenWidth * 0.04,
//                                     selectionColor: AppColors.blueColor),
//                               ],
//                             ),
//                             SizedBox(height: verticalSpacing),
//                             MainText(text: "Recent Activity", fontSize: screenWidth * 0.04),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             UseableTextrow(
//                                 color: AppColors.forwardColor,
//                                 text: "Alex submitted response • 1m ago"),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             UseableTextrow(
//                                 color: AppColors.forwardColor2,
//                                 text: "Sarah joined team discussion • 2m ago"),
//                             SizedBox(height: verticalSpacing * 0.7),
//                             UseableTextrow(
//                                 color: AppColors.forwardColor3,
//                                 text: "Mike went inactive • 5m ago"),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: verticalSpacing),

//                     /// View Responses Button
//                     Center(
//                       child: LoginButton(
//                         text: "View Responses",
//                         color: AppColors.forwardColor,
//                         ishow: true,
//                         image: Appimages.eye,
//                       ),
//                     ),
//                     SizedBox(height: verticalSpacing * 2),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),

//         /// Fixed Overlay Timer
//         Positioned(
//           top: screenHeight * 0.13,
//           left: screenWidth * 0.38,
//           child: Column(
//             children: [
//               BoldText(
//                   text: "12:32",
//                   fontSize: screenWidth * 0.06,
//                   selectionColor: AppColors.blueColor),
//               MainText(text: "Remaining", fontSize: screenWidth * 0.04, height: 1),
//             ],
//           ),
//         ),

//         /// Fixed Overlay "Team Alpha"
//         Positioned(
//           right: 0,
//           top: screenHeight * 0.2,
//           child: Container(
//             width: screenWidth * 0.4,
//             height: screenHeight * 0.07,
//             decoration: BoxDecoration(
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 bottomLeft: Radius.circular(10),
//               ),
//               color: AppColors.forwardColor,
//             ),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: screenWidth * 0.1, top: screenHeight * 0.015),
//                   child: MainText(
//                     text: "Team Alpha",
//                     fontFamily: "gotham",
//                     fontSize: screenWidth * 0.04,
//                     color: AppColors.whiteColor,
//                     height: 0,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 1),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Icon(Icons.keyboard_arrow_up_outlined,
//                           color: AppColors.arrowColor, size: screenWidth * 0.05),
//                       MainText(
//                         text: "2,890 pts  ",
//                         fontFamily: "gotham",
//                         fontSize: screenWidth * 0.04,
//                         height: 0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         Positioned(
//             top: screenHeight * 0.16,
//             left: screenWidth * 0.5,
//             child: Image.asset(Appimages.man3,
//                 width: screenWidth * 0.16, height: screenHeight * 0.12)),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer/components/phases_container.dart';
import 'package:scorer/components/real_time_monitor_container.dart';
import 'package:scorer/components/stages_row.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/components/team_progress_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/stage_controllers.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/useable_container.dart';
import 'package:scorer/widgets/useable_textrow.dart';

class PhasesScreen extends StatelessWidget {
  final StageController controller = Get.put(StageController());
  PhasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Common scaling
    final verticalSpacing = screenHeight * 0.02;
    final horizontalPadding = screenWidth * 0.05;
    final contentWidth = screenWidth * 0.9;

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
              Center(
                child: CircularPercentIndicator(
                  radius: 60.0, // circle ka size
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
                  fontSize: screenWidth * 0.06,
                  selectionColor: AppColors.blueColor),
              MainText(
                  text: "remaining".tr,
                  fontSize: screenWidth * 0.04,
                  height: 1),
          ],
                  ),
                ),
              ),
              // SvgPicture.asset(Appimages.time,
              //     width: screenWidth * 0.3, height: screenWidth * 0.3),
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
                    Obx(() {
                      return Row(
                        children: [
                          Expanded(
                                      flex: controller.isCompleted.value ? 3 : 2,
          
                            child: Container(
                              height: screenHeight * 0.008,
                              width: controller.isCompleted.value
                                  ? contentWidth
                                  : contentWidth * 0.5,
                              decoration: BoxDecoration(
                                  color: controller.isCompleted.value
                                      ? AppColors.forwardColor
                                      : AppColors.selectLangugaeColor,
                                  borderRadius:
                                      BorderRadius.circular(screenWidth * 0.05)),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.008,
                            width: controller.isCompleted.value
                                ? 0
                                : contentWidth * 0.4,
                            decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.05)),
                          ),
                        ],
                      );
                    }),
                    SizedBox(height: screenHeight * 0.01),
                    Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                              text: controller.isCompleted.value
                                  ? "8:19"
                                  : "12:32",
                              fontSize: screenWidth * 0.06,
                              selectionColor: AppColors.blueColor),
                          MainText(
                              text: controller.isCompleted.value
                                  ? "complete".tr
                                  : "remaining".tr,
                              fontSize: screenWidth * 0.04),
                        ],
                      );
                    }),
                    SizedBox(height: verticalSpacing),
          
                    /// Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: PauseContainer(
                                onTap: () =>
                                    controller.isCompleted.value = false,
                                 text: "back".tr,)),
                        SizedBox(width: horizontalPadding),
                       Expanded(
            child: PauseContainer(
              onTap: () {
                if (!controller.isCompleted.value) {
                  // ✅ Pehli dafa: sirf value change hogi
                  controller.isCompleted.value = true;
                } else {
                  // ✅ Dusri dafa: navigate ya screen change
                Get.toNamed(RouteName.viewResponsesScreen); 
                  // ya phir koi bhi screen tumhari requirement ke hisaab se
                }
              },
              text: "assign_score".tr,
              icon: Icons.fast_forward,
              color: AppColors.assignColor,
            ),
          ),
                     ],
                    ),
                    SizedBox(height: verticalSpacing),
          
                    /// Team Progress
                    TeamProgressContainer(contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth, verticalSpacing: verticalSpacing, controller: controller),
                    SizedBox(height: verticalSpacing),
                    BoldText( text: "all_phases".tr,fontSize: 16,selectionColor: AppColors.blueColor,),
          SizedBox(height: 25,),
                    CustomStratgyContainer(iconContainer: AppColors.forwardColor, icon: Icons.check, text1:  "phase1_strategy".tr, text2: "Completed • 20 min", text3: "completed".tr, smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                    flex: 4,flex1: 0,
                    ),
                    SizedBox(height: 10,),
                     CustomStratgyContainer(iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "phase2_strategy".tr ,text2: "Active • 30 min", text3: "active".tr, smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
             
                    ),
                     SizedBox(height: 10,),
                     CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "phase3_implementation".tr, text2: "Upcoming • 25 min", text3: "pending".tr, smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),
                         SizedBox(height: 10,),
                     CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "phase4_evaluation".tr,text2: "Upcoming • 15 min", text3: "pending".tr, smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),
                    SizedBox(height: 25,),
          
          
                    /// Real-Time Monitoring
                    RealTimeMonitorContainer(contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth, verticalSpacing: verticalSpacing),
                    SizedBox(height: verticalSpacing),
          
                    /// View Responses Button
                    Center(
                      child: LoginButton(
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
            ],
          ),
        ),

        // / Fixed Overlay Timer
        // Positioned(
        //   top: screenHeight * 0.14,
        //   left: screenWidth * 0.40,
        //   child: Column(
        //     children: [
        //       BoldText(
        //           text: "12:32",
        //           fontSize: screenWidth * 0.06,
        //           selectionColor: AppColors.blueColor),
        //       MainText(
        //           text: "Remaining",
        //           fontSize: screenWidth * 0.04,
        //           height: 1),
        //     ],
        //   ),
        // ),

        /// Fixed Overlay "Team Alpha"
        Positioned(
          right: 0,
          top: screenHeight * 0.2,
          child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
        ),

        /// Player Image
        Positioned(
            top: screenHeight * 0.16,
            left: screenWidth * 0.5,
            child: Image.asset(Appimages.man3,
                width: screenWidth * 0.16,
                height: screenHeight * 0.12)),
      ],
    );
  }
}
