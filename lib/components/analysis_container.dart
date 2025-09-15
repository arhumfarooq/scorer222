// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';

// class AnalysisContainer extends StatelessWidget {
//   final double?height;
//   final bool ishow;
//   const AnalysisContainer({super.key, this.height, this.ishow=false});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(height:height?? 449,
//                        width: 330,
//                        decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         border: Border.all(color: AppColors.greyColor,width: 1.7)
//                        ),
//                        child: Stack(
//                          children: [
//         Positioned(
//           top: 62,right: 110,
//           child: SvgPicture.asset(Appimages.arrowdown)),
//                           // Image.asset(Appimages.ai2),
//                            Padding(
//                              padding: const EdgeInsets.symmetric(horizontal: 16),
//                              child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(height: 20,),
//                                 Center(child: BoldText(text: "AI Analysis & Suggestion",fontSize: 16,selectionColor: AppColors.blueColor,))
//                                                   , 
//                                                   SizedBox(height: 28,),
//                                                   Center(child: Image.asset(Appimages.ai2,width: 46,height: 46,)),
//                                                   SizedBox(height: 20,),
//                                                   Row(
//                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                    children: [
//                               BoldText(text: "Relevance to Question",selectionColor: AppColors.blueColor,fontSize: 16,),
//                               BoldText(text: "95%",selectionColor: AppColors.blueColor,fontSize: 16,),
//                                                    ],
//                                                   ),
//                                                   SizedBox(height: 10,),
//                                                   Row(
//                                                     children: [
//                                                       Container( width: 220,height: 6,
                                                      
//                                                       decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.only(
//                                                   bottomLeft: Radius.circular(20),
//                                                   topLeft: Radius.circular(20)
//                                                 ),
//                                                         color: AppColors.forwardColor
//                                                       ),
//                                                        ),
//                                                        Container( width: 44,height: 6,
                                                      
//                                                       decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.only(
//                                                   bottomRight: Radius.circular(20),
//                                                   topRight: Radius.circular(20)
//                                                 ),
                                                  
//                                                         color: AppColors.greyColor
//                                                       ),
//                                                        )
//                                                     ],
//                                                   ),
//                                                   SizedBox(height: 30,),
//                                                    Row(
//                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                    children: [
//                               BoldText(text: "Strategic Depth",selectionColor: AppColors.blueColor,fontSize: 16,),
//                               BoldText(text: "85%",selectionColor: AppColors.blueColor,fontSize: 16,),
//                                                    ],
//                                                   ),
//                                                   SizedBox(height: 10,),
//                                                   Row(
//                                                     children: [
//                                                       Container( width: 180,height: 6,
                                                      
//                                                       decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.only(
//                                                   bottomLeft: Radius.circular(20),
//                                                   topLeft: Radius.circular(20)
//                                                 ),
//                                                         color: AppColors.percenColor
//                                                       ),
//                                                        ),
//                                                        Container( width: 84,height: 6,
                                                      
//                                                       decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.only(
//                                                   bottomRight: Radius.circular(20),
//                                                   topRight: Radius.circular(20)
//                                                 ),
                                                  
//                                                         color: AppColors.greyColor
//                                                       ),
//                                                        )
//                                                     ],
//                                                   ),
//                                                   SizedBox(height: 30,),
//                                                    Row(
//                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                    children: [
//                               BoldText(text: "Implementation Clarity",selectionColor: AppColors.blueColor,fontSize: 16,),
//                               BoldText(text: "42%",selectionColor: AppColors.blueColor,fontSize: 16,),
//                                                    ],
//                                                   ),
//                                                   SizedBox(height: 10,),
//                                                   Row(
//                                                     children: [
//                                                       Container( width: 130,height: 6,
                                                      
//                                                       decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.only(
//                                                   bottomLeft: Radius.circular(20),
//                                                   topLeft: Radius.circular(20)
//                                                 ),
//                                                         color: AppColors.orangeColor
//                                                       ),
//                                                        ),
//                                                        Container( width:134,height: 6,
                                                      
//                                                       decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.only(
//                                                   bottomRight: Radius.circular(20),
//                                                   topRight: Radius.circular(20)
//                                                 ),
                                                  
//                                                         color: AppColors.greyColor
//                                                       ),
//                                                        )
//                                                     ],
//                                                   ),
//         SizedBox(height: 25,),
//                                                   MainText(text: "AI Suggested Score: 9.1/10 - Comprehensive response with clear objectives, well-defined strategies, and realistic implementation timeline.",height: 1.2,fontSize: 14,)
                              
                              
//                               ],
//                              ),
//                            ),
//                                                     ],
//                        ),
//                        ),
//                       ishow? Positioned(
//                             bottom:-75 ,
//                             left:57,
//                              child: Container(
//                                height: 181,
//                                width: 181,
//                                decoration: BoxDecoration(
//                                  shape: BoxShape.circle,
//                                  gradient: LinearGradient(
//                                    colors: [
//                                      AppColors.forwardColor, // upar halka green
//                                      Colors.grey.shade200,
//                                      // // neeche halka grey
//                                      // AppColors.forwardColor, // upar halka green
                                   
