// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/custom_phase_Container.dart';
// import 'package:scorer/widgets/custom_sloder_row.dart';
// import 'package:scorer/widgets/filter_useable_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/use_able_game_row.dart';

// class Game2Screen extends StatelessWidget {
//   const Game2Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//       final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;

//     // Define a base width for scaling, assuming a typical phone screen width of 375.
//     const double baseWidth = 375.0;
//     final double scaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//                SizedBox(
//                       height: 50,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           /// Back arrow
//                         SvgPicture.asset(
//                               Appimages.arrowback,
//                               colorFilter: ColorFilter.mode(
//                                   AppColors.forwardColor, BlendMode.srcIn),
//                               width: 24,
//                               height: 20,
//                             ),
//                           Expanded(
//                             child: Center(
//                               child: Stack(
//                                 alignment: Alignment.center,
//                                 clipBehavior: Clip.none, // Allows children to render outside of the stack's bounds
//                                 children: [
//                                    Positioned(
//                                     left: 175, // Adjust this value to control the overlap
//                                     child: Container(
//                                       width: 90,
//                                       height: 37,
//                                       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                                       decoration: BoxDecoration(
//                                         color: AppColors.forwardColor
//                                         ,
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                       child: Center(child: BoldText(text: "Game",selectionColor: AppColors.whiteColor,fontSize: 20,))
//                                     ),
//                                   ),
//                                   /// "Add New" text - this is the base layer
//                                   Positioned(
//                                     left: 65,
//                                     child:BoldText(text: "Create New",fontSize: 24,selectionColor: AppColors.blueColor,)
//                                   ),
                    
//                                   /// "Player" button - placed on top and shifted left
                                 
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
          
          
//                         Image.asset(Appimages.game, width: 300 ),
          
//                         LoginTextfield(text: "Enter Game Name"),
//                         SizedBox(height: 9,),
//                         LoginTextfield(text: "Description",height: 120,),
//                           BoldText(
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
//                               height: 116 ,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: AppColors.minus2, width: 1.5 ),
//                                 borderRadius: BorderRadius.circular(24 ),
//                               ),
//                               child: Center(
//                                 child: Container(
//                                   width: 36.5 ,
//                                   height: 36.5 ,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10 ),
//                                     color: AppColors.minus,
//                                   ),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.remove,
//                                       color: AppColors.whiteColor,
//                                       size: 24 ,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: SizedBox(
//                               height: 116 ,
//                               child: Center(
//                                 child: BoldText(
//                                   text: "03",
//                                   fontSize: 40 ,
//                                   selectionColor: AppColors.blueColor,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Container(
//                               height: 116 ,
//                               decoration: BoxDecoration(
//                                 color: AppColors.forwardColor,
//                                 borderRadius: BorderRadius.circular(24 ),
//                               ),
//                               child: Center(
//                                 child: Container(
//                                   width: 36.5 ,
//                                   height: 36.5 ,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10 ),
//                                     color: AppColors.whiteColor,
//                                   ),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.add,
//                                       color: AppColors.forwardColor,
//                                       size: 24 ,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),

//                       Container(
//                         width: 336,
//                         height: 256,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor,width: 1.5),
//                           borderRadius: BorderRadius.circular(24)
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 15),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: 28,),
//                               BoldText(text: "Game Logic Setup",fontSize: 16,selectionColor: AppColors.blueColor,),
// SizedBox(height: 19,),
//                               UseAbleGameRow(text1: 'Phase 1 - Strategy', text2: '3 Stage - 1h 12 minutes',),
//                               SizedBox(height: 12,),
//                               UseAbleGameRow(text1: 'Phase 2 - Strategy', text2: '3 Stage - 1h 12 minutes',),
//                               SizedBox(height: 12,),
//                               UseAbleGameRow(text1: 'Phase 3 - Strategy', text2: '3 Stage - 1h 12 minutes',),


