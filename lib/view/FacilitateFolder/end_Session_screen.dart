// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/components/players_Row.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/players_container.dart';
// import 'package:scorer/widgets/session_useable_row.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class EndSessionScreen extends StatelessWidget {
//   const EndSessionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
//         child: Column(
//           children: [
//              Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding:  EdgeInsets.only(left: 30,top: 20,right: 30),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         BoldText(text: "Eranove Odyssey – Team A",selectionColor: AppColors.blueColor,fontSize: 16,),
//                         // UseableContainer(text: "Phase 2",color: AppColors.orangeColor,),
//                         // SizedBox(width: 8,),
//                                               UseableContainer(text: "Completed",color: AppColors.forwardColor,width: 85,),
//                         // UseableContainer(text: "Active",color: AppColors.forwardColor,)
//                       ],
//                     ),
//                   ),
          
//                  Padding(
//                    padding: EdgeInsets.only(top:15),
//                    child: Image.asset(Appimages.house1,height: 85,width: 100,),
//                  )
//                 ],
//               ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Column(
//             children: [
//         Container(
//           height: 74,
//           width: 337,
//           decoration: BoxDecoration(
//             border: Border.all(color: AppColors.greyColor,width: 1.7),
//             borderRadius: BorderRadius.circular(24)
//           ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 17),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               BoldText(text: "Export by",fontSize: 22,),
//               Row(
//                 children: [
//                   BoldText(text: "Phase",fontSize: 22,),
//                   SizedBox(width: 7
//                   ,),
//                   Icon(Icons.arrow_drop_down,color: AppColors.forwardColor,)
//                 ],
//               )
//             ],
//           ),
//         ),
//         ),
//         SizedBox(height: 13,),
//         LoginButton(text: "Export PDF",ishow: true,image: Appimages.export,color: AppColors.selectLangugaeColor,),
//         SizedBox(height: 20,),
//         // Image.asset(Appimages.Crown)
//         SvgPicture.asset(Appimages.Crown),
//         SizedBox(height: 21,),
//         BoldText(text: "Eranove Odyssey – Team A",fontSize: 16,selectionColor: AppColors.blueColor,),
//         SizedBox(height: 5,),
//         MainText(text: "Session completed successfully",fontSize: 14,),
//         SizedBox(height: 21,),
//         Row(
//           children: [
//              Expanded(
//                     child: Container(
//                       width: 105,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.greyColor,width: 1.7),
//                         borderRadius: BorderRadius.circular(24)
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           BoldText(text: "2:98",selectionColor: AppColors.redColor,fontSize: 24,),
//                           BoldText(text: "   Time\nDuration",fontSize: 16,selectionColor: AppColors.blueColor,)
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10,),
//                   Expanded(
//                     child: Container(
//                       width: 105,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.greyColor,width: 1.7),
//                         borderRadius: BorderRadius.circular(24)
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           BoldText(text: "12",selectionColor: AppColors.forwardColor,fontSize: 24,),
//                           BoldText(text: " Active\nPlayers",fontSize: 16,selectionColor: AppColors.blueColor,)
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10,),
//                   Expanded(
//                     child: Container(
//                       width: 105,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.greyColor,width: 1.7),
//                         borderRadius: BorderRadius.circular(24)
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           BoldText(text: "03",selectionColor: AppColors.redColor,fontSize: 24,),
//                           BoldText(text: "  Total\nPhases",fontSize: 16,selectionColor: AppColors.blueColor,)
//                         ],
//                       ),
//                     ),
//                   )
//           ],
//         ),
//         SizedBox(height: 33,),
//         SvgPicture.asset(Appimages.tropy),
//         SizedBox(height: 20,),
//         MainText(text: "Rewards Unlocked",fontSize: 16,fontFamily: "gotham",),
//         SizedBox(height: 16,),
//         BoldText(text: "Strategic Thinker",fontSize: 16,selectionColor: AppColors.blueColor,),
//         SizedBox(height: 12,),
//         Image.asset(Appimages.badge),
//         SizedBox(height: 10,),
//         BoldText(text: "Badge",fontSize: 16,selectionColor: AppColors.blueColor,),
//         SizedBox(height: 30,),
//         Container(
//           height: 350,
//           width: 330,
//           decoration: BoxDecoration(
//             border: Border.all(color: AppColors.greyColor,width: 1.5),
//             borderRadius: BorderRadius.circular(24)
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               children: [SizedBox(height: 20,),
//                 BoldText(text: "Session Statistics",selectionColor: AppColors.blueColor,fontSize: 16,),
//                 SizedBox(height: 30,),
//             SessionUseableRow(iamge: Appimages.phone1, text: "Average Score", text2: "Across all players", tex3: "2,890", tex4: "pts  ")
//                ,
//                SizedBox(height: 25),
//             SessionUseableRow(iamge: Appimages.phone2, text: "Top Performer", text2: "Highest scoring player", tex3: "Alex M.", tex4: "2890 points")
//    ,SizedBox(height: 25),
//             SessionUseableRow(iamge: Appimages.phone3, text: "Completion Rate", text2: "Players who finished", tex3: "100%", tex4: "12/12 players")
//    ,SizedBox(height: 25),
//             SessionUseableRow(iamge: Appimages.phone4, text: "Participation Rate", text2: "Participation Rate", tex3: "100%", tex4: "Very high")


//               ],
//             ),
//           ),
//         ),
//         SizedBox(height: 85,), PlayersRow(isTeamSelected: false),
//         SizedBox(height: 90,),

//         PlayersContainers(text1: "2", text2: "Sarah J.", image: Appimages.play2,
//               icon: Icons.keyboard_arrow_down_outlined,iconColor: AppColors.brownColor,text4: "2,890 pts",ishow: true,
//               containerColor: AppColors.greyColor,
//               leftPadding: 20,
//               ),
//               SizedBox(height: 10,),
//               PlayersContainers(text1: "3", text2: "Mike C.", image: Appimages.play5,
//               icon: Icons.keyboard_arrow_down_outlined,iconColor: AppColors.brownColor,text4: "2,180 pts",ishow: true,
//               containerColor: AppColors.orangeColor,
//               leftPadding: 20,
//               ),
//               SizedBox(height: 10,),
//               PlayersContainers(
//       text1: "1",
//       text2:  "Alex M.", // yahan handle hoga
//       image: Appimages.facil2,
//       icon: Icons.keyboard_arrow_up_outlined,
//       iconColor: AppColors.arrowColor,
//       text4: "2,890 pts",
//       ishow: true,
//       containerColor: AppColors.yellowColor,
//       leftPadding: 20,
//     ),
//     SizedBox(height: 30,),
//     CreateContainer(text: "View Full Ranking",width: 148,),
//     SizedBox(height: 20,),
//     Container(
// width: 336,
// height: 256,
// decoration: BoxDecoration(
//   border: Border.all(color: AppColors.greyColor,width: 1.5),
//   borderRadius: BorderRadius.circular(24)
// ),
// child: Padding(
//   padding: EdgeInsets.symmetric(horizontal: 16),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       SizedBox(height: 30,),
//       BoldText(text: "Phase Breakdown",fontSize: 16,selectionColor: AppColors.blueColor,),
//       SizedBox(height: 19,),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Container(
//                 height: 24,
//                 width: 24,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Icon(Icons.check,color: AppColors.whiteColor,size: 15,),
//               ),
//               SizedBox(width: 6,),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MainText(text: "Phase 1 - Strategy",fontSize: 14,),
//                   MainText(text: "1h 12 minutes",color: AppColors.teamColor,fontSize: 12,height: 1,)
//                 ],
//               ),
             
//             ],
//           ),
//           MainText(text: "Avg: 850 pts",fontSize: 13,)
//         ],
//       )
//       ,SizedBox(height: 19,),
//        Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Container(
//                 height: 24,
//                 width: 24,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Icon(Icons.check,color: AppColors.whiteColor,size: 15,),
//               ),
//               SizedBox(width: 6,),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MainText(text: "Phase 2 - Execution",fontSize: 14,),
//                   MainText(text: "1h 12 minutes",color: AppColors.teamColor,fontSize: 12,height: 1,)
//                 ],
//               ),
             
//             ],
//           ),
//           MainText(text: "Avg: 850 pts",fontSize: 13,)
//         ],
//       ),SizedBox(height: 19,),
//        Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Container(
//                 height: 24,
//                 width: 24,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Icon(Icons.check,color: AppColors.whiteColor,size: 15,),
//               ),
//               SizedBox(width: 6,),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MainText(text: "Phase 3 - Strategy",fontSize: 14,),
//                   MainText(text: "1h 12 minutes",color: AppColors.teamColor,fontSize: 12,height: 1,)
//                 ],
//               ),
             
//             ],
//           ),
//           MainText(text: "Avg: 850 pts",fontSize: 13,)
//         ],
//       )
//     ],
//   ),
// ),

//     ),
// SizedBox(height: 41,),
//     LoginButton(text: "Create New Session",ishow: true,color: AppColors.redColor,icon: Icons.add,imageHeight: 35,imageWidth: 35,),
//     SizedBox(height: 13,),
//     LoginButton(text: "Share Results",color: AppColors.forwardColor,image: Appimages.move,ishow: true,)
//             ],
//           ),
//         )
//           ],
//         ),
//       ))),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/custom_session_container.dart';
import 'package:scorer/components/custom_time_row.dart';
import 'package:scorer/components/phase_breakdown_container.dart';
import 'package:scorer/components/players_Row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/useable_container.dart';

class EndSessionScreen extends StatelessWidget {
  const EndSessionScreen({super.key});

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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30 * widthScaleFactor,
                        top: 20 * heightScaleFactor,
                        right: 30 * widthScaleFactor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldText(
                            text: "Eranove Odyssey – Team A",
                            selectionColor: AppColors.blueColor,
                            fontSize: 16 * widthScaleFactor,
                          ),
                          UseableContainer(
                            text: "completed".tr,
                            color: AppColors.forwardColor,
                            width: 85 * widthScaleFactor,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15 * heightScaleFactor),
                      child: Image.asset(
                        Appimages.house1,
                        height: 85 * heightScaleFactor,
                        width: 100 * widthScaleFactor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
                  child: Column(
                    children: [
                      Container(
                        height: 74 * heightScaleFactor,
                        width: 337 * widthScaleFactor,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyColor,
                            width: 1.7 * widthScaleFactor,
                          ),
                          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17 * widthScaleFactor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BoldText(
                                text: "export_by".tr,
                                fontSize: 22 * widthScaleFactor,
                              ),
                              Row(
                                children: [
                                  BoldText(
                                    text: "phase".tr,
                                    fontSize: 22 * widthScaleFactor,
                                  ),
                                  SizedBox(width: 7 * widthScaleFactor),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: AppColors.forwardColor,
                                    size: 24 * widthScaleFactor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 13 * heightScaleFactor),
                      LoginButton(
                fontSize: 19,

                        text: "export_pdf".tr,
                        ishow: true,
                        image: Appimages.export,
                        color: AppColors.selectLangugaeColor,
                        // height: 74 * heightScaleFactor,
                      ),
                      SizedBox(height: 20 * heightScaleFactor),
                      SvgPicture.asset(
                        Appimages.Crown,
                        height: 60 * heightScaleFactor,
                        width: 60 * widthScaleFactor,
                      ),
                      SizedBox(height: 21 * heightScaleFactor),
                      BoldText(
                        text: "Eranove Odyssey – Team A",
                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.blueColor,
                      ),
                      SizedBox(height: 5 * heightScaleFactor),
                      MainText(
                        text: "session_completed".tr,
                        fontSize: 14 * widthScaleFactor,
                      ),
                      SizedBox(height: 21 * heightScaleFactor),
                      CustomTimeRow(heightScaleFactor: heightScaleFactor, widthScaleFactor: widthScaleFactor),
                      SizedBox(height: 33 * heightScaleFactor),
                      SvgPicture.asset(
                        Appimages.tropy,
                        height: 60 * heightScaleFactor,
                        width: 60 * widthScaleFactor,
                      ),
                      SizedBox(height: 20 * heightScaleFactor),
                      MainText(
                        text: "rewards_unlocked".tr,
                        fontSize: 16 * widthScaleFactor,
                        fontFamily: "gotham",
                      ),
                      SizedBox(height: 16 * heightScaleFactor),
                      BoldText(
                       text: "strategic_thinker".tr,
                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.blueColor,
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      Image.asset(
                        Appimages.badge,
                        height: 147 * heightScaleFactor,
                        width: 158* widthScaleFactor,
                      ),
                      SizedBox(height: 10 * heightScaleFactor),
                      BoldText(
                        text: "badge".tr,
                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.blueColor,
                      ),
                      SizedBox(height: 30 * heightScaleFactor),
                      CustomSessionContainer(heightScaleFactor: heightScaleFactor, widthScaleFactor: widthScaleFactor),
                      SizedBox(height: 100 * heightScaleFactor),
                      PlayersRow(isTeamSelected: false),
                      SizedBox(height: 90 * heightScaleFactor),
                      PlayersContainers(
                        text1: "2",
                        text2: "Sarah J.",
                        image: Appimages.play2,
                        icon: Icons.keyboard_arrow_down_outlined,
                        iconColor: AppColors.brownColor,
                        text4: "2,890 pts",
                        ishow: true,
                        containerColor: AppColors.greyColor,
                        leftPadding: 20 * widthScaleFactor,
                      ),
                      SizedBox(height: 10 * heightScaleFactor),
                      PlayersContainers(
                        text1: "3",
                        text2: "Mike C.",
                        image: Appimages.play5,
                        icon: Icons.keyboard_arrow_down_outlined,
                        iconColor: AppColors.brownColor,
                        text4: "2,180 pts",
                        ishow: true,
                        containerColor: AppColors.orangeColor,
                        leftPadding: 20 * widthScaleFactor,
                      ),
                      SizedBox(height: 10 * heightScaleFactor),
                      PlayersContainers(
                        text1: "1",
                        text2: "Alex M.",
                        image: Appimages.facil2,
                        icon: Icons.keyboard_arrow_up_outlined,
                        iconColor: AppColors.arrowColor,
                        text4: "2,890 pts",
                        ishow: true,
                        containerColor: AppColors.yellowColor,
                        leftPadding: 20 * widthScaleFactor,
                      ),
                      SizedBox(height: 30 * heightScaleFactor),
                      CreateContainer(
                       text: "view_full_ranking".tr,
                        width: 148 * widthScaleFactor,
                      ),
                      SizedBox(height: 20 * heightScaleFactor),
                      PhaseBreakDownContainer(widthScaleFactor: widthScaleFactor, heightScaleFactor: heightScaleFactor),
                      SizedBox(height: 41 * heightScaleFactor),
                      LoginButton(
                        onTap: () {
  Get.toNamed(RouteName.createNewSessionScreen);
},
                        text: "create_new_session".tr,
                        ishow: true,
                        fontSize: 19,

                        color: AppColors.redColor,
                        icon: Icons.add,
                        imageHeight: 35 * heightScaleFactor,
                        imageWidth: 35 * widthScaleFactor,
                      ),
                      SizedBox(height: 13 * heightScaleFactor),
                      LoginButton(
                        fontSize: 19,
                        text: "share_results".tr,
                        color: AppColors.forwardColor,
                        image: Appimages.move,
                        ishow: true,
                        // height: 74 * heightScaleFactor,
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
