// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:scorer/components/adminside/admin_team_progress.dart';
// import 'package:scorer/components/playerside/leader_stack_container.dart';
// import 'package:scorer/components/team_progress_Container.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/game_select_controller.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/custom_stratgy_container.dart';
// import 'package:scorer/widgets/filter_useable_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/pause_container.dart';
// import 'package:scorer/widgets/players_container.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class GameStart1Screen extends StatelessWidget {
//   final GameSelectController controller = Get.put(GameSelectController());
//    GameStart1Screen({super.key});

   

//   @override
//   Widget build(BuildContext context) {
    
//         final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     // Common scaling
//     final verticalSpacing = screenHeight * 0.02;
//     final horizontalPadding = screenWidth * 0.05;
//     final contentWidth = screenWidth * 0.9;
//     // final screenWidth = MediaQuery.of(context).size.width;
//     // final screenHeight = MediaQuery.of(context).size.height;
//        final Size screenSize = MediaQuery.of(context).size;
//     final double baseHeight = 812.0;
//     final double baseWidth = 414.0;
//     final double heightScaleFactor = screenSize.height / baseHeight;
//     final double widthScaleFactor = screenSize.width / baseWidth;
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30,right: 10),
//                   child: Row(
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Image.asset(Appimages.player2,height: 63,width: 50, ),
//                       Expanded(child: Center(child: BoldText(text: "Team Alpha",fontSize: 22,))),
//                       Image.asset(Appimages.house1,height: 63,width: 80 ),
            
                    
                        
//                     ],
//                   ),
//                 ),
//                   Column(
//                     children: [
//                       Stack(
                      
//                         clipBehavior: Clip.none,
//                             children: [
                             
//                               Image.asset(Appimages.group,height: 181,width: 209,),
//                                Positioned(
//                                 bottom: 15,
//                                 right:35,
//                                 child: CreateContainer(text: "5 Phases",width: 84,)),
//                             ],
//                           ),
//                           BoldText(text: "Team Building Workshop",fontSize: 16,selectionColor: AppColors.blueColor,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SvgPicture.asset(Appimages.person),
//                               SizedBox(width: 8,),
//                               MainText(text: "Facilitator: Sarah Johnson",fontSize: 14,)
//                             ],
//                           ),
                  
//                          Padding(
//                            padding: const EdgeInsets.symmetric(horizontal: 13),
//                            child: Container(
//                                 height: 381 * heightScaleFactor,
//                                 width: 376 * widthScaleFactor,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: AppColors.greyColor, width: 1.5),
//                                   borderRadius: BorderRadius.circular(24 * widthScaleFactor),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                          top: 17 * heightScaleFactor,
//                                          right: 21 * widthScaleFactor,
//                                          left: 20 * widthScaleFactor,
//                                   ),
//                                   child: Column(
//                                          children: [
//                                            Row(
//                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                              children: [
//                                                Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               BoldText(
//                                 text: "Current Phase",
//                                 fontSize: 16 * heightScaleFactor,
//                                 selectionColor: AppColors.blueColor,
//                               ),
//                               Row(
//                                 children: [
//                                   UseableContainer(
//                                     text: "Phase 2",
//                                     color: AppColors.orangeColor,
//                                     fontSize: 12 * heightScaleFactor,
//                                   ),
//                                   SizedBox(width: 10 * widthScaleFactor),
//                                   MainText(
//                                     text: "Strategy Building",
//                                     fontSize: 14 * heightScaleFactor,
//                                   )
//                                 ],
//                               )
//                             ],
//                                                ),
//                                              CircularPercentIndicator(
//                                              radius: 40.0, // circle ka size
//                                              lineWidth: 4.0, // border ki thickness
//                                              percent: 0.7, // yaha aap progress set karoge (0.0 to 1.0)
//                                              animation: true,
//                                              animationDuration: 500,
//                                              circularStrokeCap: CircularStrokeCap.round,
//                                              backgroundColor: Colors.transparent,
//                                              progressColor: AppColors.forwardColor,
//                                              center: Column(
//                                                mainAxisAlignment: MainAxisAlignment.center,
//                                                children: [
//                              BoldText(
//                                   text: "12:32",
//                                   fontSize: screenWidth * 0.05,
//                                   selectionColor: AppColors.blueColor),
//                               MainText(
//                                   text: "Remaining",
//                                   fontSize: screenWidth * 0.03,
//                                   height: 1),
//                                                ],
//                                              ),
//                                            ),
//                                              ],
//                                            ),
//                                             SizedBox(height: 20 * heightScaleFactor),
//                                            MainText(text: "Team collaboration and strategic planning phase",fontSize: 12,),
//                                            SizedBox(height: 15 * heightScaleFactor),
         
