// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_dashboard_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class UserFacilitateDetailedScree extends StatelessWidget {
//   const UserFacilitateDetailedScree({super.key});

//   @override
//   Widget build(BuildContext context) {
//      final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;
//     final activeInactiveBoxHeight = screenHeight * 0.14;


//     // A base height and width to scale from, e.g., a common phone (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20,),
//         SizedBox(
//           height: 135, // 👈 image ki height ke barabar
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//         // Arrow thoda upar left
//         Positioned(
//           left: 0,
//           top: 20, // 👈 is value ko adjust karke arrow ka vertical position control karo
//           child: SvgPicture.asset(
//             Appimages.arrowback,
//             colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//             width: 24 * widthScaleFactor,
//             height: 20 * heightScaleFactor,
//           ),
//         ),
        
//         // Player image center
//         Center(
//           child: Image.asset(
//             Appimages.facil2,
//             width: 101,
//             height: 135,
//             fit: BoxFit.contain,
//           ),
//         ),
//             ],
//           ),
//         ),
//         BoldText(text: "John Smith",fontSize: 16,selectionColor: AppColors.blueColor,),
//         MainText(text: "john.smith@company.com",fontSize: 14,height: 1.4,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MainText(text: "Last Login",fontSize: 14,color: AppColors.redColor,),
//             SizedBox(width: 3,),
//             Container(width: 9,height: 9,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: AppColors.redColor
//             ),
//             ),
//             SizedBox(width: 3,),
        
//              MainText(text: "Jan 15, 2025",fontSize: 14,color: AppColors.redColor,),
//             // SizedBox(width: 3,),
//           ],
//         ),
//         UseableContainer(text: "Active",color: AppColors.forwardColor,),
//         SizedBox(height: 24,),
        
//         Row(
//           children: [
//          Expanded(
//                       child: Container(
//                         height: activeInactiveBoxHeight,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7),
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "47",
//                               selectionColor: AppColors.redColor,
//                               fontSize: screenWidth * 0.06,
//                             ),
//                             BoldText(textAlign: TextAlign.center,
//                               text: "Sessions\nLed",
//                               fontSize: screenWidth * 0.04,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                      Expanded(
//                       child: Container(
//                         height: activeInactiveBoxHeight,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7),
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "285",
//                               selectionColor: AppColors.forwardColor,
//                               fontSize: screenWidth * 0.06,
//                             ),
//                             BoldText(
//                               textAlign: TextAlign.center,
//                               text: "Manage\nPlayers",
//                               fontSize: screenWidth * 0.04,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                      Expanded(
//                       child: Container(
//                         height: activeInactiveBoxHeight,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7),
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "96%",
//                               selectionColor: AppColors.redColor,
//                               fontSize: screenWidth * 0.06,
//                             ),
//                             BoldText(
//                               textAlign: TextAlign.center,
//                               text: "Success\nRate",
//                               fontSize: screenWidth * 0.04,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//           ],
//         ),
//         SizedBox(height: 33,),
//         BoldText(text: "Account Information",selectionColor: AppColors.blueColor,fontSize: 16,),
//         SizedBox(height: 20,),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: Container(
//             height: 177,
//             width: 376,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               border: Border.all(color: AppColors.greyColor,width: 1.5)
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   SizedBox(height: 15,),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Email",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                           BoldText(
//                             text: "john.smith@company.com",
//                             fontSize: 16 * heightScaleFactor,
//                             selectionColor: AppColors.blueColor,
//                           ),
                        
//                         ],
//                       ),
//                       SizedBox(height: 10 * heightScaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Phone",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                           BoldText(
//                             text: "+1 (555) 987-6543",
//                             fontSize: 16 * heightScaleFactor,
//                             selectionColor: AppColors.blueColor,
//                           ),
                         
