// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// // import 'package:get/instance_manager.dart';
// // import 'package:scorer/components/leader_boeard_screen.dart';
// // import 'package:scorer/components/over_view_Screen.dart';
// // import 'package:scorer/components/phases_Screen.dart';
// // import 'package:scorer/components/players_Screen.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/controllers/overview_controller.dart';
// // import 'package:scorer/view/startscreen/aa.dart';
// // import 'package:scorer/widgets/bold_text.dart';
// // import 'package:scorer/widgets/main_text.dart';
// // import 'package:scorer/widgets/useable_container.dart';

// // class OverViewOptionScreen extends StatelessWidget {
// //   final controller= Get.put(OverviewController());
// //    OverViewOptionScreen({super.key});
// //    final List<String> tabs = ["Overview", "Phases", "Players", "Leaderboard"];
// // double getTextWidth(String text, double fontSize) {
// //   final TextPainter textPainter = TextPainter(
// //     text: TextSpan(
// //       text: text,
// //       style: TextStyle(fontSize: fontSize),
// //     ),
// //     maxLines: 1,
// //     textDirection: TextDirection.ltr,
// //   )..layout();

// //   return textPainter.width + 21; // +20 padding left-right
// // }

// //  final List<Widget> screens=[
// //     OverViewScreen(),
// //     PhasesScreen(),
// //     PlayersScreen(),
// //     LeaderBoeardScreen()
// //   ];


// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: GradientBackground(child: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Padding(
// //                   padding:  EdgeInsets.only(left: 30,top: 40),
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       BoldText(text: "Eranove Odyssey – Team A",selectionColor: AppColors.blueColor,fontSize: 16,),
// //                       Row(
// //                         children: [
// //                           UseableContainer(text: "Phase 2",color: AppColors.orangeColor,),
// //                           SizedBox(width: 8,),
// //                       UseableContainer(text: "Active",color: AppColors.forwardColor,)
                        
// //                         ],
// //                       ),
// //                       // UseableContainer(text: "Active",color: AppColors.forwardColor,)
// //                     ],
// //                   ),
// //                 ),
        
// //                Padding(
// //                  padding: EdgeInsets.only(top:30),
// //                  child: Image.asset(Appimages.house1,height: 85,width: 100,),
// //                )
// //               ],
// //             ),
      
// //         Obx(() {
// //           double left = 6; 
// //           for (int i = 0; i < controller.selectedIndex.value; i++) {
// //             left += getTextWidth(tabs[i], 14);
// //           }
        
// //           double currentWidth = getTextWidth(
// //             tabs[controller.selectedIndex.value], 14);
        
// //           return Container(
// //             height: 53,
// //             width: 336,
// //             decoration: BoxDecoration(
// //         color: AppColors.settingColor,
// //         borderRadius: BorderRadius.circular(12),
// //             ),
// //             child: Stack(
// //         children: [
// //           // Highlight bar
// //           AnimatedPositioned(
// //             duration: Duration(milliseconds: 250),
// //             curve: Curves.easeInOut,
// //             left: left,
// //             top: 5.5,
// //             child: Container(
// //               height: 42,
// //               width: currentWidth,
// //               decoration: BoxDecoration(
// //                 color: AppColors.forwardColor,
// //                 borderRadius: BorderRadius.circular(12),
// //               ),
// //             ),
// //           ),
        
// //           // Tabs
// //           Row(
// //             children: List.generate(tabs.length, (index) {
// //               return GestureDetector(
// //                 onTap: () => controller.changeTab(index),
// //                 child: Container(
// //                   alignment: Alignment.center,
// //                   padding: EdgeInsets.only(left: 10,right: 12),
// //                   child: Text(
// //                     tabs[index],
// //                     style: TextStyle(
// //                       fontSize: 14,
// //                       color: controller.selectedIndex.value == index
// //                           ? AppColors.whiteColor
// //                           : AppColors.languageColor,
// //                     ),
// //                   ),
// //                 ),
// //               );
// //             }),
// //           )
// //         ],
// //             ),
// //           );
// //         }),
// //          Obx(
// //                   () => screens[controller.selectedIndex.value])
        
        
        
// //           ],
// //         ),
// //       ),),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer/components/leader_boeard_screen.dart';
// import 'package:scorer/components/over_view_Screen.dart';
// import 'package:scorer/components/phases_Screen.dart';
// import 'package:scorer/components/players_Screen.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/overview_controller.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class OverViewOptionScreen extends StatelessWidget {
//   final controller = Get.put(OverviewController());
//   OverViewOptionScreen({super.key});

//   final List<String> tabs = ["Overview", "Phases", "Players", "Leaderboard"];
//   final List<Widget> screens = [
//     OverViewScreen(),
//     PhasesScreen(),
//     PlayersScreen(),
//     LeaderBoeardScreen()
//   ];

