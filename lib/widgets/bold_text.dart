// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appcolors.dart';

// // class BoldText extends StatelessWidget {
// //   // final bool? isSelcted;
// //   final String text;
// //   final double? fontSize;
// //   final Color? selectionColor;
// // final TextAlign? textAlign;
// // final String?fontFamily;
// // final double? height;
// //   const BoldText({super.key, required this.text,  this.selectionColor, this.textAlign, this.fontSize, this.height, this.fontFamily});

// //   @override
// //   Widget build(BuildContext context) {
// //     return 
// //         Text(text,style: TextStyle(fontFamily:fontFamily?? "giory",fontSize:fontSize?? 22,letterSpacing: -0.3,
// //         fontWeight: FontWeight.w400,color:selectionColor?? AppColors.languageTextColor,
// //         height: height
        
// //         ),
        
// //         textAlign: textAlign,)
    
// //     ;
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scorer/constants/appcolors.dart';

// class BoldText extends StatelessWidget {
//   final String text;
//   final double? fontSize;
//   final Color? selectionColor;
//   final TextAlign? textAlign;
//   final String? fontFamily;
//   final double? height;

//   const BoldText({
//     super.key,
//     required this.text,
//     this.selectionColor,
//     this.textAlign,
//     this.fontSize,
//     this.height,
//     this.fontFamily,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: fontFamily ?? "giory",
//         fontSize: (fontSize ?? 22).sp, // 👈 responsive font size
//         letterSpacing: -0.3,
//         fontWeight: FontWeight.w400,
//         color: selectionColor ?? AppColors.languageTextColor,
//         height: height?.h, // 👈 responsive line height
//       ),
//       textAlign: textAlign,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? selectionColor;
  final TextAlign? textAlign;
  final String? fontFamily;
  final double? height;

  const BoldText({
    super.key,
    required this.text,
    this.selectionColor,
    this.textAlign,
    this.fontSize,
    this.height,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen height
    final double screenHeight = MediaQuery.of(context).size.height;

    // A base height to scale from. 812 is a common phone height (iPhone 11).
    const double baseHeight = 812.0;

    // Calculate a responsive font size and height
    final double responsiveFontSize =
        (fontSize ?? 22) * (screenHeight / baseHeight);
    final double? responsiveHeight = height != null
        ? height! * (screenHeight / baseHeight)
        : null;

    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? "giory",
        fontSize: responsiveFontSize,
        letterSpacing: -0.3,
        fontWeight: FontWeight.w400,
        color: selectionColor ?? AppColors.languageTextColor,
        height: responsiveHeight,
      ),
      textAlign: textAlign,
    );
  }
}
