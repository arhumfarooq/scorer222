// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer/components/analysis_container.dart';
// import 'package:scorer/components/responsive_fonts.dart';
// import 'package:scorer/components/team_Alpha_Container.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/constants/routename.dart';
// // import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';

// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class ViewScoreScreen extends StatelessWidget {
//   const ViewScoreScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//        final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     // A more direct way to get scaling factors
//     final double baseHeight = 812.0;
//     final double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;

//      final Size screenSize = MediaQuery.of(context).size;
//     // final double screenHeight = screenSize.height;
//     // final double screenWidth = screenSize.width;

//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                     SizedBox(height: 23,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     SvgPicture.asset(
//                                       Appimages.arrowback,
//                                       color: AppColors.forwardColor,
//                                       width: 24,
//                                       height: 20,
//                                     ),
//                                     BoldText(
//   fontSize:ResponsiveFont.getFontSizeCustom(
//     defaultSize: 22*widthScaleFactor,
//     smallSize: 20*widthScaleFactor
//   ),
//                                       text: "view_score".tr,
//                                       selectionColor: AppColors.blueColor,
//                                       // fontSize: 24,
//                                     ),
                                    
//                                     Text(""),
//                                   ],
//                                 ),
//                                 SizedBox(height: 27,),
//                                 Container(
//                                   height: 171,
//                                   width: 336,
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: AppColors.greyColor,width: 1.7),
//                                     borderRadius: BorderRadius.circular(24)
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(horizontal: 19),
//                                     child: Column(
//                                       children: [
//                                          SizedBox(height: 16,),
//                                                 Row(
//                                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                   children: [
//                                                     Row(
//                                                       children: [
//                                                         Image.asset(Appimages.blackgirl,height: 47,width: 35,),
//                                                         SizedBox(width: 3,),
//                                                         Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                                           children: [
//                                                             MainText(text: "Alex Martinez",fontSize: 14,),
//                                                             MainText(text: "Team Alpha",color: AppColors.teamColor,fontSize: 13,height: 1,),
                                                             
//                                                           ],
//                                                         )
//                                                       ],
//                                                     ),
//                                                   Row(
//                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                     children: [
//                                                       UseableContainer(text:"submitted".tr,
//                                                       height: 20,
//                                                     fontSize: 11,
//                                                       width: 70,color: AppColors.forwardColor,textColor: AppColors.whiteColor,),
//                                                     SizedBox(width: 4,),
//                                                     UseableContainer(text: "94",
//                                                     fontFamily: "giory",
//                                                     fontSize: 14
//                                                     ,
//                                                     width: 37,
//                                                     height: 28,
//                                                     color: AppColors.orangeColor,
                                                    
//                                                     )
//                                                     ],
//                                                   )
//                                                   ],
//                                                 ),
//               SizedBox(height: 25,),
//                                                 Row(
//                                                   mainAxisAlignment: MainAxisAlignment.center,
//                                                   children: [
//                                                     Column(
//                                                       children: [
//                                                         BoldText(text: "3:42 PM",fontSize: 24,selectionColor: AppColors.forwardColor,),
//                                                         BoldText(text: "submitted".tr,selectionColor: AppColors.blueColor,fontSize: 16,)
//                                                       ],
//                                                     ),
//                                                     SizedBox(width: 40,),
//                                                      Column(
//                                                       children: [
//                                                         BoldText(text: "4:15 PM",fontSize: 24,selectionColor: AppColors.forwardColor,),
//                                                         BoldText(text: "scored".tr,selectionColor: AppColors.blueColor,fontSize: 16,)
//                                                       ],
//                                                     )
//                                                   ],
//                                                 )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 18,),
//                                 AnalysisContainer(height: 500,ishow: true,),
//                                 // SizedBox(height: 30,),
//                                  SizedBox(height: 90,),
//                             BoldText(text: "relevance_threshold".tr,fontSize: 16,selectionColor: AppColors.forwardColor,),
//                            SizedBox(height: 22,),
//                            Container(
//             height: 700,
//             width: 330,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               // color: AppColors.greyColor
//               border: Border.all(color: AppColors.greyColor,width: 1.5)
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 17),
//               child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20,),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//   BoldText(
//                                    text: "team_response".tr,
//                                     fontSize: 16 ,
//                                     selectionColor: AppColors.blueColor,
//                                   ),                                      SizedBox(height: 25,),
//                                       Row(
//                                         children: [
//                                           Image.asset(Appimages.timeout2,height: 19,width: 19,),
//                                           MainText(text: "2 min read",fontSize: 14,color: AppColors.teamColor,)
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 20,),
//                                   MainText(text: "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",fontSize: 14,height: 1.2,)
//               ,SizedBox(height: 20,),
//                                       BoldText( text: "key_strategies".tr,fontSize: 16,selectionColor: AppColors.blueColor,),
//                                       SizedBox(height: 20,),
//  MainText(
//   text: "feedback_system".tr,
//   fontSize: 14 ,
//   height: 1.2,
// ),                                SizedBox(height: 20,),
//       // SizedBox(height: 20 * heightScaleFactor),
//                              MainText(
//   text: "reduce_response_time".tr,
//   fontSize: 14 ,
//   height: 1.2,
// ),                                SizedBox(height: 20,),
          