//   double getTextWidth(String text, double fontSize, BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double baseHeight = 812.0;
//     final double baseWidth = 414.0;
//     final double heightScaleFactor = screenSize.height / baseHeight;
//     final double widthScaleFactor = screenSize.width / baseWidth;
    
//     final TextPainter textPainter = TextPainter(
//       text: TextSpan(
//         text: text,
//         style: TextStyle(fontSize: fontSize * heightScaleFactor),
//       ),
//       maxLines: 1,
//       textDirection: TextDirection.ltr,
//     )..layout();

//     return textPainter.width + (21 * widthScaleFactor);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double baseHeight = 812.0;
//     final double baseWidth = 414.0;
//     final double heightScaleFactor = screenSize.height / baseHeight;
//     final double widthScaleFactor = screenSize.width / baseWidth;

//     return Scaffold(
//       body: GradientBackground(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 30 * widthScaleFactor,
//                       top: 40 * heightScaleFactor,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         BoldText(
//                           text: "Eranove Odyssey – Team A",
//                           selectionColor: AppColors.blueColor,
//                           fontSize: 16 * heightScaleFactor,
//                         ),
//                         SizedBox(height: 8 * heightScaleFactor),
//                         Row(
//                           children: [
//                             UseableContainer(
//                               text: "Phase 2",
//                               color: AppColors.orangeColor,
//                               fontSize: 12 * heightScaleFactor,
//                             ),
//                             SizedBox(width: 8 * widthScaleFactor),
//                             UseableContainer(
//                               text: "Active",
//                               color: AppColors.forwardColor,
//                               fontSize: 12 * heightScaleFactor,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 30 * heightScaleFactor),
//                     child: Image.asset(
//                       Appimages.house1,
//                       height: 85 * heightScaleFactor,
//                       width: 100 * widthScaleFactor,
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(height: 12 * heightScaleFactor),
//               Obx(() {
//                 double left = 6 * widthScaleFactor;
//                 for (int i = 0; i < controller.selectedIndex.value; i++) {
//                   left += getTextWidth(tabs[i], 14, context);
//                 }

//                 double currentWidth = getTextWidth(
//                   tabs[controller.selectedIndex.value],
//                   14,
//                   context,
//                 );

