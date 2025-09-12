  // import 'package:flutter/material.dart';
  // import 'package:flutter/widgets.dart';
  // import 'package:scorer/constants/appcolors.dart';
  // import 'package:scorer/constants/appimages.dart';
  // import 'package:scorer/widgets/bold_text.dart';
  // import 'package:scorer/widgets/main_text.dart';
  // import 'package:scorer/widgets/useable_container.dart';

  // class PlayersContainers extends StatelessWidget {
  //   final String text1;
  //   // final bool isTeamSelected; // toggle ka value

    
  //   final String text2;
  //   final String image;
  //   final Color?color;
  //   final String ?text3;
  //   final double?width;
  //   final double?width1;
  //   final IconData? icon;
  //   final double? leftPadding;
  //   final String? text4;
  //   final Color?iconColor;
  //   final Color?containerColor;
  //   final bool ishow;
  //   final double ?imageheight;
  //   final double ? imageWidth;
  //   const PlayersContainers({super.key, 
  //   //  this.isTeamSelected = false, // default false
  //   required this.text1, required this.text2, required this.image, this.color, this.text3, this.width, this.width1, this.icon, this.leftPadding, this.text4, this.containerColor, this.iconColor, this.ishow=false, this.imageheight, this.imageWidth});

  //   @override
  //   Widget build(BuildContext context) {
  //     return Container(
  // height: 65,
  // width: 330,
  // decoration: BoxDecoration(
  //   color:containerColor?? AppColors.playerColor,
  //   borderRadius: BorderRadius.circular(30)
  // ),
  // child: Padding(
  //   padding:  EdgeInsets.only(left:leftPadding?? 30,right: 10),
  //   // padding:  EdgeInsets.only(left: 20,right: 10),

  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Row(
  //         children: [
  //     ishow?      Icon(icon,color:iconColor?? AppColors.forwardColor,):SizedBox(),
  //         ishow?  SizedBox(width: 8,):SizedBox(),
  //           BoldText(text: text1,selectionColor: AppColors.blueColor,),
  //           SizedBox(width: 20,),
  //       Image.asset(image,height:imageheight?? 40,width:imageWidth?? 40,),
  //       SizedBox(width: 10,),
  //       MainText(text: text2,fontSize: 14,),
  //         ],
  //       ),
  //       // BoldText(text: text4??"",fontSize: 16,selectionColor: AppColors.blueColor,)
  //       // SizedBox(width:width?? 40,),
  //   ishow?  BoldText(text: text4??"",fontSize: 16,selectionColor: AppColors.blueColor,):   Flexible(child: UseableContainer(text:text3?? "Submitted",width:width1?? 78,color:color?? AppColors.forwardColor,))
  //     ],
  //   ),
  // ));
                              
  //   }
  // }

//   import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class PlayersContainers extends StatelessWidget {
//   final String text1;
//   final String text2;
//   final String image;
//   final Color? color;
//   final String? text3;
//   final double? width;
//   final double? width1;
//   final IconData? icon;
//   final double? leftPadding;
//   final String? text4;
//   final Color? iconColor;
//   final Color? containerColor;
//   final bool ishow;
//   final double? imageheight;
//   final double? imageWidth;

//   const PlayersContainers({
//     super.key,
//     required this.text1,
//     required this.text2,
//     required this.image,
//     this.color,
//     this.text3,
//     this.width,
//     this.width1,
//     this.icon,
//     this.leftPadding,
//     this.text4,
//     this.containerColor,
//     this.iconColor,
//     this.ishow = false,
//     this.imageheight,
//     this.imageWidth,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final containerWidth = screenWidth * 0.9; // 90% of screen width
//     final containerHeight = containerWidth * (65 / 330); // Maintain aspect ratio
//     final horizontalPadding = containerWidth * (30 / 330);
//     final imageSize = containerWidth * (40 / 330);
//     final iconSize = containerWidth * 0.06;
//     final text1FontSize = containerWidth * 0.045;
//     final text2FontSize = containerWidth * 0.04;
//     final text4FontSize = containerWidth * 0.045;

//     return Container(
//       height: containerHeight,
//       width: containerWidth,
//       decoration: BoxDecoration(
//         color: containerColor ?? AppColors.playerColor,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 if (ishow)
//                   Icon(
//                     icon,
//                     color: iconColor ?? AppColors.forwardColor,
//                     size: iconSize,
//                   ),
//                 if (ishow) SizedBox(width: screenWidth * 0.02),
//                 BoldText(
//                   text: text1,
//                   selectionColor: AppColors.blueColor,
//                   fontSize: text1FontSize,
//                 ),
//                 SizedBox(width: screenWidth * 0.05),
//                 Image.asset(
//                   image,
//                   height: imageheight ?? imageSize,
//                   width: imageWidth ?? imageSize,
//                 ),
//                 SizedBox(width: screenWidth * 0.02),
//                 MainText(
//                   text: text2,
//                   fontSize: text2FontSize,
//                 ),
//               ],
//             ),
//             if (ishow)
//               BoldText(
//                 text: text4 ?? "",
//                 fontSize: text4FontSize,
//                 selectionColor: AppColors.blueColor,
//               )
//             else
//               Flexible(
//                 child: UseableContainer(
//                   text: text3 ?? "Submitted",
//                   width: width1 ?? containerWidth * 0.23,
//                   color: color ?? AppColors.forwardColor,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class PlayersContainers extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;
  final Color? color;
  final String? text3;
  final double? width1;
  final IconData? icon;
  final String? text4;
  final Color? iconColor;
  final Color? containerColor;
  final bool ishow;
  final double? imageheight;
  final double? imageWidth;
  final double? leftPadding; // 🔹 keep this

  const PlayersContainers({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
    this.color,
    this.text3,
    this.width1,
    this.icon,
    this.text4,
    this.containerColor,
    this.iconColor,
    this.ishow = false,
    this.imageheight,
    this.imageWidth,
    this.leftPadding, // 🔹
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Adaptive ratios
    final containerWidth = screenWidth * 0.9;
    final containerHeight = containerWidth * (65 / 330);
    final horizontalPadding = containerWidth * (30 / 330);

    final iconSize = containerWidth * 0.06;
    final imageSize = containerWidth * (40 / 330);

    final text1FontSize = containerWidth * 0.045;
    final text2FontSize = containerWidth * 0.04;
    final text4FontSize = containerWidth * 0.045;

    final gapSmall = containerWidth * 0.02;
    final gapMedium = containerWidth * 0.05;
    final borderRadius = containerWidth * 0.09;

    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: containerColor ?? AppColors.playerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: leftPadding ?? horizontalPadding, // 🔹 custom left padding
          right: horizontalPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (ishow)
                  Icon(
                    icon,
                    color: iconColor ?? AppColors.forwardColor,
                    size: iconSize,
                  ),
                if (ishow) SizedBox(width: gapSmall),
                BoldText(
                  text: text1,
                  selectionColor: AppColors.blueColor,
                  fontSize: text1FontSize,
                ),
                SizedBox(width: gapMedium),
                Image.asset(
                  image,
                  height: imageheight ?? imageSize,
                  width: imageWidth ?? imageSize,
                ),
                SizedBox(width: gapSmall),
                MainText(
                  text: text2,
                  fontSize: text2FontSize,
                ),
              ],
            ),
            if (ishow)
              BoldText(
                text: text4 ?? "",
                fontSize: text4FontSize,
                selectionColor: AppColors.blueColor,
              )
            else
              Flexible(
                child: UseableContainer(
                  text: text3 ?? "submitted".tr,
                  width: width1 ?? containerWidth * 0.23,
                  color: color ?? AppColors.forwardColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
