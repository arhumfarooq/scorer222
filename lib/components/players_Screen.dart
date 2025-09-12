// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/all_players_container.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';
// import 'package:scorer/widgets/useable_textrow.dart';

// class PlayersScreen extends StatelessWidget {
//   const PlayersScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(right: 32),
//               child: Row(
//                 children: [
//                 Image.asset(Appimages.group),
              
//                 Expanded(
//                   child: Container(
//                     width: 108,
//                     height: 116,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: AppColors.greyColor,width: 1.7),
//                       borderRadius: BorderRadius.circular(24)
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         BoldText(text: "12",selectionColor: AppColors.forwardColor,fontSize: 24,),
//                         BoldText(text: "Active\nPlayers",fontSize: 16,selectionColor: AppColors.blueColor,)
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10,),
//                 Expanded(
//                   child: Container(
//                     width: 108,
//                     height: 116,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: AppColors.greyColor,width: 1.7),
//                       borderRadius: BorderRadius.circular(24)
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         BoldText(text: "02",selectionColor: AppColors.redColor,fontSize: 24,),
//                         BoldText(text: "Inactive\nPlayers",fontSize: 16,selectionColor: AppColors.blueColor,)
//                       ],
//                     ),
//                   ),
//                 )
              
//                 ],
//               ),
              
//             ),
//             SizedBox(height: 30,),
//           Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
                
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   BoldText(text: "All Players",fontSize: 16,selectionColor: AppColors.blueColor,),
//                   Row(
//                     children: [
//                       SvgPicture.asset(Appimages.filter),
//                       SizedBox(width: 6,),
//                   BoldText(text: "Filter",fontSize: 16,selectionColor: AppColors.blueColor,),
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(height: 21,),
//              AllPlayersContainer(text: "Alex Martinez", text2: "Joined 2:35 PM", image: Appimages.play3),
//             SizedBox(height: 9,),
//              CreateContainer(
//               right: 30,
// width: 106,
//               text: "Team Alpha",
//              ),SizedBox(height: 20,),
//              AllPlayersContainer(text: "Sarah Johnson", text2: "Joined 2:35 PM", image: Appimages.player2),
//             SizedBox(height: 9,),
//              CreateContainer(
//               textColor: AppColors.purpleColor,
//               borderColor: AppColors.purpleColor,
//               containerColor: AppColors.lightPurpleColor,
//               right: 30,
// width: 106,
//               text: "Team Beta",
//              ),SizedBox(height: 20,),
//               AllPlayersContainer(text: "Sarah Johnson", text2: "Joined 2:35 PM", image: Appimages.prince2),
//             SizedBox(height: 9,),
              
//              CreateContainer(
//                textColor: AppColors.orangeColor,
//               borderColor: AppColors.orangeColor,
//               containerColor: AppColors.lightOrangeColor.withOpacity(0.5),
//               right: 30,
// width: 106,
//               text: "Team Gamma",
//              ),SizedBox(height: 20,),

//               AllPlayersContainer(text: "Alex Martinez", text2: "Joined 2:35 PM", image: Appimages.play3),
//             SizedBox(height: 9,),
//              CreateContainer(
//               right: 30,
// width: 106,
//               text: "Team Alpha",
//              ),
// Container(
//   height: 190,
//   width: 376,
//   decoration: BoxDecoration(
//     border: Border.all(color: AppColors.greyColor,width: 1.7),
//     borderRadius: BorderRadius.circular(24),

//   ),
//   child: Padding(
//     padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 31),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//        BoldText(text: "Team Distribution",selectionColor: AppColors.blueColor,fontSize: 16,),
// SizedBox(height: 4,),
//        UseableTextrow(color: AppColors.forwardColor, text: "Team Beta",text1: "4 Players",) ,
//        SizedBox(height: 5,),
      
//        UseableTextrow(color: AppColors.forwardColor2, text: "Team Gamma",text1: "4 Players",) ,
//        SizedBox(height: 5,),
      
//        UseableTextrow(color: AppColors.forwardColor3, text: "Team Alpha",text1: "4 Players",) 

//       ],
//     ),
//   ),
// ),
// SizedBox(height: 25,),
// LoginButton(text: "Add Player",image: Appimages.personadd,ishow: true,),
// SizedBox(height: 13,),
// LoginButton(text: "View Responses",image: Appimages.eye,color: AppColors.forwardColor,ishow: true,),
// SizedBox(height: 13,),
// LoginButton(text: "Send Alert",image: Appimages.noti,color: AppColors.redColor,ishow: true,),
// SizedBox(height: 13,),

