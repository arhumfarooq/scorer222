// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/forward_button_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/page_changed_container.dart';

class StartScreen2 extends StatelessWidget {
  const StartScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Stack(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // SizedBox(height: 20,),
//         Positioned(
//           top: 30,
//           left: 20,
//           child: SvgPicture.asset(Appimages.splash,width: 80,height: 73,)),
//                     Positioned(
//                       left:50,
//                       top: 70,
//                       child: Image.asset(Appimages.man1,height: 300,)),
//                                  Positioned(
//                                   top: 400,
//                                   left: 74,
//                                    child: BoldText(
//                                     selectionColor: AppColors.blueColor,
//                                     text: "A Role for Everyone",textAlign: TextAlign.center,fontSize: 24,
//                                    ),
//                                  ),
//                                   Positioned(
//                                     top: 445,
//                                     left: 47,
//                                     right: 49,
//                                     child: MainText(text: "Whether you’re an Administrator setting up sessions, a Facilitator managing the game, or a Player competing for the top spot, Score’Master+ is designed to fit your role perfectly.",
//                                                 textAlign: TextAlign.center,
//                                                 fontSize: 15,height: 1.24,
                                                
//                                                 ),
//                                   ),
//                                   Positioned(
//                                     top: 620,
//                                     left: 150,
//                                     // right: 50,
//                                     child:      
//                 // Text(""),
//                 // SizedBox(width: 8,),
//                 Row(
//                   children: [
//                 PageChangedContainer(color: AppColors.forwardColor, width: 31, height: 6),
//                 SizedBox(width: 4,),
//                 PageChangedContainer(color: AppColors.pageColor, width: 11, height: 6),
//                 SizedBox(width: 4,),
                
//                 PageChangedContainer(color: AppColors.pageColor, width: 11, height: 6),
//                 //  ForwardButtonContainer()
//                   ],
//                 ),
               
              
//           ),
//             Positioned(
//             top: 590,
//             left: 20,
//             child: ForwardButtonContainer(image: Appimages.arrowback,)),
//           Positioned(
//             top: 590,
//             left: 270,
//             child: ForwardButtonContainer(
              
//             )),
//         // Positioned(child: )
//  Positioned(
//   top: 670,
//   left: 130,
  
//   child: SvgPicture.asset(Appimages.bottom,width: 104,height: 32,)),

//         ],
//       )),)
//     );
//   }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double screenHeight = constraints.maxHeight;
              final double titleFontSize = screenHeight * 0.03;
              final double descriptionFontSize = screenHeight * 0.018;
              final double imageTopPadding = screenHeight * 0.1;
              final double imageLeftPadding = constraints.maxWidth * 0.16;
              final double imageManHeight = screenHeight * 0.5;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 20,),
                    SvgPicture.asset(
                      Appimages.splash,
                      width: constraints.maxWidth * 0.2,
                      height: constraints.maxHeight * 0.08,
                    ),
                     Padding(
                       padding:  EdgeInsets.only(left: 20),
                       child: Image.asset(
                                         Appimages.glass,
                                         height: imageManHeight,
                                            
                                       ),
                     ),
                    //  SizedBox(height: 20,),
                    // SizedBox(height: screenHeight * 0.1),
             
                    
                    // Center(
                    //   child: BoldText(
                    //     selectionColor: AppColors.blueColor,
                    //     text: "A Role for Everyone",
                    //     textAlign: TextAlign.center,
                    //     fontSize: titleFontSize,
                    //   ),
                    // ),
                    // SizedBox(height: screenHeight * 0.01),
                    // Center(
                    //   child: MainText(
                    //     text:
                    //         "Whether you’re an Administrator setting up sessions, a Facilitator managing the game, or a Player competing for the top spot, Score’Master+ is designed to fit your role perfectly.",
                    //     textAlign: TextAlign.center,
                    //     fontSize: descriptionFontSize,
                    //     height: 1.24,
                    //   ),
                    // ),
                    Center(
  child: BoldText(
    selectionColor: AppColors.blueColor,
    text: "role_title".tr,   // 👈 key banayi
    textAlign: TextAlign.center,
    fontSize: titleFontSize,
  ),
),
SizedBox(height: screenHeight * 0.01),
Center(
  child: MainText(
    text: "role_description".tr,   // 👈 key banayi
    textAlign: TextAlign.center,
    fontSize: descriptionFontSize,
    height: 1.24,
  ),
),

                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         ForwardButtonContainer(image: Appimages.arrowback,
                           onTap:(){
                        Get.back();
                      },
                         ),
                        // SizedBox(width: constraints.maxWidth * 0.2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PageChangedContainer(
                              color: AppColors.pageColor,
                              width: constraints.maxWidth * 0.03,
                              height: screenHeight * 0.008,
                            ),
                            SizedBox(width: constraints.maxWidth * 0.01),
                             PageChangedContainer(
                              color: AppColors.forwardColor,
                              width: constraints.maxWidth * 0.08,
                              height: screenHeight * 0.008,
                            ),
                          
                            SizedBox(width: constraints.maxWidth * 0.01),
                            PageChangedContainer(
                              color: AppColors.pageColor,
                              width: constraints.maxWidth * 0.03,
                              height: screenHeight * 0.008,
                            ),
                          ],
                        ),
                        ForwardButtonContainer(
                            onTap:(){
                        Get.toNamed(RouteName.startScreen3);
                      },
                        ),
                      ],
                    ),
                    const Spacer(),
                    Center(child: SvgPicture.asset(Appimages.bottom)),
                    SizedBox(height: screenHeight * 0.02),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


  // SizedBox(height: 20,),
  //           BoldText(text: "Gamify Your Training Like Never Before",textAlign: TextAlign.center,fontSize: 24,
          
  //           selectionColor: AppColors.blueColor,),
  //           MainText(text: "Experience real-time scoring, interactive challenges, and instant AI-powered feedback. Score’Master+ keeps every participant engaged and motivated from start to finish.",
  //           textAlign: TextAlign.center,
  //           fontSize: 14,
            
  //           ),
  //           SizedBox(height: 21,),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(""),
  //               SizedBox(width: 8,),
  //               Center(
  //                 child: Row(
  //                   children: [
  //                 PageChangedContainer(color: AppColors.forwardColor, width: 31, height: 6),
  //                 SizedBox(width: 4,),
  //                 PageChangedContainer(color: AppColors.pageColor, width: 11, height: 6),
  //                 SizedBox(width: 4,),
                  
  //                 PageChangedContainer(color: AppColors.pageColor, width: 11, height: 6)
                  
  //                   ],
  //                 ),
  //               ),
  //               ForwardButtonContainer()
  //             ],
  //           )