//           Obx(() => Row(
//             children: [
//               // First circle
//               Container(
//           height: 20,
//           width: 20,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: AppColors.forwardColor,
//           ),
//           child: Center(
//             child: Icon(Icons.check, size: 17, color: AppColors.whiteColor),
//           ),
//               ),
//               SizedBox(width: 7),
//               Container(
//           width: 100,
//           height: 4,
//           decoration: BoxDecoration(
//             color: AppColors.forwardColor,
//             borderRadius: BorderRadius.circular(20),
//           ),
//               ),
//               SizedBox(width: 7),
          
//               // Second circle
//               controller.currentPhase.value >= 1  
//             ? Container(
//                 height: 20,
//                 width: 20,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Center(
//                   child: Icon(Icons.check, size: 17, color: AppColors.whiteColor),
//                 ),
//               )
//             : Container(
//                 height: 20,
//                 width: 20,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.orangeColor,
//                 ),
//                 child: Center(
//                   child: MainText(text: "2", color: AppColors.whiteColor, fontSize: 11),
//                 ),
//               ),
//               SizedBox(width: 7),
//               Container(
//           width: 100,
//           height: 4,
//           decoration: BoxDecoration(
//             color: controller.currentPhase.value >= 2 ? AppColors.forwardColor : AppColors.greyColor,
//             borderRadius: BorderRadius.circular(20),
//           ),
//               ),
//               SizedBox(width: 7),
          
//               // Third circle
//               controller.currentPhase.value >= 2
//             ? Container(
//                 height: 20,
//                 width: 20,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Center(
//                   child: Icon(Icons.check, size: 17, color: AppColors.whiteColor),
//                 ),
//               )
//             : Container(
//                 height: 20,
//                 width: 20,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.greyColor,
//                 ),
//                 child: Center(
//                   child: MainText(text: "3", color: AppColors.whiteColor, fontSize: 11),
//                 ),
//               ),
//             ],
//           ))
//           ,
//           SizedBox(height: 16,),
          
//                        Obx(()=>  CustomStratgyContainer(
//                           flex1:controller.isCompleted.value?0:1 ,
//                           flex:controller.isCompleted.value?4:3 ,
          
//                           borderColor: controller.isCompleted.value?AppColors.forwardColor: AppColors.selectLangugaeColor,
                       
//                           iconContainer: controller.isCompleted.value?AppColors.forwardColor: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "Stage 2", text2:controller.isCompleted.value?"Active • 30 min": "Time Left 30 min", text3: "Active", smallContainer:controller.isCompleted.value?AppColors.forwardColor: AppColors.selectLangugaeColor, largeConatiner:controller.isCompleted.value?AppColors.forwardColor: AppColors.selectLangugaeColor,),)
          
          
//           ,SizedBox(height: 20,),
      
//           Obx(() {
//             bool showBack = controller.clickCount.value >= 2;
          
//             return Center(
//               child: showBack
//             ? PauseContainer(
//                 onTap: () => controller.back(),
//                 text: "Back",
//                 color: AppColors.selectLangugaeColor,
//                 height: 45 * heightScaleFactor,
//                 width: double.infinity,
//               )
//             : Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: PauseContainer(
//                       onTap: () => controller.pause(),
//                       text: "Pause",
//                       color: AppColors.selectLangugaeColor,
//                       height: 45 * heightScaleFactor,
//                       width: 140 * widthScaleFactor,
//                     ),
//                   ),
//                   SizedBox(width: 20 * widthScaleFactor),
//                   Expanded(
//                     child: PauseContainer(
//                       onTap: () => controller.nextPhase(),
//                       text: "Next Phase",
//                       icon: Icons.fast_forward,
//                       color: controller.isCompleted.value ? AppColors.forwardColor : AppColors.assignColor,
//                       height: 45 * heightScaleFactor,
//                       width: 140 * widthScaleFactor,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           })
          
          
//                                          ],
//                                   ),
//                                 ),
//                               ),
//                          ),
                      
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               children: [
//              Container(
//                             height: 347,
//             width: 338,
//             decoration: BoxDecoration(
//               border: Border.all(color: AppColors.greyColor,width: 1.5),
//               borderRadius: BorderRadius.circular(24)
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 30,),
//             BoldText(text: "Scenario:",selectionColor: AppColors.blueColor,fontSize: 16,),
//             SizedBox(height: 15,),
//             MainText(
//               height: 1.5,
//               text: "Your team has been tasked with organizing a company retreat for 50 employees. You have a budget of \$15,000 and need to choose between three venue options. Each option has different benefits and constraints.",fontSize: 13,)
//             ,SizedBox(height: 15,),
//             BoldText(text: "Question:",selectionColor: AppColors.redColor,fontSize: 16,),
//             SizedBox(height: 10,),
//             MainText(text: "Which venue would you choose and why? Consider budget, team activities, and logistics.",fontSize: 13,height: 1.5,)
            