//             //  SizedBox(height: 100,)
//               ],
//             ),
//           )
//           ],
//         ),

//          Positioned(
//           right: 0,
//           top: 200,
//           child: Container(
//             width: 150,
//             height: 55,
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
//                   padding: const EdgeInsets.only(left: 40, top: 10),
//                   child: MainText(
//                     text: "Team Alpha",
//                     fontFamily: "gotham",
//                     fontSize: 14,
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
//                           color: AppColors.arrowColor),
//                       MainText(
//                         text: "2,890 pts   ",
//                         fontFamily: "gotham",
//                         fontSize: 14,
//                         height: 0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//          Positioned(
//           top: 163,
//           left: 200,
//           child: Image.asset(Appimages.man3,width: 62,height: 101,)),

//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/widgets/all_players_container.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/useable_textrow.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Converted fixed values to proportional values based on screen size
    final activeInactiveBoxWidth = screenWidth * 0.28;
    final activeInactiveBoxHeight = screenHeight * 0.14;
    final topBoxSpacing = screenWidth * 0.03;
    final topPadding = screenWidth * 0.08;
    final verticalSpacing = screenHeight * 0.03;
    final sectionPadding = screenWidth * 0.08;
    final allPlayersContainerSpacing = screenHeight * 0.01;
    final teamDistributionBoxWidth = screenWidth * 0.9;
    final teamDistributionBoxHeight = screenHeight * 0.25;
    final buttonHeight = screenHeight * 0.06;
    final positionedBoxWidth = screenWidth * 0.38;
    final positionedBoxHeight = screenHeight * 0.07;
    final positionedIconImageWidth = screenWidth * 0.15;
    final positionedIconImageHeight = screenHeight * 0.14;
    final positionedTextPadding = screenWidth * 0.1;
    final positionedTextFontSize = screenWidth * 0.035;

    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.05,
                right: topPadding,
                left: topPadding * 0.4,
              ),
              child: Row(
                children: [
                  Image.asset(
                    Appimages.group,
                    width: screenWidth * 0.3,
                  ),
                  SizedBox(width: topBoxSpacing),
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
                            selectionColor: AppColors.forwardColor,
                            fontSize: screenWidth * 0.06,
                          ),
                       BoldText(
                        textAlign: TextAlign.center,
  text: "active_players".tr,
  fontSize: screenWidth * 0.04,
  selectionColor: AppColors.blueColor,
),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: topBoxSpacing),
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
                            text: "02",
                            selectionColor: AppColors.redColor,
                            fontSize: screenWidth * 0.06,
                          ),
                         BoldText(
                        textAlign: TextAlign.center,
                          
  text: "inactive_players".tr,
  fontSize: screenWidth * 0.04,
  selectionColor: AppColors.blueColor,
),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: verticalSpacing),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sectionPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     BoldText(
  text: "all_players".tr,
  fontSize: screenWidth * 0.04,
  selectionColor: AppColors.blueColor,
),
                      Row(
                        children: [
                          SvgPicture.asset(Appimages.filter),
                          SizedBox(width: screenWidth * 0.015),
                          BoldText(
  text: "filter".tr,
  fontSize: screenWidth * 0.04,
  selectionColor: AppColors.blueColor,
),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: allPlayersContainerSpacing),
                  AllPlayersContainer(text: "Alex Martinez", text2: "Joined 2:35 PM", image: Appimages.play3),
                  SizedBox(height: allPlayersContainerSpacing),
                  CreateContainer(
                    right: screenWidth * 0.08,
                    width: screenWidth * 0.25,
                    text: "team_alpha".tr
                  ),
                  SizedBox(height: allPlayersContainerSpacing * 2),
                  AllPlayersContainer(text: "Sarah Johnson", text2: "Joined 2:35 PM", image: Appimages.player2),
                  SizedBox(height: allPlayersContainerSpacing),
                  CreateContainer(
                    textColor: AppColors.purpleColor,
                    borderColor: AppColors.purpleColor,
                    containerColor: AppColors.lightPurpleColor,
                    right: screenWidth * 0.08,
                    width: screenWidth * 0.25,
                    text: "team_beta".tr
                  ),
                  SizedBox(height: allPlayersContainerSpacing * 2),
                  AllPlayersContainer(text: "Sarah Johnson", text2: "Joined 2:35 PM", image: Appimages.prince2),
                  SizedBox(height: allPlayersContainerSpacing),
                  CreateContainer(
                    textColor: AppColors.orangeColor,
                    borderColor: AppColors.orangeColor,
                    containerColor: AppColors.lightOrangeColor.withOpacity(0.5),
                    right: screenWidth * 0.08,
                    width: screenWidth * 0.25,
                    text: "team_gamma".tr
                  ),
                  SizedBox(height: allPlayersContainerSpacing * 2),
                  AllPlayersContainer(text: "Alex Martinez", text2: "Joined 2:35 PM", image: Appimages.play3),
                  SizedBox(height: allPlayersContainerSpacing),
                  CreateContainer(
                    right: screenWidth * 0.08,
                    width: screenWidth * 0.25,
                    text: "team_alpha".tr
                  ),
                  // SizedBox(height: ,)
                  SizedBox(height: allPlayersContainerSpacing * 2),
        
                  Container(
                    width: screenWidth * 0.9,
                    height: teamDistributionBoxHeight,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyColor, width: 1.7),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         BoldText(
  text: "team_distribution".tr,
  selectionColor: AppColors.blueColor,
  fontSize: screenWidth * 0.04,
),
                          SizedBox(height: screenHeight * 0.005),
                          UseableTextrow(
                            color: AppColors.forwardColor,
                            text:"team_beta".tr,
                            text1: "4 Players",
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          UseableTextrow(
                            color: AppColors.forwardColor2,
                            text: "team_gamma".tr,
                            text1: "4 Players",
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          UseableTextrow(
                            color: AppColors.forwardColor3,
                            text: "team_alpha".tr,
                            text1: "4 Players",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: verticalSpacing),
                  Center(child: LoginButton(
                    fontSize: 18,
                    text: "add_player".tr, image: Appimages.personadd, ishow: true)),
                  SizedBox(height: allPlayersContainerSpacing),
                  Center(
                    child: LoginButton(
                      onTap: () {
                        Get.toNamed(RouteName.viewResponsesScreen);
                      },
                      fontSize: 18,
                      text: "view_responses".tr,
                      image: Appimages.eye,
                      color: AppColors.forwardColor,
                      ishow: true,
                    ),
                  ),
                  SizedBox(height: allPlayersContainerSpacing),
                  Center(
                    child: LoginButton(
                      fontSize: 18,
                      text: "send_alert".tr,
                      image: Appimages.noti,
                      color: AppColors.redColor,
                      ishow: true,
                    ),
                  ),
                  SizedBox(height: allPlayersContainerSpacing),
                ],
              ),
            ),
          ],
        ),
        // Positioned(
        //   right: 0,
        //   top: screenHeight * 0.2,
        //   child: Container(
        //     width: positionedBoxWidth,
        //     height: positionedBoxHeight,
        //     decoration: BoxDecoration(
        //       borderRadius: const BorderRadius.only(
        //         topLeft: Radius.circular(10),
        //         bottomLeft: Radius.circular(10),
        //       ),
        //       color: AppColors.forwardColor,
        //     ),
        //     child: Padding(
        //       padding: EdgeInsets.only(left: positionedTextPadding, top: screenHeight * 0.015),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           MainText(
        //             text: "Team Alpha",
        //             fontFamily: "gotham",
        //             fontSize: positionedTextFontSize,
        //             color: AppColors.whiteColor,
        //             height: 0,
        //           ),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.end,
        //             children: [
        //               Icon(
        //                 Icons.keyboard_arrow_up_outlined,
        //                 color: AppColors.arrowColor,
        //                 size: positionedTextFontSize * 1.5,
        //               ),
        //               MainText(
        //                 text: "2,890 pts  ",
        //                 fontFamily: "gotham",
        //                 fontSize: positionedTextFontSize,
        //                 height: 0,
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // Positioned(
        //   top: screenHeight * 0.17,
        //   left: screenWidth * 0.5,
        //   child: Image.asset(
        //     Appimages.man3,
        //     width: positionedIconImageWidth,
        //     height: positionedIconImageHeight,
        //   ),
        // ),
          Positioned(
          right: 0,
          top: screenHeight * 0.2,
          child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
        ),

        /// Player Image
      
      
      ],
    );
  }
} 