//  MainText(
//   text: "enhance_self_service".tr,
//   fontSize: 14 ,
//   height: 1.2,
// ),           SizedBox(height: 20,),
          
            
          
          
          
//           ],
//               ),
//             ),
//           ),
//           SizedBox(height: 26,),
//           LoginButton(
//              fontSize:ResponsiveFont.getFontSizeCustom(
//               defaultSize:  18*widthScaleFactor,
//               smallSize: 15*widthScaleFactor
//             ),
//             onTap: () {
//             Get.toNamed(RouteName.overViewOptionScreen);
//           },
//             text: "move_next_stage".tr,ishow: true,imageHeight: 22,imageWidth: 26,icon: Icons.fast_forward,),
          
//           // LoginButton(text: "Accept AI Score (85)",color: AppColors.forwardColor,image: Appimages.ai2,ishow: true,imageHeight: 38,imageWidth: 32,height: 74,),
//     SizedBox(height: 15,),
//           LoginButton(
//             fontSize:ResponsiveFont.getFontSizeCustom(
//               defaultSize:  18*widthScaleFactor,
//               smallSize: 15*widthScaleFactor
//             ),
//             text: "Share Responses",color: AppColors.forwardColor,image: Appimages.move,ishow: true,imageHeight: 26,imageWidth: 30,),
          
//           // LoginButton(text: "Move to Next Stage",ishow: true,imageHeight: 22,imageWidth: 26,icon: Icons.fast_forward,height: 74,),
//        SizedBox(height: 15,),
//           LoginButton(
//              fontSize:ResponsiveFont.getFontSizeCustom(
//               defaultSize:  18*widthScaleFactor,
//               smallSize: 15*widthScaleFactor
//             ),
//             text: "export_pdf".tr,ishow: true,imageHeight: 18,imageWidth: 18,image: Appimages.export,color: AppColors.redColor ,),
//           SizedBox(height: 15,),
//           LoginButton(
            
//             fontSize:ResponsiveFont.getFontSizeCustom(
//               defaultSize:  18*widthScaleFactor,
//               smallSize: 15*widthScaleFactor
//             ),
//              text: "edit_score_feedback".tr,ishow: true,imageHeight: 22,imageWidth: 22,icon: Icons.edit,color: AppColors.orangeColor ,),
          
//                                 SizedBox(height: 39,)
                   
                  
//                 ],
//               ),
//             ),
//           ),
//               Positioned(
//           right: 0,
//           top: screenHeight * 0.2,
//           child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
//         ),
//         ],

