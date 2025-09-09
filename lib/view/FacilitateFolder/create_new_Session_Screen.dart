// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/view/startscreen/aa.dart';
// // import 'package:scorer/widgets/bold_text.dart';

// // class CreateNewSessionScreen extends StatelessWidget {
// //   const CreateNewSessionScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return GradientBackground(child: SafeArea(child: 
// //     Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 30),
// //       child: Column(
// //         children: [
      
// //       Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //                           BoldText(text: "Create New",selectionColor: AppColors.blueColor,fontSize: 16,),
// //                            Padding(
// //                      padding: EdgeInsets.only(top:15),
// //                      child: Image.asset(Appimages.house1,height: 85,width: 100,),
// //                    )
      
// //         ],
// //       )
// //         ],
// //       ),
// //     )));
// //   }
// // }


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:scorer/components/players_Row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_phase_Container.dart';
import 'package:scorer/widgets/filter_useable_container.dart';
import 'package:scorer/widgets/game_Select_useable_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/session_useable_row.dart';
import 'package:scorer/widgets/useable_container.dart';

// class CreateNewSessionScreen extends StatelessWidget {
//   final bool isSelected;
//   const CreateNewSessionScreen({super.key,  this.isSelected=true});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child:SingleChildScrollView(
//         child: Column(
//           children: [
        
//                Stack(
//                  children: [
//                     Positioned(
//                           top: 28,
//                           left: 150,
//                           child: Container(
//                 width: 100,
//                 height: 37,
//                 decoration: BoxDecoration(
//                   color: AppColors.forwardColor,
//                   borderRadius: BorderRadius.circular(80)
//                 ),
//                 child: Center(child: BoldText(text: "Session",fontSize: 22,selectionColor: AppColors.whiteColor,)),
//                )),
//                    Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 30),
//                                   child: BoldText(text: "Create New",selectionColor: AppColors.blueColor,fontSize: 24,),
//                                 ),
//                                  Padding(
//                            padding: EdgeInsets.only(top:10,right: 10),
//                            child: Image.asset(Appimages.house1,height: 85,width: 100,),
//                          )
                         
//                            ],
//                          ),
                       
//                  ],
//                ),
        
        
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 30),
//                child: Column(
//                 children: [
//                     Image.asset(Appimages.game),
//                     SizedBox(height: 40,),
//                  Container(
//                   height: 74,
//                   width: 337,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(24),
//                     border: Border.all(color: AppColors.selectLangugaeColor.withOpacity(0.1),width: 2)
//                   ),
//                   child: Center(child: BoldText(text: "Enter Session Name",fontSize: 22,)),
//                  ),
//                  SizedBox(height: 50,),
//                  BoldText(text: "Select Game Format",selectionColor: AppColors.blueColor,fontSize: 16,),
//                  SizedBox(height: 30,),
//                  GameSelectUseableContainer(text1: "Odyssée des OKR", text2: "Strategic goal-setting workshop", isSelected: isSelected),
//                  SizedBox(height: 10,),
//                    GameSelectUseableContainer(text1: "FeedLoop", text2: "Feedback and collaboration game", isSelected: false),
//                  SizedBox(height: 10,),
//                    GameSelectUseableContainer(text1: "Innovation Challenge", text2: "Creative problem-solving workshop", isSelected: isSelected),
//                  SizedBox(height: 31),
//                  BoldText(text: "Number of Phases",fontSize: 16,selectionColor: AppColors.blueColor,),
//                  SizedBox(height: 14,),
//                  MainText(text: "Phase structure adapts based on selected game format",color: AppColors.teamColor,textAlign: TextAlign.center,height: 1.4,
//                  fontSize: 15,
//                  ),
//                  SizedBox(height: 29,),
//                  Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         width: 108,
//                         height: 116,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor,width: 1.5),
//                           borderRadius: BorderRadius.circular(24)
//                         ),
//                         child: Center(
//                           child: Container(
//                             width: 36.5,
//                             height: 36.5,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: AppColors.minus
//                             ),
//                           ),
//                         ),
//                       ),
//                       ),
//                     ),
//                      Expanded(
//                       child: Container(
//                         width: 108,
//                         height: 116,
//                         decoration: BoxDecoration(
//                           // border: Border.all(color: AppColors.greyColor,width: 1.5),
//                           // borderRadius: BorderRadius.circular(24)
//                         ),
//                         child: Center(child: BoldText(text: "03",fontSize: 40,selectionColor: AppColors.blueColor,)),
//                       ),
//                     ),
//                      Expanded(
//                       child: Container(
//                         width: 108,
//                         height: 116,
//                         decoration: BoxDecoration(
//                           color: AppColors.forwardColor,
//                           // border: Border.all(color: AppColors.greyColor,width: 1.5),
//                           borderRadius: BorderRadius.circular(24)
//                         ),
//                         child: Center(
//                           child: Container(
//                             width: 36.5,
//                             height: 36.5,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: AppColors.minus
//                             ),
//                           ),
//                         ),
//                       ),
                      