//                         ],
//                       ),
//                       SizedBox(height: 10 * heightScaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Join Date",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                           BoldText(
//                             text: "September 8, 2024",
//                             fontSize: 16 * heightScaleFactor,
//                             selectionColor: AppColors.blueColor,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 10 * heightScaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Player Level",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                         CreateContainer(text: "Level 3",
//                         top: 7,
//                         right: -19,
//                         )
//                         ],
//                       ),
          
                    
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: 20,),
//         BoldText(text: "Recent Sessionsa",selectionColor: AppColors.blueColor,fontSize: 16,),
//         // Column ke andar jahan tum last me container use kar rahe ho
//       CustomDashboardContainer(
//         // horizontal: 0,
//         mainWidth: 376,
//         right: 10,
//         mainHeight: 222,
//         color2: AppColors.forwardColor,
//         color1: AppColors.orangeColor,
//         heading: "Team Building Workshop",
//         text1: "Phase 2",
//         height: 9,
//         text2: "Active",
//         text6: "2nd Position",
//         smallImage: Appimages.Crown,
//         description:
//             "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
//         icon1: Icons.play_arrow,
//         text5: "12 Players",
//         isshow: true,
//       ),
//       SizedBox(height: 12,),
//       CustomDashboardContainer(
//         // horizontal: 0,
//         mainWidth: 376,
//         right: 10,
//         mainHeight: 222,
//         color2: AppColors.yellowColor,
//         color1: AppColors.redColor,
//         heading: "Team Building Workshop",
//         text1: "Phase 3",
//         height: 9,
//         text2: "Paused",
//         text6: "3rd Position",
//         smallImage: Appimages.Crown,
//         description:
//             "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
//         icon1: Icons.play_arrow,
//         text5: "12 Players",
//         isshow: true,
//       ),
//       SizedBox(height: 40,),
//       LoginButton(text: "Delete Facilitator",image: Appimages.delete,ishow: true,color: AppColors.redColor,),
//       SizedBox(height: 13,),
//       LoginButton(text: "Edit Facilitator",icon: Icons.edit,ishow: true,color: AppColors.forwardColor,),
//       SizedBox(height: 42,)
      
      
      
        
//           ],
//         ),
//       ))),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_dashboard_container.dart';
// import 'package:scorer/widgets/forward_button_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class UserAdminDetailedScree extends StatelessWidget {
//   const  UserAdminDetailedScree({super.key});

//   @override
//   Widget build(BuildContext context) {
//      final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;
//     final activeInactiveBoxHeight = screenHeight * 0.14;


//     // A base height and width to scale from, e.g., a common phone (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20,),
//         SizedBox(
//           height: 135, // 👈 image ki height ke barabar
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//         // Arrow thoda upar left
//         Positioned(
//           left: 0,
//           top: 20, // 👈 is value ko adjust karke arrow ka vertical position control karo
//           child: SvgPicture.asset(
//             Appimages.arrowback,
//             colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//             width: 24 * widthScaleFactor,
//             height: 20 * heightScaleFactor,
//           ),
//         ),
        
//         // Player image center
//         Center(
//           child: Image.asset(
//             Appimages.prince2,
//             width: 101,
//             height: 135,
//             fit: BoxFit.contain,
//           ),
//         ),
//             ],
//           ),
//         ),
//         BoldText(text: "John Smith",fontSize: 16,selectionColor: AppColors.blueColor,),
//         MainText(text: "john.smith@company.com",fontSize: 14,height: 1.4,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MainText(text: "Last Login",fontSize: 14,color: AppColors.redColor,),
//             SizedBox(width: 3,),
//             Container(width: 9,height: 9,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: AppColors.redColor
//             ),
//             ),
//             SizedBox(width: 3,),
        
//              MainText(text: "Jan 15, 2025",fontSize: 14,color: AppColors.redColor,),
//             // SizedBox(width: 3,),
//           ],
//         ),
//         UseableContainer(text: "Active",color: AppColors.forwardColor,),
//         SizedBox(height: 24,),
        
//         Row(
//           children: [
//          Expanded(
//                       child: Container(
//                         height: activeInactiveBoxHeight,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7),
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "47",
//                               selectionColor: AppColors.redColor,
//                               fontSize: screenWidth * 0.06,
//                             ),
//                             BoldText(textAlign: TextAlign.center,
//                               text: "Sessions\nLed",
//                               fontSize: screenWidth * 0.04,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                      Expanded(
//                       child: Container(
//                         height: activeInactiveBoxHeight,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7),
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "285",
//                               selectionColor: AppColors.forwardColor,
//                               fontSize: screenWidth * 0.06,
//                             ),
//                             BoldText(
//                               textAlign: TextAlign.center,
//                               text: "Manage\nPlayers",
//                               fontSize: screenWidth * 0.04,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                      Expanded(
//                       child: Container(
//                         height: activeInactiveBoxHeight,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7),
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "96%",
//                               selectionColor: AppColors.redColor,
//                               fontSize: screenWidth * 0.06,
//                             ),
//                             BoldText(
//                               textAlign: TextAlign.center,
//                               text: "Success\nRate",
//                               fontSize: screenWidth * 0.04,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//           ],
//         ),
//         SizedBox(height: 33,),
//         BoldText(text: "Account Information",selectionColor: AppColors.blueColor,fontSize: 16,),
//         SizedBox(height: 20,),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: Container(
//             height: 177,
//             width: 376,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               border: Border.all(color: AppColors.greyColor,width: 1.5)
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   SizedBox(height: 15,),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Email",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                           BoldText(
//                             text: "john.smith@company.com",
//                             fontSize: 16 * heightScaleFactor,
//                             selectionColor: AppColors.blueColor,
//                           ),
                        