//             // MainText(text: "Your team has been tasked with organizing a company retreat for 50 employees. You have a budget of $15,000 and need to choose between three venue options. Each option has different benefits and constraints.",fontSize: 13,)
//           ],
//               ),
//             ),
//                            ),
//                            SizedBox(height: 20,),
//                          Obx((){
            
//                         return    FilterUseableContainer(isSelected:controller.gamevalue.value==0 ,
                        
//                         fontSze: 13, text: "Mountain Resort (\$12,000)", onTap: (){
//                             controller.gameSelect(0);
//                            });
//                          }),
//                            SizedBox(height: 10,),
//                             Obx(()=>  FilterUseableContainer(isSelected:controller.gamevalue.value==1 , 
//                             fontSze: 13,
//                             text: "Beach Hotel (\$14,500)", onTap: (){
//                             controller.gameSelect(1);
//                            }),),
//                            SizedBox(height: 10,),
//                              Obx(()=> FilterUseableContainer(
                              
//                               isSelected:controller.gamevalue.value==2 , 
//                               fontSze: 13,
//                               text: "City Conference Center (\$8,000)", onTap: (){
//                             controller.gameSelect(2);
//                            }),),
//                            SizedBox(height: 10,),
//             Container(
//               width: 334,
//               height: 202,
//               padding: EdgeInsets.all(12), // thoda padding add kiya
//               decoration: BoxDecoration(
//           border: Border.all(color: AppColors.greyColor, width: 1.5),
//           borderRadius: BorderRadius.circular(24),
//               ),
//               child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             BoldText(
//               text: "Explain your reasoning:",
//               fontSize: 16,
//               selectionColor: AppColors.blueColor,
//             ),
//             // SizedBox(height: 8), // thoda spacing
//             Expanded(
//               child: TextFormField(
//                 cursorColor: AppColors.blackColor,
//                 maxLines: null, // multiple lines ke liye
//                 expands: true, // container fill karne ke liye
//                   textAlignVertical: TextAlignVertical.top, // 
                
//                 decoration: InputDecoration(
//                   hintText:
//                       "Share your team's thought process and decision factors...",
//                   hintStyle: TextStyle(color: AppColors.teamColor),
//                   border: OutlineInputBorder(
            
            
            
//                     borderRadius: BorderRadius.circular(12), // rounded border
//                   ),
//                   focusedBorder: InputBorder.none,
//                   enabledBorder: InputBorder.none
                 
//                 ),
//               ),
//             ),
//           ],
//               ),
//             )
            
//               ],
//             ),
//           )
          
//                     ],
//                   ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 13),
//               child: AdminTeamProgress(contentWidth: contentWidth, screenHeight: screenHeight, screenWidth: screenWidth, verticalSpacing: verticalSpacing,),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child:Obx(()=> Column(
//                 children: [
//                   CustomStratgyContainer(iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 1 Strategy Building", text2: "Completed • 20 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
//                         flex: 4,flex1: 0,
//                         ),
//                         SizedBox(height: 10,),
//               controller.currentPhase.value >= 1?
//                      CustomStratgyContainer(iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 2 Strategy Building", text2: "Active • 30 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
//                         flex: 4,flex1: 0,
//                         ):
                        
//                          CustomStratgyContainer(iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "Phase 2 Strategy Building", text2: "Upcoming • 25 min", text3: "Active", smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
                 
//                         ),
//                          SizedBox(height: 10,),
//               controller.currentPhase.value >= 2?  CustomStratgyContainer(iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 3 Strategy Building", text2: "Completed • 20 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
//                         flex: 4,flex1: 0,
//                         ):
          
