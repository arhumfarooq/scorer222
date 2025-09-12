// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';

// class FeedbackContainer extends StatelessWidget {
//   final bool ishow;
//   const FeedbackContainer({super.key, this.ishow=false});

//   @override
//   Widget build(BuildContext context) {
// // var sliderValue = 0.0.obs;
                      
                      
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [

       
//         Container(
//                             height: 297,
//                             width: 337,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(26),
//                               border: Border.all(color: AppColors.greyColor,width: 1.7)
//                             ),
//                             child: Padding(
//                               padding:  EdgeInsets.symmetric(horizontal: 19),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(height: 100,),
                    
//                                   BoldText(text: "AI Feedback",fontSize: 22,selectionColor: AppColors.languageTextColor,),
//                                   // MainText(text: "\"Excellent strategic thinking with a comprehensive digital transformation approach. The timeline is realistic and the  three-phase implementation shows strong project management skills. Great work on considering both technical and human aspects."")
//                                                        MainText(height: 1.3,fontSize: 14,
//                 text:
                
//                  """ "Excellent strategic thinking with a comprehensive digital transformation approach. The timeline is realistic and the three-phase implementation shows strong project management skills. Great work on considering both technical and human aspects." """,
//               )
//               , 
//                                 ],
//                               ),
//                             ),
//                           ),
//                            Positioned(
//           top: -100,
//           left: 70,
          
//           child: Container(
//   height: 181,
//   width: 181,
//   decoration: BoxDecoration(
//     shape: BoxShape.circle,
//     gradient: LinearGradient(
//       colors: [
//         AppColors.forwardColor, // upar halka green
//         Colors.grey.shade200,
//         // // neeche halka grey
//         // AppColors.forwardColor, // upar halka green
      
//       ],
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//     ),
//   ),
//   child: Container(
//     margin: EdgeInsets.all(3), // border ki thickness
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       color: const Color.fromARGB(255, 202, 202, 202), // andar ka background
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // Text(
//         //   "89/100",
//         //   style: TextStyle(
//         //     fontSize: 22,
//         //     fontWeight: FontWeight.bold,
//         //     color: Colors.blue.shade700,
//         //   ),
//         // ),
//         BoldText(text: "89/100",fontSize: 38,selectionColor: AppColors.createBorderColor,),
//         SizedBox(height: 4),
//         BoldText(text: "Final Score",fontSize: 16,selectionColor: AppColors.blueColor,)
//       ],
//     ),
//   ),
// )
// ),
// ishow?Positioned(
//   top: -175,
//   left: 195,
//   child: SvgPicture.asset(Appimages.arrowdown,height: 38,width: 31,)):SizedBox(),

// ishow?Positioned(
//   top: -170,
//   left: 110,
//   child: Image.asset(Appimages.ai2,height: 116,width: 115,)):SizedBox()
// // var sliderValue = 0.0.obs;

// // Obx(() => SliderTheme(
// //   data: SliderTheme.of(context).copyWith(
// //     trackHeight: 3,
// //     activeTrackColor: AppColors.forwardColor,
// //     thumbColor: AppColors.forwardColor,
// //     thumbShape: RoundSliderThumbShape(
// //       enabledThumbRadius: 8,
// //     ),
// //     overlayShape: SliderComponentShape.noOverlay,
// //   ),
// //   child: Slider(
// //     value: sliderValue.value.clamp(0.0, 30.0),
// //     onChanged: (newValue) {
// //       sliderValue.value = newValue;
// //     },
// //     min: 0,
// //     max: 30,
// //   ),
// // ))

//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';

class FeedbackContainer extends StatelessWidget {
  final bool ishow;
  const FeedbackContainer({super.key, this.ishow = false});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions using MediaQuery
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Define a reference size for scaling
    // Using a common phone size (e.g., iPhone 11) for a base.
    const double baseWidth = 414.0;
    const double baseHeight = 896.0;

    // Calculate scale factors
    final double scaleWidth = screenWidth / baseWidth;
    final double scaleHeight = screenHeight / baseHeight;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 297 * scaleHeight,
          width: 337 * scaleWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26 * scaleWidth),
            border: Border.all(color: AppColors.greyColor, width: 1.7 * scaleWidth),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19 * scaleWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100 * scaleHeight),
                BoldText(
                  text: "AI Feedback",
                  fontSize: 22 * scaleWidth,
                  selectionColor: AppColors.languageTextColor,
                ),
                MainText(
                  height: 1.3,
                  fontSize: 14 * scaleWidth,
                  text:
                      """ "Excellent strategic thinking with a comprehensive digital transformation approach. The timeline is realistic and the three-phase implementation shows strong project management skills. Great work on considering both technical and human aspects." """,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -100 * scaleHeight,
          left: 70 * scaleWidth,
          child: Container(
            height: 181 * scaleWidth, // Use width scale for a square container
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
                    fontSize: 38 * scaleWidth,
                    selectionColor: AppColors.createBorderColor,
                  ),
                  SizedBox(height: 4 * scaleHeight),
                  BoldText(
                    text: "Final Score",
                    fontSize: 16 * scaleWidth,
                    selectionColor: AppColors.blueColor,
                  )
                ],
              ),
            ),
          ),
        ),
        if (ishow)
          Positioned(
            top: -175 * scaleHeight,
            left: 195 * scaleWidth,
            child: SvgPicture.asset(
              Appimages.arrowdown,
              height: 38 * scaleHeight,
              width: 31 * scaleWidth,
            ),
          ),
        if (ishow)
          Positioned(
            top: -170 * scaleHeight,
            left: 110 * scaleWidth,
            child: Image.asset(
              Appimages.ai2,
              height: 116 * scaleHeight,
              width: 115 * scaleWidth,
            ),
          ),
      ],
    );
  }
}