//                         ],
//                       ),
//                       SizedBox(height: 10 * heightScaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Phone",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                           BoldText(
//                             text: "+1 (555) 987-6543",
//                             fontSize: 16 * heightScaleFactor,
//                             selectionColor: AppColors.blueColor,
//                           ),
                         
//                         ],
//                       ),
//                       SizedBox(height: 10 * heightScaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Join Date",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                           BoldText(
//                             text: "September 8, 2024",
//                             fontSize: 16 * heightScaleFactor,
//                             selectionColor: AppColors.blueColor,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 10 * heightScaleFactor),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(
//                             text: "Player Level",
//                             fontSize: 14 * heightScaleFactor,
//                           ),
//                         CreateContainer(text: "Level 3",
//                         top: 7,
//                         right: -19,
//                         )
//                         ],
//                       ),
          
                    
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: 20,),
//         BoldText(text: "Recent Sessionsa",selectionColor: AppColors.blueColor,fontSize: 16,),
//         // Column ke andar jahan tum last me container use kar rahe ho
//       CustomDashboardContainer(
//         // horizontal: 0,
//         mainWidth: 376,
//         right: 10,
//         mainHeight: 222,
//         color2: AppColors.forwardColor,
//         color1: AppColors.orangeColor,
//         heading: "Team Building Workshop",
//         text1: "Phase 2",
//         height: 9,
//         text2: "Active",
//         text6: "2nd Position",
//         smallImage: Appimages.Crown,
//         description:
//             "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
//         icon1: Icons.play_arrow,
//         text5: "12 Players",
//         isshow: true,
//       ),
//       SizedBox(height: 12,),
//        CustomDashboardContainer(
//         // horizontal: 0,
//         mainWidth: 376,
//         right: 10,
//         mainHeight: 222,
//         color2: AppColors.forwardColor,
//         color1: AppColors.orangeColor,
//         heading: "Team Building Workshop",
//         text1: "Phase 2",
//         height: 9,
//         text2: "Active",
//         text6: "2nd Position",
//         smallImage: Appimages.Crown,
//         description:
//             "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
//         icon1: Icons.play_arrow,
//         text5: "12 Players",
//         isshow: true,
//       ),
     