//                          CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 3: Implementation", text2: "Upcoming • 25 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
                 
//                         ),
          
                        
//                              SizedBox(height: 10,),
          
//                           controller.currentPhase.value >= 2? 
//                             CustomStratgyContainer(iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "Phase 4: Evaluation", text2: "Upcoming • 15 min", text3: "Active", smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
                 
//                         ):
                            
//                          CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 4: Evaluation", text2: "Upcoming • 15 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
                 
//                         ),
//                         SizedBox(height: 43,),
//                controller.currentPhase.value >= 2? LoginButton(text: "Previous",color: AppColors.redColor,):SizedBox(),
//                SizedBox(height:     controller.currentPhase.value >= 2? 12:0,),
                        
//                       Obx(()=>  LoginButton(
//                         ishow: true,
//                         image: Appimages.submit,
//                         text: "Submit Response",color:controller.currentPhase.value >= 1?AppColors.forwardColor: AppColors.assignColor,),),
//                         SizedBox(height: 43,),
          
              
                  
//                 ],
//               ),)
//             )
//             ,
           
//               ],
//             ),
//           ),
//            Positioned(
//           right: 0,
//           top: screenHeight * 0.35,
//           child:LeaderStackContainer()
//         ),
//         ],

//       ))),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:scorer/components/adminside/admin_team_progress.dart';
import 'package:scorer/components/playerside/leader_stack_container.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/game_select_controller.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/filter_useable_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/useable_container.dart';