//                                    ],
//                                    begin: Alignment.topCenter,
//                                    end: Alignment.bottomCenter,
//                                  ),
//                                ),
//                                child: Container(
//                                  margin: EdgeInsets.all(3), // border ki thickness
//                                  decoration: BoxDecoration(
//                                    shape: BoxShape.circle,
//                                    color: const Color.fromARGB(255, 202, 202, 202), // andar ka background
//                                  ),
//                                  child: Column(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    children: [
//                                      // Text(
//                                      //   "89/100",
//                                      //   style: TextStyle(
//                                      //     fontSize: 22,
//                                      //     fontWeight: FontWeight.bold,
//                                      //     color: Colors.blue.shade700,
//                                      //   ),
//                                      // ),
//                                      BoldText(text: "89/100",fontSize: 38,selectionColor: AppColors.createBorderColor,),
//                                      SizedBox(height: 4),
//                                      BoldText(text: "Final Score",fontSize: 16,selectionColor: AppColors.blueColor,)
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            )
// :SizedBox()
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';

class AnalysisContainer extends StatelessWidget {
  final double? height;
  final bool ishow;

  const AnalysisContainer({super.key, this.height, this.ishow = false});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions using MediaQuery
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Define a reference size for scaling (e.g., iPhone 11 Pro Max)
    const double baseWidth = 414.0;
    const double baseHeight = 896.0;

    // Calculate scale factors
    final double scaleWidth = screenWidth / baseWidth;
    final double scaleHeight = screenHeight / baseHeight;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height ?? 430 * scaleHeight,
          width: 330 * scaleWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24 * scaleWidth),
            border: Border.all(color: AppColors.greyColor, width: 1.7 * scaleWidth),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 62 * scaleHeight,
                right: 110 * scaleWidth,
                child: SvgPicture.asset(Appimages.arrowdown),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16 * scaleWidth),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20 * scaleHeight),
                    Center(
                      child: BoldText(
                        text:  "ai_analysis_suggestion".tr,
                        fontSize: 16 * scaleWidth,
                        selectionColor: AppColors.blueColor,
                      ),
                    ),
                    SizedBox(height: 28 * scaleHeight),
                    Center(
                      child: Image.asset(
                        Appimages.ai2,
                        width: 46 * scaleWidth,
                        height: 46 * scaleHeight,
                      ),
                    ),
                    SizedBox(height: 20 * scaleHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                        text: "relevance_to_question".tr,
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * scaleWidth,
                        ),
                        BoldText(
                          text: "95%",
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * scaleWidth,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 * scaleHeight),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 220 * scaleWidth,
                            height: 6 * scaleHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20 * scaleWidth),
                                topLeft: Radius.circular(20 * scaleWidth),
                              ),
                              color: AppColors.forwardColor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 44 * scaleWidth,
                            height: 6 * scaleHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 * scaleWidth),
                                topRight: Radius.circular(20 * scaleWidth),
                              ),
                              color: AppColors.greyColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30 * scaleHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                          text: "strategic_depth".tr,
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * scaleWidth,
                        ),
                        BoldText(
                          text: "85%",
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * scaleWidth,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 * scaleHeight),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 180 * scaleWidth,
                            height: 6 * scaleHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20 * scaleWidth),
                                topLeft: Radius.circular(20 * scaleWidth),
                              ),
                              color: AppColors.percenColor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 84 * scaleWidth,
                            height: 6 * scaleHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 * scaleWidth),
                                topRight: Radius.circular(20 * scaleWidth),
                              ),
                              color: AppColors.greyColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30 * scaleHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                         text: "implementation_clarity".tr,
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * scaleWidth,
                        ),
                        BoldText(
                          text: "42%",
                          selectionColor: AppColors.blueColor,
                          fontSize: 16 * scaleWidth,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 * scaleHeight),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 130 * scaleWidth,
                            height: 6 * scaleHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20 * scaleWidth),
                                topLeft: Radius.circular(20 * scaleWidth),
                              ),
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 134 * scaleWidth,
                            height: 6 * scaleHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 * scaleWidth),
                                topRight: Radius.circular(20 * scaleWidth),
                              ),
                              color: AppColors.greyColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25 * scaleHeight),
                  MainText(
  text: "ai_suggested_score".tr,
  fontSize: 14 * scaleWidth,
  height: 1.2,
),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (ishow)
          Positioned(
            bottom: -75 * scaleHeight,
            left: 57 * scaleWidth,
            right: 57 * scaleWidth,
            child: Container(
              height: 181 * scaleWidth, // Use width scale to keep it circular
              width: 181 * scaleWidth,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.forwardColor,
                    Colors.grey.shade200,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(3 * scaleWidth),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 202, 202, 202),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoldText(
                      text: "89/100",
                      fontSize: 35 * scaleWidth,
                      selectionColor: AppColors.createBorderColor,
                    ),
                    SizedBox(height: 4 * scaleHeight),
                    BoldText(
                       text: "final_score".tr,

                      fontSize: 16 * scaleWidth,
                      selectionColor: AppColors.blueColor,
                    )
                  ],
                ),
              ),
            ),
          )
        else
          SizedBox.shrink(),
      ],
    );
  }
}