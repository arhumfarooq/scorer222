
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/controllers/game_select_controller.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';

// class CompleteSessionRow extends StatelessWidget {
//   const CompleteSessionRow({
//     super.key,
//     required this.widthScaleFactor,
//     required this.controller,
//   });

//   final double widthScaleFactor;
//   final GameSelectController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // First circle
//         Container(
//           height: 20 * widthScaleFactor,
//           width: 20 * widthScaleFactor,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: AppColors.forwardColor,
//           ),
//           child: Center(
//             child: Icon(
//               Icons.check,
//               size: 17 * widthScaleFactor,
//               color: AppColors.whiteColor,
//             ),
//           ),
//         ),
//         SizedBox(width: 7 * widthScaleFactor),
//         // First line
//         Container(
//           width: 120 * widthScaleFactor,
//           height: 4,
//           decoration: BoxDecoration(
//             color: AppColors.forwardColor,
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//         SizedBox(width: 7 * widthScaleFactor),
    
//         // Second circle
//         controller.currentPhase.value >= 1
//             ? Container(
//                 height: 20 * widthScaleFactor,
//                 width: 20 * widthScaleFactor,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.check,
//                     size: 17 * widthScaleFactor,
//                     color: AppColors.whiteColor,
//                   ),
//                 ),
//               )
//             : Container(
//                 height: 20 * widthScaleFactor,
//                 width: 20 * widthScaleFactor,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.orangeColor,
//                 ),
//                 child: Center(
//                   child: MainText(
//                     text: "2",
//                     color: AppColors.whiteColor,
//                     fontSize: 11 * widthScaleFactor,
//                   ),
//                 ),
//               ),
//         SizedBox(width: 7 * widthScaleFactor),
//         // Second line
//         Container(
//           width: 120 * widthScaleFactor,
//           height: 4,
//           decoration: BoxDecoration(
//             color: controller.currentPhase.value >= 2
//                 ? AppColors.forwardColor
//                 : AppColors.greyColor,
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//         SizedBox(width: 7 * widthScaleFactor),
    
//         // Third circle
//         controller.currentPhase.value >= 2
//             ? Container(
//                 height: 20 * widthScaleFactor,
//                 width: 20 * widthScaleFactor,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.forwardColor,
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.check,
//                     size: 17 * widthScaleFactor,
//                     color: AppColors.whiteColor,
//                   ),
//                 ),
//               )
//             : Container(
//                 height: 20 * widthScaleFactor,
//                 width: 20 * widthScaleFactor,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.greyColor,
//                 ),
//                 child: Center(
//                   child: MainText(
//                     text: "3",
//                     color: AppColors.whiteColor,
//                     fontSize: 11 * widthScaleFactor,
//                   ),
//                 ),
//               ),
//       ],
//     );
//   }
// }



class ScenerioContainer extends StatelessWidget {
  const ScenerioContainer({
    super.key,
    required this.heightScaleFactor,
    required this.widthScaleFactor,
  });

  final double heightScaleFactor;
  final double widthScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