//                 return Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 21 * widthScaleFactor),
//                   child: Container(
//                     height: 53 * heightScaleFactor,
//                     decoration: BoxDecoration(
//                       color: AppColors.settingColor,
//                       borderRadius: BorderRadius.circular(12 * widthScaleFactor),
//                     ),
//                     child: Stack(
//                       children: [
//                         AnimatedPositioned(
//                           duration: const Duration(milliseconds: 250),
//                           curve: Curves.easeInOut,
//                           left: left,
//                           top: 5.5 * heightScaleFactor,
//                           child: Container(
//                             height: 42 * heightScaleFactor,
//                             width: currentWidth,
//                             decoration: BoxDecoration(
//                               color: AppColors.forwardColor,
//                               borderRadius: BorderRadius.circular(12 * widthScaleFactor),
//                             ),
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: List.generate(tabs.length, (index) {
//                             return GestureDetector(
//                               onTap: () => controller.changeTab(index),
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 padding: EdgeInsets.symmetric(horizontal: 10 * widthScaleFactor),
//                                 child: Text(
//                                   tabs[index],
//                                   style: TextStyle(
//                                     fontSize: 14 * heightScaleFactor,
//                                     color: controller.selectedIndex.value == index
//                                         ? AppColors.whiteColor
//                                         : AppColors.languageColor,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           }),
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               }),
//               SizedBox(height: 12 * heightScaleFactor),
//               Obx(() => screens[controller.selectedIndex.value]),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/components/leader_boeard_screen.dart';
import 'package:scorer/components/over_view_Screen.dart';
import 'package:scorer/components/phases_Screen.dart';
import 'package:scorer/components/players_Screen.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/controllers/overview_controller.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class OverViewOptionScreen extends StatelessWidget {
  final controller = Get.put(OverviewController());
  OverViewOptionScreen({super.key});

  final List<String> tabs = ["Overview", "Phases", "Players", " Leaderboard "];
  final List<Widget> screens = [
    OverViewScreen(),
    PhasesScreen(),
    PlayersScreen(),
    LeaderBoeardScreen()
  ];

  /// ✅ Calculate tab width (text + padding)
  double getTabWidth(String text, double fontSize, BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(fontSize: fontSize * heightScaleFactor),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    // text width + horizontal padding (10 left + 10 right)
    return textPainter.width + (20 * widthScaleFactor);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// 🔹 Top Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30 * widthScaleFactor,
                      top: 40 * heightScaleFactor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldText(
                          text: "Eranove Odyssey – Team A",
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * heightScaleFactor,
                        ),
                        SizedBox(height: 8 * heightScaleFactor),
                        Row(
                          children: [
                            UseableContainer(
                              width: 70,
                              text: "Phase 2",
                              color: AppColors.orangeColor,
                              fontSize: 10 * heightScaleFactor,
                              // height: 26,
                            ),
                            SizedBox(width: 8 * widthScaleFactor),
                            UseableContainer(
                              width: 70,
                              text: "Active",
                              // height: 26,
                              color: AppColors.forwardColor,
                              fontSize: 10 * heightScaleFactor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30 * heightScaleFactor),
                    child: Image.asset(
                      Appimages.house1,
                      height: 85 * heightScaleFactor,
                      width: 100 * widthScaleFactor,
                    ),
                  )
                ],
              ),
          
              SizedBox(height: 12 * heightScaleFactor),
          
            
          // /// 🔹 Tabs with Highlight
          // Obx(() {
          //   // total tabs
          //   int tabCount = tabs.length;
          
          //   // container ka width
          //   double containerWidth = screenSize.width - (42 * widthScaleFactor);
          
          //   // har tab ka equal width
          //   double tabWidth = containerWidth / tabCount;
          
          //   // left offset current index ke hisaab se
          //   double left = (controller.selectedIndex.value * tabWidth) + 6 * widthScaleFactor;
          
          //   return Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 21 * widthScaleFactor),
          //     child: Container(
          //       height: 53 * heightScaleFactor,
          //       width: containerWidth,
          //       decoration: BoxDecoration(
          //         color: AppColors.settingColor,
          //         borderRadius: BorderRadius.circular(12 * widthScaleFactor),
          //       ),
          //       child: Stack(
          //         children: [
          //           /// background highlight (green)
          //           AnimatedPositioned(
          //             duration: const Duration(milliseconds: 250),
          //             curve: Curves.easeInOut,
          //             left: left,
          //             top: 5.5 * heightScaleFactor,
          //             child: Container(
          //               height: 42 * heightScaleFactor,
          //               width: tabWidth - (12 * widthScaleFactor), // thoda gap ke liye
          //               decoration: BoxDecoration(
          //                 color: AppColors.forwardColor,
          //                 borderRadius: BorderRadius.circular(12 * widthScaleFactor),
          //               ),
          //             ),
          //           ),
          
          //           /// tabs row
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: List.generate(tabs.length, (index) {
          //               return GestureDetector(
          //                 onTap: () => controller.changeTab(index),
          //                 child: SizedBox(
          //                   width: tabWidth,
          //                   child: Center(
          //                     child: Text(
          //                       tabs[index],
          //                       style: TextStyle(
          //                         fontSize: 14 * heightScaleFactor,
          //                         color: controller.selectedIndex.value == index
          //                             ? AppColors.whiteColor
          //                             : AppColors.languageColor,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               );
          //             }),
          //           ),
          //         ],
          //       ),
          //     ),
          //   );
          // }),
          
          /// 🔹 Tabs with Highlight
          Obx(() {
            int tabCount = tabs.length;
          
            // container ka width
            double containerWidth = screenSize.width - (42 * widthScaleFactor);
          
            // har tab ka equal width
            double tabWidth = containerWidth / tabCount;
          
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 21 * widthScaleFactor),
              child: Container(
                height: 53 * heightScaleFactor,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: AppColors.settingColor,
                  borderRadius: BorderRadius.circular(12 * widthScaleFactor),
                ),
                child: Stack(
                  children: [
          /// highlight background
          AnimatedAlign(
            alignment: Alignment(
              (controller.selectedIndex.value / (tabCount - 1)) * 2 - 1, 
              0,
            ),
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5 * widthScaleFactor,
                vertical: 5.5 * heightScaleFactor,
              ),
              height: 42 * heightScaleFactor,
              width: tabWidth - (14 * widthScaleFactor),
              decoration: BoxDecoration(
                color: AppColors.forwardColor,
                borderRadius: BorderRadius.circular(12 * widthScaleFactor),
              ),
            ),
          ),
          
          /// tabs row
          Row(
            children: List.generate(tabCount, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () => controller.changeTab(index),
                  child: Center(
                    child:FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              tabs[index],
              style: TextStyle(
                fontSize: 13 * heightScaleFactor,
                color: controller.selectedIndex.value == index
          ? AppColors.whiteColor
          : AppColors.languageColor,
              ),
            ),
          )
          
                  ),
                ),
              );
            }),
          ),
                  ],
                ),
              ),
            );
          }),
          
              SizedBox(height: 12 * heightScaleFactor),
          
              /// 🔹 Tab Screens
              Obx(() => screens[controller.selectedIndex.value]),
            ],
          ),
        ),
      ),
    );
  }
}