class GameStart1Screen extends StatelessWidget {
  final GameSelectController controller = Get.put(GameSelectController());
  GameStart1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeAreaTop = MediaQuery.of(context).padding.top;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    // A more direct way to get scaling factors
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.07,
                        vertical: screenHeight * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Appimages.player2,
                            height: 63 * heightScaleFactor,
                            width: 50 * widthScaleFactor,
                          ),
                          Expanded(
                            child: Center(
                              child: BoldText(
                                text: "team_alpha".tr,
                                fontSize: 22 * widthScaleFactor,
                              ),
                            ),
                          ),
                          Image.asset(
                            Appimages.house1,
                            height: 63 * heightScaleFactor,
                            width: 80 * widthScaleFactor,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                             height: 170 * heightScaleFactor,
                              // width: 209 * widthScaleFactor,
                            child: Image.asset(
                              Appimages.group,
                             fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            bottom: -2* heightScaleFactor,
                            right: 15 * widthScaleFactor,
                            child: CreateContainer(fontsize2: 12,
                              text: "5 Phases",
                              width: 90 * widthScaleFactor,
                              height: 30 * heightScaleFactor, // Assuming a default height
                              // fontSize: 14 * widthScaleFactor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20*heightScaleFactor,),
                      BoldText(
  text: "team_building_workshop".tr,
  fontSize: 16 * heightScaleFactor,
  selectionColor: AppColors.blueColor,
),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Appimages.person,
                            height: 18 * heightScaleFactor,
                            width: 18 * widthScaleFactor,
                          ),
                          SizedBox(width: 8 * widthScaleFactor),
                          MainText(
                            text: "Facilitator: Sarah Johnson",
                            fontSize: 14 * widthScaleFactor,
                          )
                        ],
                      ),   SizedBox(height: 17*heightScaleFactor,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13 * widthScaleFactor,
                          ),
                          child: Container(
                            height: 390 * heightScaleFactor,
                            width: 376 * widthScaleFactor,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.greyColor,
                                width: 1.5,
                              ),
                              borderRadius:
                                  BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 17 * heightScaleFactor,
                                right: 21 * widthScaleFactor,
                                left: 20 * widthScaleFactor,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                        BoldText(
  text: "current_phase".tr,
  fontSize: 16 * heightScaleFactor,
  selectionColor: AppColors.blueColor,
),
                                          SizedBox(height: 5 * heightScaleFactor),
                                          Row(
                                            children: [
                                              UseableContainer(
                                                width: 70,
                                                height: 25,
                                                
                                                text: "Phase 2",
                                                color: AppColors.orangeColor,
                                                fontSize:
                                                    10 * heightScaleFactor,
                                              ),
                                              SizedBox(
                                                  width: 10 * widthScaleFactor),
                                              MainText(
                                               text: "strategy_building".tr,
  // fontSize:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11 : 14 
                                          fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 14*widthScaleFactor,
smallSize: 11*widthScaleFactor

                                          ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      CircularPercentIndicator(
                                        radius: 40.0 * widthScaleFactor,
                                        lineWidth: 4.0 * widthScaleFactor,
                                        percent: 0.7,
                                        animation: true,
                                        animationDuration: 500,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        backgroundColor: Colors.transparent,
                                        progressColor: AppColors.forwardColor,
                                        center: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            BoldText(
                                                text: "12:32",
                                                fontSize: screenWidth * 0.04,
                                                selectionColor:
                                                    AppColors.blueColor),
                                            MainText(
                                                text: "remaining".tr,
                                                fontSize: screenWidth * 0.02,
                                                height: 1),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20 * heightScaleFactor),
                                 MainText(
  text: "team_collab_phase".tr,
  fontSize: 14 * heightScaleFactor,
),
                                  SizedBox(height: 15 * heightScaleFactor),
                                  // Obx(
                                  //   () => Row(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.center,
                                  //     children: [
                                  //       _buildPhaseCircle(
                                  //         isCompleted: true,
                                  //         phaseNumber: 1,
                                  //         widthScaleFactor: widthScaleFactor,
                                  //       ),
                                  //       _buildPhaseLine(
                                  //         isCompleted: true,
                                  //         widthScaleFactor: widthScaleFactor,
                                  //       ),
                                  //       _buildPhaseCircle(
                                  //         isCompleted:
                                  //             controller.currentPhase.value >= 1,
                                  //         phaseNumber: 2,
                                  //         widthScaleFactor: widthScaleFactor,
                                  //       ),
                                  //       _buildPhaseLine(
                                  //         isCompleted:
                                  //             controller.currentPhase.value >= 2,
                                  //         widthScaleFactor: widthScaleFactor,
                                  //       ),
                                  //       _buildPhaseCircle(
                                  //         isCompleted:
                                  //             controller.currentPhase.value >= 2,
                                  //         phaseNumber: 3,
                                  //         widthScaleFactor: widthScaleFactor,
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
          //                         Obx(() => Row(
          //   children: [
          //     // First circle
          //     Container(
          // height: 20,
          // width: 20,
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   color: AppColors.forwardColor,
          // ),
          // child: Center(
          //   child: Icon(Icons.check, size: 17, color: AppColors.whiteColor),
          // ),
          //     ),
          //     SizedBox(width: 7),
          //     Container(
          // width: 100,
          // height: 4,
          // decoration: BoxDecoration(
          //   color: AppColors.forwardColor,
          //   borderRadius: BorderRadius.circular(20),
          // ),
          //     ),
          //     SizedBox(width: 7),
          
          //     // Second circle
          //     controller.currentPhase.value >= 1  
          //   ? Container(
          //       height: 20,
          //       width: 20,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: AppColors.forwardColor,
          //       ),
          //       child: Center(
          //         child: Icon(Icons.check, size: 17, color: AppColors.whiteColor),
          //       ),
          //     )
          //   : Container(
          //       height: 20,
          //       width: 20,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: AppColors.orangeColor,
          //       ),
          //       child: Center(
          //         child: MainText(text: "2", color: AppColors.whiteColor, fontSize: 11),
          //       ),
          //     ),
          //     SizedBox(width: 7),
          //     Container(
          // width: 100,
          // height: 4,
          // decoration: BoxDecoration(
          //   color: controller.currentPhase.value >= 2 ? AppColors.forwardColor : AppColors.greyColor,
          //   borderRadius: BorderRadius.circular(20),
          // ),
          //     ),
          //     SizedBox(width: 7),
          
          //     // Third circle
          //     controller.currentPhase.value >= 2
          //   ? Container(
          //       height: 20,
          //       width: 20,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: AppColors.forwardColor,
          //       ),
          //       child: Center(
          //         child: Icon(Icons.check, size: 17, color: AppColors.whiteColor),
          //       ),
          //     )
          //   : Container(
          //       height: 20,
          //       width: 20,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: AppColors.greyColor,
          //       ),
          //       child: Center(
          //         child: MainText(text: "3", color: AppColors.whiteColor, fontSize: 11),
          //       ),
          //     ),
          //   ],
          // )),
          Obx(() {
  final screenWidth = MediaQuery.of(context).size.width;
  final double baseWidth = 414.0;
  final double widthScaleFactor = screenWidth / baseWidth;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // First circle
      Container(
        height: 20 * widthScaleFactor,
        width: 20 * widthScaleFactor,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.forwardColor,
        ),
        child: Center(
          child: Icon(
            Icons.check,
            size: 17 * widthScaleFactor,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      SizedBox(width: 7 * widthScaleFactor),
      // First line
      Container(
        width: 120 * widthScaleFactor,
        height: 4,
        decoration: BoxDecoration(
          color: AppColors.forwardColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      SizedBox(width: 7 * widthScaleFactor),

      // Second circle
      controller.currentPhase.value >= 1
          ? Container(
              height: 20 * widthScaleFactor,
              width: 20 * widthScaleFactor,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.forwardColor,
              ),
              child: Center(
                child: Icon(
                  Icons.check,
                  size: 17 * widthScaleFactor,
                  color: AppColors.whiteColor,
                ),
              ),
            )
          : Container(
              height: 20 * widthScaleFactor,
              width: 20 * widthScaleFactor,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.orangeColor,
              ),
              child: Center(
                child: MainText(
                  text: "2",
                  color: AppColors.whiteColor,
                  fontSize: 11 * widthScaleFactor,
                ),
              ),
            ),
      SizedBox(width: 7 * widthScaleFactor),
      // Second line
      Container(
        width: 120 * widthScaleFactor,
        height: 4,
        decoration: BoxDecoration(
          color: controller.currentPhase.value >= 2
              ? AppColors.forwardColor
              : AppColors.greyColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      SizedBox(width: 7 * widthScaleFactor),

      // Third circle
      controller.currentPhase.value >= 2
          ? Container(
              height: 20 * widthScaleFactor,
              width: 20 * widthScaleFactor,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.forwardColor,
              ),
              child: Center(
                child: Icon(
                  Icons.check,
                  size: 17 * widthScaleFactor,
                  color: AppColors.whiteColor,
                ),
              ),
            )
          : Container(
              height: 20 * widthScaleFactor,
              width: 20 * widthScaleFactor,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.greyColor,
              ),
              child: Center(
                child: MainText(
                  text: "3",
                  color: AppColors.whiteColor,
                  fontSize: 11 * widthScaleFactor,
                ),
              ),
            ),
    ],
  );
}),
          
                                  SizedBox(height: 16 * heightScaleFactor),
                                  Obx(() => CustomStratgyContainer(
                                        flex1: controller.isCompleted.value ? 0 : 1,
                                        flex: controller.isCompleted.value ? 4 : 3,
                                        borderColor: controller.isCompleted.value
                                            ? AppColors.forwardColor
                                            : AppColors.selectLangugaeColor,
                                        iconContainer: controller.isCompleted.value
                                            ? AppColors.forwardColor
                                            : AppColors.selectLangugaeColor,
                                        icon: Icons.play_arrow_sharp,
                                        text1: "Stage 2",
                                        text2: controller.isCompleted.value
                                            ? "Active • 30 min"
                                            : "Time Left 30 min",
                                        text3: "active".tr,
                                        smallContainer: controller.isCompleted.value
                                            ? AppColors.forwardColor
                                            : AppColors.selectLangugaeColor,
                                        largeConatiner: controller.isCompleted.value
                                            ? AppColors.forwardColor
                                            : AppColors.selectLangugaeColor,
                                      )),
                                  SizedBox(height: 20 * heightScaleFactor),
                                  Obx(() {
                                    bool showBack = controller.clickCount.value >= 2;
                                    return Center(
                                      child: showBack
                                          ? PauseContainer(
                                            width: double.infinity,
                                            // width: 335*widthScaleFactor,
                                              onTap: () => controller.back(),
                                              text: "back".tr,
                                              color: AppColors.selectLangugaeColor,
                                              height: 35 * heightScaleFactor,
                                              // width: double.infinity,
                                            )
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: PauseContainer(
                                                    onTap: () => controller.pause(),
                                                    text: "pause".tr,
                                                    color: AppColors.selectLangugaeColor,
                                                    height: 35 * heightScaleFactor,
                                                    // width: 140 * widthScaleFactor,
                                                  ),
                                                ),
                                                SizedBox(width: 20 * widthScaleFactor),
                                                Expanded(
                                                  child: PauseContainer(
                                                    onTap: () => controller.nextPhase(),
                                                    text: "next_phase".tr,
                                                    icon: Icons.fast_forward,
                                                    color: controller.isCompleted.value
                                                        ? AppColors.forwardColor
                                                        : AppColors.assignColor,
                                                    height: 35 * heightScaleFactor,
                                                    // width: 140 * widthScaleFactor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                    );
                                  })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17,),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30 * widthScaleFactor,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 347 * heightScaleFactor,
                            width: 338 * widthScaleFactor,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.greyColor,
                                width: 1.5,
                              ),
                              borderRadius:
                                  BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20 * widthScaleFactor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30 * heightScaleFactor),
                                  BoldText(
                                   text: "scenario".tr,
                                    selectionColor: AppColors.blueColor,
                                    fontSize: 16 * heightScaleFactor,
                                  ),
                                  SizedBox(height: 15 * heightScaleFactor),
                                
MainText(
  height: 1.5,
  text: "scenario_description".tr,
  fontSize: 13 * heightScaleFactor,
),
                                  SizedBox(height: 15 * heightScaleFactor),
                                  
BoldText(
  text: "question".tr,
  selectionColor: AppColors.redColor,
  fontSize: 16 * heightScaleFactor,
),
                                  SizedBox(height: 10 * heightScaleFactor),
                                 
MainText(
  text: "question_description".tr,
  fontSize: 13 * heightScaleFactor,
  height: 1.5,
),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20 * heightScaleFactor),
                          Obx(() {
                            return FilterUseableContainer(
                              isSelected: controller.gamevalue.value == 0,
                          fontSze: ResponsiveFont.getFontSizeCustom(
                                  defaultSize: 13*widthScaleFactor,
                                  smallSize: 10*widthScaleFactor
                                ),
                              text: "mountain_resort".tr,
                              onTap: () {
                                controller.gameSelect(0);
                              },
                            );
                          }),
                          SizedBox(height: 10 * heightScaleFactor),
                          Obx(() => FilterUseableContainer(
                                isSelected: controller.gamevalue.value == 1,
                               fontSze: ResponsiveFont.getFontSizeCustom(
                                  defaultSize: 13*widthScaleFactor,
                                  smallSize: 10*widthScaleFactor
                                ),
                                text: "beach_hotel".tr,
                                onTap: () {
                                  controller.gameSelect(1);
                                },
                              )),
                          SizedBox(height: 10 * heightScaleFactor),
                          Obx(() => FilterUseableContainer(
                                isSelected: controller.gamevalue.value == 2,
                                // fontSze: 13 * heightScaleFactor,
                                fontSze: ResponsiveFont.getFontSizeCustom(
                                  defaultSize: 13*widthScaleFactor,
                                  smallSize: 10*widthScaleFactor
                                ),
                                
                                text: "city_conference_center".tr,
                                onTap: () {
                                  controller.gameSelect(2);
                                },
                              )),
                          SizedBox(height: 10 * heightScaleFactor),
                          Container(
                            width: double.infinity,
                            height: 202 * heightScaleFactor,
                            padding: EdgeInsets.all(12 * widthScaleFactor),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.greyColor,
                                width: 1.5,
                              ),
                              borderRadius:
                                  BorderRadius.circular(24 * widthScaleFactor),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                BoldText(
                                  text:  "explain_reasoning".tr,
                                  fontSize: 16 * heightScaleFactor,
                                  selectionColor: AppColors.blueColor,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    cursorColor: AppColors.blackColor,
                                    maxLines: null,
                                    expands: true,
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: InputDecoration(
                                      hintText:
                                          "share_thought_process".tr,
                                      hintStyle:
                                          TextStyle(color: AppColors.teamColor),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13 * widthScaleFactor,
                      ),
                      child: AdminTeamProgress(
                        contentWidth: screenWidth * 0.9,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        verticalSpacing: screenHeight * 0.02,
                      ),
                    ),
                    SizedBox(height: 17,),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30 * widthScaleFactor,
                      ),
                      child: Obx(
                        () => Column(
                          children: [
                           CustomStratgyContainer(
                      // fontSize: isSpanish?2:14,
                      fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
                      width3: 80,
                      iconContainer: AppColors.forwardColor, icon: Icons.check, text1:  "phase1_strategy".tr, text2: "Completed • 20 min", text3: "completed".tr, smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                    flex: 3,flex1: 0,
                    ),
                            SizedBox(height: 10 * heightScaleFactor),
                            if (controller.currentPhase.value >= 1)
                             CustomStratgyContainer(
                      // fontSize2:isSpanish? 11:14,
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
   fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),

                      // fontSize: 6,
                      // width3: 80,
                      iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "phase2_strategy".tr ,text2: "Active • 30 min", text3: "active".tr, smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
             
                    )
                            else
                              CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
   fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),
                                iconContainer: AppColors.selectLangugaeColor,
                                icon: Icons.play_arrow_sharp,
                                text1: "phase2_strategy".tr ,
                                text2: "Upcoming • 25 min",
                                text3: "Active",
                                smallContainer: AppColors.selectLangugaeColor,
                                largeConatiner: AppColors.selectLangugaeColor,
                              ),
                            SizedBox(height: 10 * heightScaleFactor),
                            if (controller.currentPhase.value >= 2)
                              CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
   fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),
                                iconContainer: AppColors.forwardColor,
                                icon: Icons.check,
                                text1: "phase3_implementation".tr,
                                text2: "Completed • 20 min",
                                text3: "Completed",
                                smallContainer: AppColors.forwardColor,
                                largeConatiner: AppColors.forwardColor,
                                flex: 4,
                                flex1: 0,
                              )
                            else
                              CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
   fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),
                                iconContainer: AppColors.watchColor,
                                icon: Icons.watch_later,
                                text1: "phase3_implementation".tr,
                                text2: "Upcoming • 25 min",
                                text3: "Pending",
                                smallContainer: AppColors.watchColor,
                                largeConatiner: AppColors.greyColor,
                                flex: 4,
                                flex1: 0,
                              ),
                            SizedBox(height: 10 * heightScaleFactor),
                            if (controller.currentPhase.value >= 2)
                              CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
   fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),
                                iconContainer: AppColors.selectLangugaeColor,
                                icon: Icons.play_arrow_sharp,
                              text1: "phase4_evaluation".tr,
                                text2: "Upcoming • 15 min",
                                text3: "Active",
                                smallContainer: AppColors.selectLangugaeColor,
                                largeConatiner: AppColors.selectLangugaeColor,
                              )
                            else
                              CustomStratgyContainer(
// fontSize2:(Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 10:14,
   fontSize2: ResponsiveFont.getFontSizeCustom(
                        defaultSize: 14*widthScaleFactor,
                        smallSize: 10*widthScaleFactor
                      ),
                                iconContainer: AppColors.watchColor,
                                icon: Icons.watch_later,
                               text1: "phase4_evaluation".tr,
                                text2: "Upcoming • 15 min",
                                text3: "Pending",
                                smallContainer: AppColors.watchColor,
                                largeConatiner: AppColors.greyColor,
                                flex: 4,
                                flex1: 0,
                              ),
                            SizedBox(height: 43 * heightScaleFactor),
                            if (controller.currentPhase.value >= 2)
                              LoginButton(
                                fontSize: 20,
                                text: "previous".tr,
                                color: AppColors.redColor,
                              )
                            else
                              SizedBox(),
                            SizedBox(height: controller.currentPhase.value >= 2 ? 12 * heightScaleFactor : 0),
                            Obx(() => LoginButton(
                              onTap: ()=>Get.toNamed(RouteName.submitResponseScreen),
                                  ishow: true,
                                  fontSize: 20,
                                  image: Appimages.submit,
                                  text: "submit_response".tr,
                                  color: controller.currentPhase.value >= 1
                                      ? AppColors.forwardColor
                                      : AppColors.assignColor,
                                )),
                            SizedBox(height: 43 * heightScaleFactor),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                top: screenHeight * 0.35,
                child: LeaderStackContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhaseCircle({
    required bool isCompleted,
    required int phaseNumber,
    required double widthScaleFactor,
  }) {
    return Container(
      height: 20 * widthScaleFactor,
      width: 20 * widthScaleFactor,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompleted ? AppColors.forwardColor : AppColors.greyColor,
      ),
      child: Center(
        child: isCompleted
            ? Icon(
                Icons.check,
                size: 17 * widthScaleFactor,
                color: AppColors.whiteColor,
              )
            : MainText(
                text: "$phaseNumber",
                color: AppColors.whiteColor,
                fontSize: 11 * widthScaleFactor,
              ),
      ),
    );
  }

  Widget _buildPhaseLine({
    required bool isCompleted,
    required double widthScaleFactor,
  }) {
    return Container(
      width: 100 * widthScaleFactor,
      height: 4,
      decoration: BoxDecoration(
        color: isCompleted ? AppColors.forwardColor : AppColors.greyColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}