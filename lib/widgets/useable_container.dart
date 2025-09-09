// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class UseableContainer extends StatelessWidget {
//   final String text;
//   final Color? color;
//   final double? height;
//   final double? width;
//   final Color?textColor;
//   final String? fontFamily;
//   final double? fontSize;
//   const UseableContainer({super.key, this.color,required this.text, this.height, this.width, this.textColor, this.fontFamily, this.fontSize});

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//           width:width?? 64,
//           height:height?? 20,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(80),
//             color: color
//           ),
//           child: Center(
//             child: MainText(
              
//               text: text,fontFamily:fontFamily?? "abz",fontSize:fontSize?? 12,color:textColor?? AppColors.whiteColor,),
//           ),
//         );
//   }
// }

import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class UseableContainer extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final Color? textColor;
  final String? fontFamily;
  final double? fontSize;

  const UseableContainer({
    super.key,
    this.color,
    required this.text,
    this.height,
    this.width,
    this.textColor,
    this.fontFamily,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    return Container(
      width: (width ?? 64) * widthScaleFactor,
      height: (height ?? 20) * heightScaleFactor,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80 * widthScaleFactor),
        color: color,
      ),
      child: Center(
        child: MainText(
          text: text,
          fontFamily: fontFamily ?? "abz",
          fontSize: (fontSize ?? 12) * heightScaleFactor,
          color: textColor ?? AppColors.whiteColor,
        ),
      ),
    );
  }
}
