// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/widgets/main_text.dart';

// // class PauseContainer extends StatelessWidget {
// //   final Color ?color;
// // final IconData ? icon;
// // final String  text;
// // final double ?height;
// // final double? width;
// //   const PauseContainer({super.key, this.color, this.icon, this.text="", this.height, this.width});

// //   @override
// //   Widget build(BuildContext context) {
// //     return  Container(
// //       height:height?? 45,
// //       width:width?? 140,
// //       decoration: BoxDecoration(
// //         color:color?? AppColors.selectLangugaeColor,
// //         borderRadius: BorderRadius.circular(12)
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Icon(icon?? Icons.pause,color: AppColors.whiteColor,size: 20,),
// //           SizedBox(width: 8,),
// //           MainText(text:text,color: AppColors.whiteColor,fontSize: 14,)
// //         ],
// //       ),
// //      );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class PauseContainer extends StatelessWidget {
//   final Color? color;
//   final IconData? icon;
//   final String? svgPath; // 👈 svg ke liye option
//   final String text;
//   final double? height;
//   final double? width;

//   const PauseContainer({
//     super.key,
//     this.color,
//     this.icon,
//     this.svgPath,
//     this.text = "",
//     this.height,
//     this.width,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height ?? 45,
//       width: width ?? 140,
//       decoration: BoxDecoration(
//         color: color ?? AppColors.selectLangugaeColor,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (svgPath != null) ...[
//             SvgPicture.asset(
//               svgPath!,
//               height: 14,
//               width: 14,
//               color: AppColors.whiteColor,
//             ),
//           ] else ...[
//             Icon(
//               icon ?? Icons.pause,
//               color: AppColors.whiteColor,
//               size: 20,
//             ),
//           ],
//           const SizedBox(width: 8),
//           MainText(
//             text: text,
//             color: AppColors.whiteColor,
//             fontSize: 14,
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class PauseContainer extends StatelessWidget {
//   final Color? color;
//   final IconData? icon;
//   final String? svgPath;
//   final String text;
//   final double? height;
//   final double? width;
//   final VoidCallback? onTap;

//   const PauseContainer({
//     super.key,
//     this.color,
//     this.icon,
//     this.svgPath,
//     this.text = "",
//     this.height,
//     this.width, this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: height ?? 45,
//         width: width ?? 140,
//         decoration: BoxDecoration(
//           color: color ?? AppColors.selectLangugaeColor,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Agar svgPath mila to Svg dikhaye
//             if (svgPath != null) ...[
//               SvgPicture.asset(
//                 svgPath!,
//                 height: 16,
//                 width: 16,
//                 color: AppColors.whiteColor,
//               ),
//               const SizedBox(width: 8),
//             ]
//             // Agar icon mila to Icon dikhaye
//             else if (icon != null) ...[
//               Icon(
//                 icon,
//                 color: AppColors.whiteColor,
//                 size: 20,
//               ),
//               const SizedBox(width: 8),
//             ],
            
//             // Text hamesha center me
//             MainText(
//               text: text,
//               color: AppColors.whiteColor,
//               fontSize: 14,
//               // textAlign: TextAlign.start,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class PauseContainer extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? svgPath;
  final String text;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  const PauseContainer({
    super.key,
    this.color,
    this.icon,
    this.svgPath,
    this.text = "",
    this.height,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (height ?? 45) * heightScaleFactor,
        width: (width ?? 140) * widthScaleFactor,
        decoration: BoxDecoration(
          color: color ?? AppColors.selectLangugaeColor,
          borderRadius: BorderRadius.circular(12 * widthScaleFactor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgPath != null) ...[
              SvgPicture.asset(
                svgPath!,
                height: 16 * heightScaleFactor,
                width: 16 * widthScaleFactor,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 8 * widthScaleFactor),
            ] else if (icon != null) ...[
              Icon(
                icon,
                color: AppColors.whiteColor,
                size: 20 * heightScaleFactor,
              ),
              SizedBox(width: 8 * widthScaleFactor),
            ],
            MainText(
              text: text,
              color: AppColors.whiteColor,
              fontSize: 14 * heightScaleFactor,
            ),
          ],
        ),
      ),
    );
  }
}