//       ))),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/analysis_container.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart'; // Assuming this is GradientBackground

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class ViewScoreScreen extends StatelessWidget {
  const ViewScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    // Base dimensions for scaling
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    
    // Scaling factors
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 23 * heightScaleFactor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            Appimages.arrowback,
                            color: AppColors.forwardColor,
                            width: 24 * widthScaleFactor,
                            height: 20 * heightScaleFactor,
                          ),
                          BoldText(
                            fontSize: ResponsiveFont.getFontSizeCustom(
                              defaultSize: 22 * widthScaleFactor,
                              smallSize: 20 * widthScaleFactor,
                            ),
                            text: "view_score".tr,
                            selectionColor: AppColors.blueColor,
                          ),
                          const SizedBox.shrink(), // A more readable way to have an empty widget
                        ],
                      ),
                      SizedBox(height: 27 * heightScaleFactor),
                      Container(
                        height: 171 * heightScaleFactor,
                        width: 336 * widthScaleFactor,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19 * widthScaleFactor),
                          child: Column(
                            children: [
                              SizedBox(height: 16 * heightScaleFactor),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Appimages.blackgirl,
                                        height: 47 * heightScaleFactor,
                                        width: 35 * widthScaleFactor,
                                      ),
                                      SizedBox(width: 3 * widthScaleFactor),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          MainText(text: "Alex Martinez", fontSize: 14 * widthScaleFactor),
                                          MainText(
                                            text: "Team Alpha",
                                            color: AppColors.teamColor,
                                            fontSize: 13 * widthScaleFactor,
                                            height: 1,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      UseableContainer(
                                        text: "submitted".tr,
                                        height: 20 * heightScaleFactor,
                                        fontSize: 11 * widthScaleFactor,
                                        width: 70 * widthScaleFactor,
                                        color: AppColors.forwardColor,
                                        textColor: AppColors.whiteColor,
                                      ),
                                      SizedBox(width: 4 * widthScaleFactor),
                                      UseableContainer(
                                        text: "94",
                                        fontFamily: "giory",
                                        fontSize: 14 * widthScaleFactor,
                                        width: 37 * widthScaleFactor,
                                        height: 28 * heightScaleFactor,
                                        color: AppColors.orangeColor,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 25 * heightScaleFactor),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      BoldText(
                                        text: "3:42 PM",
                                        fontSize: 24 * widthScaleFactor,
                                        selectionColor: AppColors.forwardColor,
                                      ),
                                      BoldText(
                                        text: "submitted".tr,
                                        selectionColor: AppColors.blueColor,
                                        fontSize: 16 * widthScaleFactor,
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 40 * widthScaleFactor),
                                  Column(
                                    children: [
                                      BoldText(
                                        text: "4:15 PM",
                                        fontSize: 24 * widthScaleFactor,
                                        selectionColor: AppColors.forwardColor,
                                      ),
                                      BoldText(
                                        text: "scored".tr,
                                        selectionColor: AppColors.blueColor,
                                        fontSize: 16 * widthScaleFactor,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18 * heightScaleFactor),
                      AnalysisContainer(height: 500 * heightScaleFactor, ishow: true),
                      SizedBox(height: 90 * heightScaleFactor),
                      BoldText(
                        text: "relevance_threshold".tr,
                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.forwardColor,
                      ),
                      SizedBox(height: 22 * heightScaleFactor),
                      Container(
                        height: 500 * heightScaleFactor,
                        width: 330 * widthScaleFactor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                          border: Border.all(color: AppColors.greyColor, width: 1.5 * widthScaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17 * widthScaleFactor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20 * heightScaleFactor),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(
                                    text: "team_response".tr,
                                    fontSize: 16 * widthScaleFactor,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                  SizedBox(height: 25 * heightScaleFactor),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Appimages.timeout2,
                                        height: 19 * heightScaleFactor,
                                        width: 19 * widthScaleFactor,
                                      ),
                                      MainText(
                                        text: "2 min read",
                                        fontSize: 14 * widthScaleFactor,
                                        color: AppColors.teamColor,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              BoldText(
                                text: "key_strategies".tr,
                                fontSize: 16 * widthScaleFactor,
                                selectionColor: AppColors.blueColor,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "feedback_system".tr,
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "reduce_response_time".tr,
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "enhance_self_service".tr,
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 26 * heightScaleFactor),
                      LoginButton(
                        fontSize: ResponsiveFont.getFontSizeCustom(
                          defaultSize: 18 * widthScaleFactor,
                          smallSize: 15 * widthScaleFactor,
                        ),
                        onTap: () {
                          Get.toNamed(RouteName.overViewOptionScreen);
                        },
                        text: "move_next_stage".tr,
                        ishow: true,
                        imageHeight: 22 * heightScaleFactor,
                        imageWidth: 26 * widthScaleFactor,
                        icon: Icons.fast_forward,
                      ),
                      SizedBox(height: 15 * heightScaleFactor),
                      LoginButton(
                        fontSize: ResponsiveFont.getFontSizeCustom(
                          defaultSize: 18 * widthScaleFactor,
                          smallSize: 15 * widthScaleFactor,
                        ),
                        text: "Share Responses",
                        color: AppColors.forwardColor,
                        image: Appimages.move,
                        ishow: true,
                        imageHeight: 26 * heightScaleFactor,
                        imageWidth: 30 * widthScaleFactor,
                      ),
                      SizedBox(height: 15 * heightScaleFactor),
                      LoginButton(
                        fontSize: ResponsiveFont.getFontSizeCustom(
                          defaultSize: 18 * widthScaleFactor,
                          smallSize: 15 * widthScaleFactor,
                        ),
                        text: "export_pdf".tr,
                        ishow: true,
                        imageHeight: 18 * heightScaleFactor,
                        imageWidth: 18 * widthScaleFactor,
                        image: Appimages.export,
                        color: AppColors.redColor,
                      ),
                      SizedBox(height: 15 * heightScaleFactor),
                      LoginButton(
                        fontSize: ResponsiveFont.getFontSizeCustom(
                          defaultSize: 18 * widthScaleFactor,
                          smallSize: 15 * widthScaleFactor,
                        ),
                        text: "edit_score_feedback".tr,
                        ishow: true,
                        imageHeight: 22 * heightScaleFactor,
                        imageWidth: 22 * widthScaleFactor,
                        icon: Icons.edit,
                        color: AppColors.orangeColor,
                      ),
                      SizedBox(height: 39 * heightScaleFactor),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: screenHeight * 0.2,
                child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
              ),
            ],
          ),
        ),
      ),
    );
  }
}