// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_svg/flutter_svg.dart';
// // // import 'package:scorer/constants/appcolors.dart';
// // // import 'package:scorer/constants/appimages.dart';
// // // import 'package:scorer/widgets/bold_text.dart';

// // // class LoginButton extends StatelessWidget {
// // //   final String text;
// // //   final Color? color;
// // //   final bool ishow;
// // //   final String?image;
// // //   const LoginButton({super.key, required this.text, this.color, this.ishow=false, this.image});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return  Container(
// // //           height: 70,
// // //           width: 337,
// // //           decoration: BoxDecoration(
// // //             borderRadius: BorderRadius.circular(25),
// // //             color:color?? AppColors.selectLangugaeColor,
// // //           ),
// // //           child: Row(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: [
// // //               SvgPicture.asset(ishow? image: ""),
// // //               SizedBox(width:ishow? 10:0,),
// // //               Center(child: BoldText(text: text,selectionColor: AppColors.whiteColor,fontSize: 22,)),
// // //             ],
// // //           ),
// // //          );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/widgets/bold_text.dart';

// // class LoginButton extends StatelessWidget {
// //   final String text;
// //   final Color? color;
// //   final bool ishow;
// //   final String? image;
// //   final double? height;
// //   final double? width;
// //   final String? fontFamily;
// //   final double? imageHeight;
// //   final double? imageWidth;
// //   final double ? radius;
// //   final double? fontSize;
// //   const LoginButton({
// //     super.key,
// //     required this.text,
// //     this.color,
// //     this.ishow = false,
// //     this.image, this.height, this.width, this.radius, this.fontFamily, this.imageHeight, this.imageWidth, this.fontSize,
    
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height:height?? 70,
// //       width:width?? 337,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(radius??  25),
// //         color: color ?? AppColors.selectLangugaeColor,
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           if (ishow && image != null) ...[
// //             SvgPicture.asset(image!, height:imageHeight?? 24, width:imageWidth?? 24),
// //             const SizedBox(width: 10),
// //           ],
// //           Center(
// //             child: BoldText(
// //               fontFamily: fontFamily,
// //               text: text,
// //               selectionColor: AppColors.whiteColor,
// //               fontSize:fontSize?? 22,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/bold_text.dart';

// class LoginButton extends StatelessWidget {
//   final String text;
//   final Color? color;
//   final bool ishow;
//   final String? image;        // png/jpg/svg ka path
//   final IconData? icon;       // agar flutter icon use karna ho
//   final double? height;
//   final double? width;
//   final String? fontFamily;
//   final double? imageHeight;
//   final double? imageWidth;
//   final double? radius;
//   final double? fontSize;

//   const LoginButton({
//     super.key,
//     required this.text,
//     this.color,
//     this.ishow = false,
//     this.image,
//     this.icon,
//     this.height,
//     this.width,
//     this.radius,
//     this.fontFamily,
//     this.imageHeight,
//     this.imageWidth,
//     this.fontSize,
//   });

//   @override
//   Widget build(BuildContext context) {
//     Widget? leading;

//     if (ishow) {
//       if (icon != null) {
//         // agar Icon diya ho
//         leading = Icon(icon, size: imageHeight ?? 24, color: AppColors.whiteColor);
//       } else if (image != null) {
//         // agar image path diya ho
//         if (image!.endsWith(".svg")) {
//           leading = SvgPicture.asset(image!, height: imageHeight ?? 24, width: imageWidth ?? 24,color: AppColors.whiteColor,);
//         } else {
//           leading = Image.asset(image!, height: imageHeight ?? 24, width: imageWidth ?? 24);
//         }
//       }
//     }

//     return Container(
//       height: height ?? 70,
//       width: width ?? 337,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(radius ?? 25),
//         color: color ?? AppColors.selectLangugaeColor,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (leading != null) ...[
//             leading,
//             const SizedBox(width: 10),
//           ],
//           Center(
//             child: BoldText(
//               fontFamily: fontFamily,
//               text: text,
//               selectionColor: AppColors.whiteColor,
//               fontSize: fontSize ?? 22,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Color? color;
  final bool ishow;
  final String? image;
  final IconData? icon;
  final double? height;
  final double? width;
  final String? fontFamily;
  final double? imageHeight;
  final double? imageWidth;
  final double? radius;
  final double? fontSize;
  final VoidCallback?onTap;

  const LoginButton({
    super.key,
    required this.text,
    this.color,
    this.ishow = false,
    this.image,
    this.icon,
    this.height,
    this.width,
    this.radius,
    this.fontFamily,
    this.imageHeight,
    this.imageWidth,
    this.fontSize, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    // A base height and width to scale from, e.g., a common phone (iPhone 11)
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    Widget? leading;

    if (ishow) {
      if (icon != null) {
        // agar Icon diya ho
        leading = Icon(icon, size: (imageHeight ?? 24) * heightScaleFactor, color: AppColors.whiteColor);
      } else if (image != null) {
        // agar image path diya ho
        if (image!.endsWith(".svg")) {
          leading = SvgPicture.asset(
            image!,
            height: (imageHeight ?? 24) * heightScaleFactor,
            width: (imageWidth ?? 24) * widthScaleFactor,
            colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
          );
        } else {
          leading = Image.asset(
            image!,
            height: (imageHeight ?? 24) * heightScaleFactor,
            width: (imageWidth ?? 24) * widthScaleFactor,
          );
        }
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (height ?? 65) * heightScaleFactor,
        width: (width ?? 337) * widthScaleFactor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular((radius ?? 25) * heightScaleFactor),
          color: color ?? AppColors.selectLangugaeColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[
              leading,
              SizedBox(width: 10 * widthScaleFactor),
            ],
            Center(
              child: BoldText(
                fontFamily: fontFamily,
                text: text,
                selectionColor: AppColors.whiteColor,
                fontSize: (fontSize ?? 22) * heightScaleFactor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