//       SizedBox(height: 42,)
      
      
      
        
//           ],
//         ),
//       ))),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_dashboard_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class UserFacilitateDetailedScree extends StatelessWidget {
  const UserFacilitateDetailedScree({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20 * widthScaleFactor),
              child: Column(
                children: [
                  SizedBox(height: 20 * heightScaleFactor),
                  SizedBox(
                    height: 135 * heightScaleFactor,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 20 * heightScaleFactor,
                          child: SvgPicture.asset(
                            Appimages.arrowback,
                            colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
                            width: 24 * widthScaleFactor,
                            height: 20 * heightScaleFactor,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                             Appimages.facil2,
                            width: 101 * widthScaleFactor,
                            height: 135 * heightScaleFactor,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  BoldText(
                    text: "John Smith",
                    fontSize: 16 * widthScaleFactor,
                    selectionColor: AppColors.blueColor,
                  ),
                  MainText(
                    text: "john.smith@company.com",
                    fontSize: 14 * widthScaleFactor,
                    height: 1.4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainText(
                         text: "last_login".tr,
                        fontSize: 14 * widthScaleFactor,
                        color: AppColors.redColor,
                      ),
                      SizedBox(width: 3 * widthScaleFactor),
                      Container(
                        width: 9 * widthScaleFactor,
                        height: 9 * widthScaleFactor,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.redColor,
                        ),
                      ),
                      SizedBox(width: 3 * widthScaleFactor),
                      MainText(
                        text: "Jan 15, 2025",
                        fontSize: 14 * widthScaleFactor,
                        color: AppColors.redColor,
                      ),
                    ],
                  ),
                  UseableContainer(
                    text: "active".tr,
                    // fontSize: 12,
                    color: AppColors.forwardColor,
                    height: 20* heightScaleFactor,
                  ),
                  SizedBox(height: 24 * heightScaleFactor),
                  Padding(
                    // padding: const EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 12 * widthScaleFactor),

                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 105,
                            height: 116 * heightScaleFactor, // Adjusted from activeInactiveBoxHeight
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BoldText(
                                  text: "47",
                                  selectionColor: AppColors.redColor,
                                  fontSize: 0.06 * screenWidth,
                                ),
                                BoldText(
                                  textAlign: TextAlign.center,
                                                                  text: "sessions_led".tr,

                                  fontSize: 0.04 * screenWidth,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10 * widthScaleFactor),
                        Expanded(
                          child: Container(
                             width: 105,
                            height: 116 * heightScaleFactor, // Adjusted from activeInactiveBoxHeight
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BoldText(
                                  text: "285",
                                  selectionColor: AppColors.forwardColor,
                                  fontSize: 0.06 * screenWidth,
                                ),
                                BoldText(
                                  textAlign: TextAlign.center,
                                                                 text:  "manage_players".tr,

                                  fontSize: 0.04 * screenWidth,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10 * widthScaleFactor),
                        Expanded(
                          child: Container(
                             width: 105,
                            height: 116 * heightScaleFactor,  // Adjusted from activeInactiveBoxHeight
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                              borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BoldText(
                                  text: "96%",
                                  selectionColor: AppColors.redColor,
                                  fontSize: 0.06 * screenWidth,
                                ),
                                BoldText(
                                  textAlign: TextAlign.center,
                                                                   text: "success_rate".tr,

                                  fontSize: 0.04 * screenWidth,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 33 * heightScaleFactor),
                  BoldText(
                                     text: "account_information".tr,

                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * widthScaleFactor,
                  ),
                  SizedBox(height: 20 * heightScaleFactor),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12 * widthScaleFactor),
                    child: Container(
                      height: 177 * heightScaleFactor,
                      width: 376 * widthScaleFactor,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                        border: Border.all(color: AppColors.greyColor, width: 1.5 * widthScaleFactor),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20 * widthScaleFactor),
                        child: Column(
                          children: [
                            SizedBox(height: 15 * heightScaleFactor),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainText(
                                                                  text:  "email".tr,

                                  fontSize: 14 * widthScaleFactor,
                                ),
                                BoldText(
                                  text: "john.smith@company.com",
                                  fontSize: 16 * widthScaleFactor,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ],
                            ),
                            SizedBox(height: 10 * heightScaleFactor),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainText(
                                                                   text:  "phone".tr,

                                  fontSize: 14 * widthScaleFactor,
                                ),
                                BoldText(
                                  text: "+1 (555) 987-6543",
                                  fontSize: 16 * widthScaleFactor,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ],
                            ),
                            SizedBox(height: 10 * heightScaleFactor),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainText(
                                                                  text: "join_date".tr,

                                  fontSize: 14 * widthScaleFactor,
                                ),
                                BoldText(
                                  text: "September 8, 2024",
                                  fontSize: 16 * widthScaleFactor,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ],
                            ),
                            SizedBox(height: 10 * heightScaleFactor),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainText(
                                 text: "facilitator_level".tr,
                                  fontSize: 14 * widthScaleFactor,
                                ),
                                CreateContainer(
                                  text: "Level 3",
                                  top: 7,
                                  right: -19,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20 * heightScaleFactor),



                  BoldText(
                                      text:  "recent_sessions".tr,

                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * widthScaleFactor,
                  ),
                  SizedBox(height: 20 * heightScaleFactor),

                  CustomDashboardContainer(
                    mainWidth: 376 * widthScaleFactor,
                    right: 10 * widthScaleFactor,
                    mainHeight: 228 * heightScaleFactor,
                    color2: AppColors.forwardColor,
                    color1: AppColors.orangeColor,
                    heading: "Team Building Workshop",
                    text1: "Phase 2",
                    height: 5* heightScaleFactor,
                    text2: "active".tr,
                    text6: "2nd Position",
                    smallImage: Appimages.Crown,
                    description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                    icon1: Icons.play_arrow,
                    text5: "12 Players",
                    isshow: true,
                  ),
                  SizedBox(height: 12 * heightScaleFactor),
                  CustomDashboardContainer(
                    mainWidth: 376 * widthScaleFactor,
                    right: 10 * widthScaleFactor,
                    mainHeight: 228 * heightScaleFactor,
                    color2: AppColors.forwardColor,
                    color1: AppColors.orangeColor,
                    heading: "Team Building Workshop",
                    text1: "Phase 2",
                    height: 5 * heightScaleFactor,
                    text2: "aative".tr,
                    text6: "2nd Position",
                    smallImage: Appimages.Crown,
                    description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                    icon1: Icons.play_arrow,
                    text5: "12 Players",
                    isshow: true,
                  ),

                  SizedBox(height: 20 * heightScaleFactor),
LoginButton(text: "Delete Facilitator",ishow: true,image: Appimages.delete,fontSize: 20,color: AppColors.redColor,),
   SizedBox(height: 20 * heightScaleFactor),
LoginButton(text: "Edit Facilitator",ishow: true,icon: Icons.edit,fontSize: 20,color: AppColors.forwardColor,),
                  SizedBox(height: 42 * heightScaleFactor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}