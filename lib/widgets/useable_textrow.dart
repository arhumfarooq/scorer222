// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class UseableTextrow extends StatelessWidget {
//   final Color color;
//   final String text;
//   final String?text1;
//   const UseableTextrow({super.key, required this.color, required this.text, this.text1});

//   @override
//   Widget build(BuildContext context) {
//     return  Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                   height: 8,
//                                   width: 8,
//                                   decoration: BoxDecoration(
//                                     color: color,
//                                     shape: BoxShape.circle,
//                                   ),
//                                 ),
//                                 SizedBox(width: 9,),
//                                 MainText(text: text,color: AppColors.teamColor,fontSize: 13,)
//                                   ],
//                                 ),
//                                 MainText(text:text1?? "",fontSize: 14,)
//                               ],
//                             );
//   }
// }

import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class UseableTextrow extends StatelessWidget {
  final Color color;
  final String text;
  final String? text1;
  const UseableTextrow({super.key, required this.color, required this.text, this.text1});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dotSize = screenWidth * 0.02; // A small percentage of screen width for the dot
    final horizontalSpace = screenWidth * 0.025; // Spacing between dot and text
    final fontSize = screenWidth * 0.035; // Font size based on screen width
    final fontSize1 = screenWidth * 0.04; // Font size for the second text

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: dotSize,
              width: dotSize,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: horizontalSpace),
            MainText(
              text: text,
              color: AppColors.teamColor,
              fontSize: fontSize,
              height: 1,
            )
          ],
        ),
        MainText(
          text: text1 ?? "",
          fontSize: fontSize1,
        )
      ],
    );
  }
}