//                             ],
//                           ),
//                         ),
//                       ),
//                       LoginButton(text: "Add Phase",ishow: true,icon: Icons.add,imageHeight: 26,imageWidth: 26,),
//                       SizedBox(height: 34,),
//                         BoldText(
//                         text: "Challenge Types",
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
//                       SizedBox(height: 10 * scaleFactor),
// CustomContainer(),
//                       SizedBox(height: 24 * scaleFactor),
//                        Container(
//                         height: 236 ,
//                         width: 336  ,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7 ),
//                           borderRadius: BorderRadius.circular(24 ),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 23 ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: 20 ),
//                               BoldText(
//                                 text: "Difficulty Level",
//                                 selectionColor: AppColors.blueColor,
//                                 fontSize: 16 ,
//                               ),
//                               SizedBox(height: 31 ),
//                               CustomSloderRow(text: "Phase 1", text2: "Easy",value: 15,width: 82,fontSize: 16,width1: 10,),
//                               SizedBox(height: 5 ),
//                               CustomSloderRow(
//                                 width1: 10,
//                                 text: "Phase 2", text2: "Medium",value: 20,color: AppColors.orangeColor,width: 82,fontSize: 16),
//                               SizedBox(height: 5 ),
//                               CustomSloderRow(
//                                 width1: 10,
//                                 text: "Phase 3", text2: "Hard",value: 30,color: AppColors.redColor,width: 82,fontSize: 16),
                                
                             
//                             ],
//                           ),
//                         ),
//                       ),
//                        BoldText(
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
//                       //  SizedBox(height: 30 * scaleFactor),
//                       BoldText(
//                         text: "Additional Settings",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16 * scaleFactor,
//                       ),
//                       SizedBox(height: 20 * scaleFactor),
//                       FilterUseableContainer(isSelected: true, text: 'Manual', onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: false, text: 'AI', onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
//                       FilterUseableContainer(isSelected: false, text: 'Mixed', onTap: () {}),
//                       SizedBox(height: 10 * scaleFactor),
// CustomContainer(text1: "Points per Correct Answer",text2: "10pts",color: AppColors.forwardColor,),
//                       SizedBox(height: 10 * scaleFactor),
// CustomContainer(text1: "Penalty for Wrong Answers",text2: "-5pts",color: AppColors.redColor,),
//                       SizedBox(height: 10 * scaleFactor),

// GameRow(screenHeight: screenHeight, screenWidth: screenWidth),
//                       SizedBox(height: 10 * scaleFactor),

// GameRow(
//   text: "Allow Team Mode",
//   screenHeight: screenHeight, screenWidth: screenWidth),
//                       SizedBox(height: 10 * scaleFactor),

//   GameRow(
//   text: "Auto-Start Sessions",
//   screenHeight: screenHeight, screenWidth: screenWidth),
//                       SizedBox(height: 43 * scaleFactor),
//                       LoginButton(text: "Save",ishow: true,image: Appimages.save,),
//                       SizedBox(height: 10 * scaleFactor),
//                       LoginButton(text: "Cancel",color: AppColors.forwardColor,),
//                       SizedBox(height: 43 * scaleFactor),





  
                     
                    
                    
          
          
//             ],
//           ),
//         ),
//       ))),
//     );
//   }
// }

// class GameRow extends StatelessWidget {

//   final String?text;
//   const GameRow({
//     super.key,
//     required this.screenHeight,
//     required this.screenWidth, this.text,
//   });

//   final double screenHeight;
//   final double screenWidth;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         MainText(text:text?? "Enable Leaderboard",fontSize: 14,),
//        FlutterSwitch(
//       value: true, // ya false fix kar do
//       onToggle: (val) {
//         // yahan khali chod do ya ignore karo
//       },
//       height: screenHeight * 0.03,
//       width: screenWidth * 0.13,
//       activeColor: AppColors.forwardColor,
//       inactiveColor: AppColors.forwardColor,
//     )
    
//       ],
//     );
//   }
// }