//                     )
//                   ],
//                  )
                 
//           ]
//                ),
//              )
              
        
          
//         ),
//       ));
    
  
//   }}

// class CreateNewSessionScreen extends StatelessWidget {
//   final bool isSelected;
//   const CreateNewSessionScreen({super.key, this.isSelected = true});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Positioned(
//                       top: 28,
//                       left: 150,
//                       child: Container(
//                         width: 100,
//                         height: 37,
//                         decoration: BoxDecoration(
//                           color: AppColors.forwardColor,
//                           borderRadius: BorderRadius.circular(80),
//                         ),
//                         child: Center(
//                           child: BoldText(
//                             text: "Session",
//                             fontSize: 22,
//                             selectionColor: AppColors.whiteColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 30),
//                           child: BoldText(
//                             text: "Create New",
//                             selectionColor: AppColors.blueColor,
//                             fontSize: 24,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10, right: 10),
//                           child: Image.asset(
//                             Appimages.house1,
//                             height: 85,
//                             width: 100,
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Column(
//                     children: [
//                       Image.asset(Appimages.game),
//                       SizedBox(height: 40),
//                       Container(
//                         height: 74,
//                         width: 337,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(24),
//                           border: Border.all(
//                             color: AppColors.selectLangugaeColor.withOpacity(0.1),
//                             width: 2,
//                           ),
//                         ),
//                         child: Center(
//                           child: BoldText(
//                             text: "Enter Session Name",
//                             fontSize: 22,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 50),
//                       BoldText(
//                         text: "Select Game Format",
//                         selectionColor: AppColors.blueColor,
//                         fontSize: 16,
//                       ),
//                       SizedBox(height: 30),
//                       GameSelectUseableContainer(
//                         text1: "Odyssée des OKR",
//                         text2: "Strategic goal-setting workshop",
//                         isSelected: isSelected,
//                       ),
//                       SizedBox(height: 10),
//                       GameSelectUseableContainer(
//                         text1: "FeedLoop",
//                         text2: "Feedback and collaboration game",
//                         isSelected: false,
//                       ),
//                       SizedBox(height: 10),
//                       GameSelectUseableContainer(
//                         text1: "Innovation Challenge",
//                         text2: "Creative problem-solving workshop",
//                         isSelected: isSelected,
//                       ),
//                       SizedBox(height: 31),
//                       BoldText(
//                         text: "Number of Phases",
//                         fontSize: 16,
//                         selectionColor: AppColors.blueColor,
//                       ),
//                       SizedBox(height: 14),
//                       MainText(
//                         text:
//                             "Phase structure adapts based on selected game format",
//                         color: AppColors.teamColor,
//                         textAlign: TextAlign.center,
//                         height: 1.4,
//                         fontSize: 15,
//                       ),
//                       SizedBox(height: 29),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               width: 108,
//                               height: 116,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color: AppColors.minus2, width: 1.5),
//                                 borderRadius: BorderRadius.circular(24),
//                               ),
//                               child: Center(
//                                 child: Container(
//                                   width: 36.5,
//                                   height: 36.5,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: AppColors.minus,
//                                   ),
//                                    child: Center(child: Icon(Icons.remove,color: AppColors.whiteColor,),),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Container(
//                               width: 108,
//                               height: 116,
//                               child: Center(
//                                 child: BoldText(
//                                   text: "03",
//                                   fontSize: 40,
//                                   selectionColor: AppColors.blueColor,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Container(
//                               width: 108,
//                               height: 116,
//                               decoration: BoxDecoration(
//                                 color: AppColors.forwardColor,
//                                 borderRadius: BorderRadius.circular(24),
//                               ),
//                               child: Center(
//                                 child: Container(
//                                   width: 36.5,
//                                   height: 36.5,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: AppColors.whiteColor,
//                                   ),
//                                   child: Center(child: Icon(Icons.add,color: AppColors.forwardColor,),),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
// SizedBox(height: 30,),
//                       BoldText(text: "Enter Details of phase 1",selectionColor: AppColors.blueColor,fontSize: 16,),
//                       SizedBox(height: 25,),
//                     CustomPhaseContainer(text1: "Name of Phase 1", text2: "Strategy"),
//                     SizedBox(height: 9,),
//                     CustomPhaseContainer(text1: "No of Stages", text2: "03"),
//                     SizedBox(height: 9,),
//                     CustomPhaseContainer(text1: "Duration", text2: "15 min"),
//                     SizedBox(height: 30,),
//                       BoldText(text: "Phase 1 Stages",selectionColor: AppColors.blueColor,fontSize: 16,),
//                       SizedBox(height: 25,),
//                       FilterUseableContainer(isSelected: true, text: "MCQ", onTap: (){}),
//                       SizedBox(height: 10,),
//                         FilterUseableContainer(isSelected: false, text: "Open-ended", onTap: (){}),
//                       SizedBox(height: 10,),
//                         FilterUseableContainer(isSelected: true, text: "Puzzle", onTap: (){}),
//                       SizedBox(height: 10,),
//                         FilterUseableContainer(isSelected: false, text: "Simulation", onTap: (){}),
//                       SizedBox(height: 24,),
//                       LoginButton(text: "Move to phase 2",height: 45,color: AppColors.forwardColor,radius: 12,fontSize: 14,fontFamily: "refsan",),
//                       SizedBox(height: 50,),
//                       BoldText(text: "Player Capacity",selectionColor: AppColors.blueColor,fontSize: 16,),
// SizedBox(height: 30,),
//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                          Column(
//                         children: [
//                           Image.asset(Appimages.pas,width: 100,height: 86,),
                         
//                           SizedBox(height: 10,),
//                           BoldText(text: "5-10",fontSize: 16,selectionColor: AppColors.blueColor,),
//                           MainText(text: "Small",fontSize: 14,height: 1.7,color: AppColors.teamColor,)
//                         ],
//                       ),
//                        Column(
//                         children: [
//                           Image.asset(Appimages.pas,width: 100,height: 86,),
//                           SizedBox(height: 10,),
                         
//                           BoldText(text: "10-20",fontSize: 16,selectionColor: AppColors.forwardColor,),
//                           MainText(text: "Medium",fontSize: 14,height: 1.7,color: AppColors.forwardColor,)
//                         ],
//                       ),
//                        Column(
//                         children: [
//                           Image.asset(Appimages.pas,width: 100,height: 86,),
//                           SizedBox(height: 10,),
//                           BoldText(text: "20-50",fontSize: 16,selectionColor: AppColors.blueColor,),
//                           MainText(text: "Large",fontSize: 14,height: 1.7,color: AppColors.teamColor,)
//                         ],
//                       )
//                       ],
//                      ),
//                      SizedBox(height: 31,),
//                      Container(height: 50,
//                      width: 334,
//                      decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: AppColors.greyColor,width: 1.5),
//                      ),
//                      child: Padding(
//                        padding: const EdgeInsets.symmetric(horizontal: 10),
//                        child: TextFormField(
//                         cursorColor: AppColors.languageTextColor,
//                          decoration: InputDecoration(
//                            hintText: "Or enter custom number",
//                            focusedBorder: InputBorder.none,
//                            enabledBorder: InputBorder.none,
//                            hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
//                            border: OutlineInputBorder(
//                              borderRadius: BorderRadius.circular(12),
//                            ),
//                          ),
//                        ),
//                      ),

//                      ),
//                      SizedBox(height: 40,),
//                      BoldText(text: "Badge Labeling",fontSize: 16,selectionColor: AppColors.blueColor,),
//                      SizedBox(height: 16,),
//                      Image.asset(Appimages.badge,width: 129,height: 120,),
//                      SizedBox(height: 11,),
//                     CustomPhaseContainer(text1: "Badge Name", text2: "Gold Achiever",fontSize:16 ,color: AppColors.forwardColor,),
// SizedBox(height: 8,),
// CustomPhaseContainer(text1: "Required Score", text2: "90+",fontSize:16 ,color: AppColors.forwardColor,),
// SizedBox(height: 16,),
//                       LoginButton(text: "Add More Badges",height: 45,color: AppColors.forwardColor,radius: 12,fontSize: 14,fontFamily: "refsan",),
// SizedBox(height: 18,),
// Container(
//   width: 337,
//   height: 76,
//   decoration: BoxDecoration(
//     border: Border.all(color: AppColors.greyColor,width: 1.5),
//     borderRadius: BorderRadius.circular(24)
//   ),
//   child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 3),
//     child: Row(
//       children: [
//         Row(
//           children: [
//             Image.asset(Appimages.ai2,width: 45,height: 40,),
//             SizedBox(width: 2,),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 MainText(text: "AI Scoring",fontSize: 14,),
//                 MainText(text: "Enable automatic scoring using AI",fontSize: 11,color: AppColors.teamColor,height: 1.2,)
//               ],
//             ),
           
//           ],
//         ),
//          Expanded(
//           child: FlutterSwitch(
//             value: true, // fix value (static)
//             onToggle: (val) {}, // empty function, koi kaam nahi karega
//             height: 26,
//             width:40,
//             activeColor: AppColors.forwardColor,
//             inactiveColor: AppColors.forwardColor,
//           ),
//         )

//       ],
//     ),
//   ),
// ),
// SizedBox(height: 30,),
// BoldText(text: "Additional Settings",selectionColor: AppColors.blueColor,fontSize: 16,),
// SizedBox(height: 20,),
// FilterUseableContainer(isSelected: true, text: 'Allow late joiners', onTap: (){}),
// SizedBox(height: 10,),
// FilterUseableContainer(isSelected: false, text: 'Send email invitations', onTap: (){}),
// SizedBox(height: 10,),
// FilterUseableContainer(isSelected: false, text: 'Record session for review', onTap: (){}),
// SizedBox(height: 30,),
// LoginButton(text: "Start immediately",ishow: true,icon: Icons.play_arrow_rounded,imageHeight: 30,imageWidth: 30,),
// SizedBox(height: 13,),
// LoginButton(text: "Schedule for later",image:Appimages.calender,ishow: true,color: AppColors.forwardColor,)

// // Container(

// // )

                    
//                                         ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   } // 👈 yeh build method close kar raha hai

// } // 👈 yeh class close kar raha hai

class CreateNewSessionScreen extends StatelessWidget {
  final bool isSelected;
  const CreateNewSessionScreen({super.key, this.isSelected = true});

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100 * scaleFactor,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 28 * scaleFactor,
                        left: 150 * scaleFactor,
                        child: Container(
                          width: 100 * scaleFactor,
                          height: 37 * scaleFactor,
                          decoration: BoxDecoration(
                            color: AppColors.forwardColor,
                            borderRadius: BorderRadius.circular(80 * scaleFactor),
                          ),
                          child: Center(
                            child: BoldText(
                              text: "Session",
                              fontSize: 22 * scaleFactor,
                              selectionColor: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30 * scaleFactor),
                            child: BoldText(
                              text: "Create New",
                              selectionColor: AppColors.blueColor,
                              fontSize: 24 * scaleFactor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10 * scaleFactor, right: 10 * scaleFactor),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
                  child: Column(
                    children: [
                      Image.asset(Appimages.game, width: 300 * scaleFactor),
                      SizedBox(height: 40 * scaleFactor),
                      Container(
                        height: 74 * scaleFactor,
                        width: 337 * scaleFactor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24 * scaleFactor),
                          border: Border.all(
                            color: AppColors.selectLangugaeColor.withOpacity(0.1),
                            width: 2 * scaleFactor,
                          ),
                        ),
                        child: Center(
                          child: BoldText(
                            text: "Enter Session Name",
                            fontSize: 22 * scaleFactor,
                          ),
                        ),
                      ),
                      SizedBox(height: 50 * scaleFactor),
                      BoldText(
                        text: "Select Game Format",
                        selectionColor: AppColors.blueColor,
                        fontSize: 16 * scaleFactor,
                      ),
                      SizedBox(height: 30 * scaleFactor),
                      GameSelectUseableContainer(
                        text1: "Odyssée des OKR",
                        text2: "Strategic goal-setting workshop",
                        isSelected: isSelected,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      GameSelectUseableContainer(
                        text1: "FeedLoop",
                        text2: "Feedback and collaboration game",
                        isSelected: false,
                      ),
                      SizedBox(height: 10 * scaleFactor),
                      GameSelectUseableContainer(
                        text1: "Innovation Challenge",
                        text2: "Creative problem-solving workshop",
                        isSelected: isSelected,
                      ),
                      SizedBox(height: 31 * scaleFactor),
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
                      SizedBox(height: 30 * scaleFactor),
                      BoldText(
                        text: "Enter Details of phase 1",
                        selectionColor: AppColors.blueColor,
                        fontSize: 16 * scaleFactor,
                      ),
                      SizedBox(height: 25 * scaleFactor),
                      CustomPhaseContainer(text1: "Name of Phase 1", text2: "Strategy"),
                      SizedBox(height: 9 * scaleFactor),
                      CustomPhaseContainer(text1: "No of Stages", text2: "03"),
                      SizedBox(height: 9 * scaleFactor),
                      CustomPhaseContainer(text1: "Duration", text2: "15 min"),
                      SizedBox(height: 30 * scaleFactor),
                      BoldText(
                        text: "Phase 1 Stages",
                        selectionColor: AppColors.blueColor,
                        fontSize: 16 * scaleFactor,
                      ),
                      SizedBox(height: 25 * scaleFactor),
                      FilterUseableContainer(isSelected: true, text: "MCQ", onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
                      FilterUseableContainer(isSelected: false, text: "Open-ended", onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
                      FilterUseableContainer(isSelected: true, text: "Puzzle", onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
                      FilterUseableContainer(isSelected: false, text: "Simulation", onTap: () {}),
                      SizedBox(height: 24 * scaleFactor),
                      LoginButton(
                        text: "Move to phase 2",
                        height: 45 * scaleFactor,
                        color: AppColors.forwardColor,
                        radius: 12 * scaleFactor,
                        fontSize: 14 * scaleFactor,
                        fontFamily: "refsan",
                      ),
                      SizedBox(height: 50 * scaleFactor),
                      BoldText(
                        text: "Player Capacity",
                        selectionColor: AppColors.blueColor,
                        fontSize: 16 * scaleFactor,
                      ),
                      SizedBox(height: 30 * scaleFactor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
                              SizedBox(height: 10 * scaleFactor),
                              BoldText(text: "5-10", fontSize: 16 * scaleFactor, selectionColor: AppColors.blueColor),
                              MainText(text: "Small", fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.teamColor)
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
                              SizedBox(height: 10 * scaleFactor),
                              BoldText(text: "10-20", fontSize: 16 * scaleFactor, selectionColor: AppColors.forwardColor),
                              MainText(text: "Medium", fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.forwardColor)
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(Appimages.pas, width: 100 * scaleFactor, height: 86 * scaleFactor),
                              SizedBox(height: 10 * scaleFactor),
                              BoldText(text: "20-50", fontSize: 16 * scaleFactor, selectionColor: AppColors.blueColor),
                              MainText(text: "Large", fontSize: 14 * scaleFactor, height: 1.7, color: AppColors.teamColor)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 31 * scaleFactor),
                      Container(
                        height: 50 * scaleFactor,
                        width: 334 * scaleFactor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12 * scaleFactor),
                          border: Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
                          child: TextFormField(
                            cursorColor: AppColors.languageTextColor,
                            decoration: InputDecoration(
                              hintText: "Or enter custom number",
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
                        text: "Badge Labeling",
                        fontSize: 16 * scaleFactor,
                        selectionColor: AppColors.blueColor,
                      ),
                      SizedBox(height: 16 * scaleFactor),
                      Image.asset(Appimages.badge, width: 129 * scaleFactor, height: 120 * scaleFactor),
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
                      Container(
                        width: 337 * scaleFactor,
                        height: 76 * scaleFactor,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor, width: 1.5 * scaleFactor),
                          borderRadius: BorderRadius.circular(24 * scaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3 * scaleFactor),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(Appimages.ai2, width: 45 * scaleFactor, height: 40 * scaleFactor),
                                  SizedBox(width: 2 * scaleFactor),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MainText(text: "AI Scoring", fontSize: 14 * scaleFactor),
                                      MainText(text: "Enable automatic scoring using AI", fontSize: 11 * scaleFactor, color: AppColors.teamColor, height: 1.2),
                                    ],
                                  ),
                                ],
                              ),
                              Expanded(
                                child: FlutterSwitch(
                                  value: true,
                                  onToggle: (val) {},
                                  height: 26 * scaleFactor,
                                  width: 40 * scaleFactor,
                                  activeColor: AppColors.forwardColor,
                                  inactiveColor: AppColors.forwardColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30 * scaleFactor),
                      BoldText(
                        text: "Additional Settings",
                        selectionColor: AppColors.blueColor,
                        fontSize: 16 * scaleFactor,
                      ),
                      SizedBox(height: 20 * scaleFactor),
                      FilterUseableContainer(isSelected: true, text: 'Allow late joiners', onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
                      FilterUseableContainer(isSelected: false, text: 'Send email invitations', onTap: () {}),
                      SizedBox(height: 10 * scaleFactor),
                      FilterUseableContainer(isSelected: false, text: 'Record session for review', onTap: () {}),
                      SizedBox(height: 30 * scaleFactor),
                      LoginButton(
                        text: "Start immediately",
                        ishow: true,
                        icon: Icons.play_arrow_rounded,
                        imageHeight: 30 * scaleFactor,
                        imageWidth: 30 * scaleFactor,
                      ),
                      SizedBox(height: 13 * scaleFactor),
                      LoginButton(
                        text: "Schedule for later",
                        image: Appimages.calender,
                        ishow: true,
                        color: AppColors.forwardColor,
                      ),
                      SizedBox(height: 50 * scaleFactor), // Add some bottom padding
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