// class CustomContainer extends StatelessWidget {
//   final String? text1;
//   final String ?text2;
//   final Color ? color;
//   const CustomContainer({
//     super.key,  this.text1, this.text2, this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 334,
//       decoration: BoxDecoration(
//         border: Border.all(color: AppColors.greyColor,width: 1.5),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 23),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             MainText(text: text1??"Default Time Limit per Phase",fontSize: 14,color: AppColors.teamColor,),
//             MainText(text:text2?? "20m",fontSize: 14,color:color?? AppColors.teamColor,)
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
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

    // Define a base width for scaling, assuming a typical phone screen width of 375.
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
                        SvgPicture.asset(
                          Appimages.arrowback,
                          colorFilter: ColorFilter.mode(
                              AppColors.forwardColor, BlendMode.srcIn),
                          width: 24 * scaleFactor,
                          height: 20 * scaleFactor,
                        ),
                        Expanded(
                          child: Center(
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: 175 * scaleFactor,
                                  child: Container(
                                    width: 90 * scaleFactor,
                                    height: 37 * scaleFactor,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16 * scaleFactor,
                                        vertical: 6 * scaleFactor),
                                    decoration: BoxDecoration(
                                      color: AppColors.forwardColor,
                                      borderRadius:
                                          BorderRadius.circular(20 * scaleFactor),
                                    ),
                                    child: Center(
                                      child: BoldText(
                                        text: "Game",
                                        selectionColor: AppColors.whiteColor,
                                        fontSize: 20 * scaleFactor,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 65 * scaleFactor,
                                  child: BoldText(
                                    text: "Create New",
                                    fontSize: 24 * scaleFactor,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(Appimages.game, width: 300 * scaleFactor),
                  ),
                  LoginTextfield(
                      text: "Enter Game Name", fontsize: 14 * scaleFactor),
                  SizedBox(height: 9 * scaleFactor),
                  LoginTextfield(
                    ishow: true,
                      text: "Description",
                      height: 120 * scaleFactor,
                      fontsize: 14 * scaleFactor),
                  SizedBox(height: 9 * scaleFactor),

                  BoldText(
                    text: "Number of Phases",
                    fontSize: 16 * scaleFactor,
                    selectionColor: AppColors.blueColor,
                  ),
                  SizedBox(height: 14 * scaleFactor),
                  MainText(
                    text: "Phase structure adapts based on selected game format",
                    color: AppColors.teamColor,
                    textAlign: TextAlign.center,
                    height: 1.4,
                    fontSize: 15 * scaleFactor,
                  ),
                  SizedBox(height: 29 * scaleFactor),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 116 * scaleFactor,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.minus2, width: 1.5 * scaleFactor),
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
                      Expanded(
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
                  Container(
                    width: 336 * scaleFactor,
                    height: 256 * scaleFactor,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.greyColor, width: 1.5 * scaleFactor),
                      borderRadius: BorderRadius.circular(24 * scaleFactor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15 * scaleFactor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 28 * scaleFactor),
                          BoldText(
                              text: "Game Logic Setup",
                              fontSize: 16 * scaleFactor,
                              selectionColor: AppColors.blueColor),
                          SizedBox(height: 19 * scaleFactor),
                          UseAbleGameRow(
                            text1: 'Phase 1 - Strategy',
                            text2: '3 Stage - 1h 12 minutes',
                           
                          ),
                          SizedBox(height: 12 * scaleFactor),
                          UseAbleGameRow(
                            text1: 'Phase 2 - Strategy',
                            text2: '3 Stage - 1h 12 minutes',
                        
                          ),
                          SizedBox(height: 12 * scaleFactor),
                          UseAbleGameRow(
                            text1: 'Phase 3 - Strategy',
                            text2: '3 Stage - 1h 12 minutes',
                            // scaleFactor: scaleFactor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  LoginButton(
                    text: "Add Phase",
                    ishow: true,
                    icon: Icons.add,
                    imageHeight: 26 * scaleFactor,
                    imageWidth: 26 * scaleFactor,
                  ),
                  SizedBox(height: 34 * scaleFactor),
                  BoldText(
                    text: "Challenge Types",
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                  ),
                  SizedBox(height: 25 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: true, text: "MCQ", onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: false, text: "Open-ended", onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: true, text: "Puzzle", onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: false, text: "Simulation", onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  CustomContainer(scaleFactor: scaleFactor),
                  SizedBox(height: 24 * scaleFactor),
                  Container(
                    height: 236 * scaleFactor,
                    width: 336 * scaleFactor,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.greyColor, width: 1.7 * scaleFactor),
                      borderRadius: BorderRadius.circular(24 * scaleFactor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23 * scaleFactor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20 * scaleFactor),
                          BoldText(
                            text: "Difficulty Level",
                            selectionColor: AppColors.blueColor,
                            fontSize: 16 * scaleFactor,
                          ),
                          SizedBox(height: 31 * scaleFactor),
                          CustomSloderRow(
                              text: "Phase 1",
                              text2: "Easy",
                              value: 15,
                              width: 82 * scaleFactor,
                              fontSize: 16 * scaleFactor,
                              width1: 10 * scaleFactor),
                          SizedBox(height: 5 * scaleFactor),
                          CustomSloderRow(
                              width1: 10 * scaleFactor,
                              text: "Phase 2",
                              text2: "Medium",
                              value: 20,
                              color: AppColors.orangeColor,
                              width: 82 * scaleFactor,
                              fontSize: 16 * scaleFactor),
                          SizedBox(height: 5 * scaleFactor),
                          CustomSloderRow(
                              width1: 10 * scaleFactor,
                              text: "Phase 3",
                              text2: "Hard",
                              value: 30,
                              color: AppColors.redColor,
                              width: 82 * scaleFactor,
                              fontSize: 16 * scaleFactor),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16 * scaleFactor),

                  Center(
                    child: BoldText(
                      text: "Badge Labeling",
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
                    text1: "Badge Name",
                    text2: "Gold Achiever",
                    fontSize: 16 * scaleFactor,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 8 * scaleFactor),
                  CustomPhaseContainer(
                    text1: "Required Score",
                    text2: "90+",
                    fontSize: 16 * scaleFactor,
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 16 * scaleFactor),
                  LoginButton(
                    text: "Add More Badges",
                    height: 45 * scaleFactor,
                    color: AppColors.forwardColor,
                    radius: 12 * scaleFactor,
                    fontSize: 14 * scaleFactor,
                    fontFamily: "refsan",
                  ),
                  SizedBox(height: 18 * scaleFactor),
                  BoldText(
                    text: "Additional Settings",
                    selectionColor: AppColors.blueColor,
                    fontSize: 16 * scaleFactor,
                  ),
                  SizedBox(height: 20 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: true, text: 'Manual', onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(isSelected: false, text: 'AI', onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  FilterUseableContainer(
                      isSelected: false, text: 'Mixed', onTap: () {}),
                  SizedBox(height: 10 * scaleFactor),
                  CustomContainer(
                    scaleFactor: scaleFactor,
                    text1: "Points per Correct Answer",
                    text2: "10pts",
                    color: AppColors.forwardColor,
                  ),
                  SizedBox(height: 10 * scaleFactor),
                  CustomContainer(
                    scaleFactor: scaleFactor,
                    text1: "Penalty for Wrong Answers",
                    text2: "-5pts",
                    color: AppColors.redColor,
                  ),
                  // SizedBox(height: 10 * scaleFactor),
                  SizedBox(height: 16 * scaleFactor),

                  GameRow(
                      screenHeight: screenHeight, screenWidth: screenWidth, scaleFactor: scaleFactor),
                  SizedBox(height: 10 * scaleFactor),
                  GameRow(
                      text: "Allow Team Mode",
                      screenHeight: screenHeight,
                      screenWidth: screenWidth, scaleFactor: scaleFactor),
                  SizedBox(height: 10 * scaleFactor),
                  GameRow(
                      text: "Auto-Start Sessions",
                      screenHeight: screenHeight,
                      screenWidth: screenWidth, scaleFactor: scaleFactor),
                  SizedBox(height: 43 * scaleFactor),
                  LoginButton(
                    fontSize: 20,
                      text: "Save",
                      ishow: true,
                      image: Appimages.save,
                      ),
                  SizedBox(height: 10 * scaleFactor),
                  LoginButton(
                    fontSize: 20,
                      text: "Cancel",
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

class GameRow extends StatelessWidget {
  final String? text;
  final double screenHeight;
  final double screenWidth;
  final double scaleFactor;

  const GameRow({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    this.text,
    required this.scaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText(
          text: text ?? "Enable Leaderboard",
          fontSize: 14 * scaleFactor,
        ),
        FlutterSwitch(
          value: true,
          onToggle: (val) {},
          height: screenHeight * 0.03,
          width: screenWidth * 0.13,
          activeColor: AppColors.forwardColor,
          inactiveColor: AppColors.forwardColor,
        )
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Color? color;
  final double scaleFactor;

  const CustomContainer({
    super.key,
    this.text1,
    this.text2,
    this.color,
    required this.scaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50 * scaleFactor,
      width: 334 * scaleFactor,
      decoration: BoxDecoration(
        border:
            Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
        borderRadius: BorderRadius.circular(12 * scaleFactor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23 * scaleFactor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MainText(
              text: text1 ?? "Default Time Limit per Phase",
              fontSize: 14 * scaleFactor,
              color: AppColors.teamColor,
            ),
            MainText(
              text: text2 ?? "20m",
              fontSize: 14 * scaleFactor,
              color: color ?? AppColors.teamColor,
            )
          ],
        ),
      ),
    );
  }
}