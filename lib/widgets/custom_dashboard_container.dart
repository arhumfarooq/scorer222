// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/add_one_Container.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/pause_container.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class CustomDashboardContainer extends StatelessWidget {
//   final String heading;
//   final String text1;
//   final String text2;
//   final Color? color1;
//   final Color?color2;
//   final String description;
//   final IconData? icon1;
//   final IconData? icon2;
//   final String? text3;
//   final String ?text4;
//   final String?text5;
//   final String?text6;
//   final bool ishow;
//   final String?text7;
//   final Color? color3;
//   // final String? text8;
//   final IconData? icon3;
//   final String? svg;
//   final double? height1;
//   final double ? height2;
//   final double? width;
//   final double? width2;
//   final double? height;

//   const CustomDashboardContainer({super.key, required this.heading, required this.text1, required this.text2, this.color1, this.color2, required this.description, this.icon1, this.icon2, this.text3, this.text4, this.text5, this.text6, this.ishow=true, this.text7,  this.icon3, this.color3, this.svg, this.height1, this.height2, this.width, this.width2, this.height});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//         clipBehavior: Clip.none,
//         children: [
//           // Main bordered container
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 32),
//             child: Container(
//               height: 288,
//               width: 334,
//               decoration: BoxDecoration(
//                 border: Border.all(color: AppColors.greyColor, width: 1.5),
//                 borderRadius: BorderRadius.circular(24),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 29),
//                   BoldText(
//                     text: heading,
//                     selectionColor: AppColors.blueColor,
//                     fontSize: 16,
//                   ),
//                   const SizedBox(height: 15),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       UseableContainer(
//                         height: height1,
//                         width:width,
//                         text: text1,
//                         color:color1?? AppColors.orangeColor,
//                       ),
//                       const SizedBox(width: 6),
//                       UseableContainer(
//                         height: height2,
//                         width: width2,
//                         text: text2,
//                         color:color2?? AppColors.forwardColor,
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   MainText(
//                     text:
//                     description,
//                         // "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
//                     textAlign: TextAlign.center,
//                     height: 1.3,
//                     fontSize: 14,
//                   ),
//                    SizedBox(height:height?? 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         children: [
//                           Image.asset(Appimages.player2, height: 28, width: 26),
//                           MainText(text:text5?? "12 Players", fontSize: 14),
//                         ],
//                       ),
//                       const SizedBox(width: 9),
//                       Row(
//                         children: [
//                           Image.asset(Appimages.timeout2, height: 28, width: 26),
//                           MainText(
//                             text:text6?? "25min left",
//                             fontSize: 14,
//                             color: AppColors.redColor,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 20),
                
                
//                 ishow?  Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 17),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                          Expanded(child: PauseContainer(
// // text:tex "",
// // text: text3
// // ,
// text: text3?? "",

//                             icon: icon1,
//                         )),
//                         const SizedBox(width: 10),
//                         Expanded(
//                           child: PauseContainer(
//                             color: AppColors.forwardColor,
//                             text:text4?? "",
//                             icon: icon2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ):  Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 17),
//                     child: PauseContainer(height: 45,
//                     width: 300,
//                                     color: color3,
//                                     text: text7 ?? "",
//                                     icon: icon3,
//                                     svgPath:svg ,
                                    
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ), 

//           // Positioned arrow above container
//           Positioned(
//             top: 36, // thoda border ke bahar
//             right: 9, // corner pe
//             child: AddOneContainer(svgPath: Appimages.forward,width: 13,height: 14,height1: 46,height2: 32.5
//           ,  width1: 46,width2: 32.5,
            
//             ),
//           ),
//         ],
//       );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/add_one_Container.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/useable_container.dart';

class CustomDashboardContainer extends StatelessWidget {
  final String heading;
  final String text1;
  final String text2;
  final Color? color1;
  final Color? color2;
  final String description;
  final IconData? icon1;
  final IconData? icon2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;
  final bool ishow;
  final String? text7;
  final Color? color3;
  final IconData? icon3;
  final String? svg;
  final double? height1;
  final double? height2;
  final double? width;
  final double? width2;
  final double? height;
  final bool isshow;
  final String? smallImage;
  final double? right;
  final double?horizontal;
  final double?mainWidth;
  final double?mainHeight;
  final bool arrowshow;
  final VoidCallback? onTap;


  const CustomDashboardContainer({
    super.key,
    required this.heading,
    required this.text1,
    required this.text2,
    this.color1,
    this.color2,
    required this.description,
    this.icon1,
    this.icon2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.ishow = true,
    this.text7,
    this.icon3,
    this.color3,
    this.svg,
    this.height1,
    this.height2,
    this.width,
    this.width2,
    this.height,  this.isshow=false, this.smallImage, this.right, this.horizontal, this.mainWidth, this.mainHeight,  this.arrowshow=true, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main bordered container
      Container(
          margin: EdgeInsets.symmetric(
        horizontal: horizontal ?? 32 * widthScaleFactor,
      ),
        // clipBehavior: Clip.none,
        height:mainHeight??288  ,
        width:mainWidth?? 334 * widthScaleFactor,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greyColor,
            width: 1.5 * widthScaleFactor,
          ),
          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
        ),
        child: Column(
           mainAxisSize: MainAxisSize.min, // 
          children: [
            SizedBox(height: 29 * heightScaleFactor),
            BoldText(
              text: heading,
              selectionColor: AppColors.blueColor,
              fontSize: 16 * heightScaleFactor,
            ),
            SizedBox(height: 7 * heightScaleFactor),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UseableContainer(
                  height: height1,
                  width: width,
                  text: text1,
                  color: color1 ?? AppColors.orangeColor,
                ),
                SizedBox(width: 6 * widthScaleFactor),
                UseableContainer(
                  height: height2,
                  width: width2,
                  text: text2,
                  color: color2 ?? AppColors.forwardColor,
                ),
              ],
            ),
            SizedBox(height: 10 * heightScaleFactor),
            MainText(
              text: description,
              textAlign: TextAlign.center,
              height: 1.3,
              fontSize: 14 * heightScaleFactor,
            ),
            SizedBox(height: (height ?? 10) * heightScaleFactor),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Appimages.player2,
                      height: 28 * heightScaleFactor,
                      width: 26 * widthScaleFactor,
                    ),
                    MainText(
                      text: text5 ?? "12 Players",
                      fontSize: 14 * heightScaleFactor,
                    ),
                  ],
                ),
                SizedBox(width: 9 * widthScaleFactor),
            Row(
        children: [
          if (smallImage?.endsWith('.svg') ?? false) // 👈 safe null check
            SvgPicture.asset(
              smallImage!,
              height: 28 * heightScaleFactor,
              width: 26 * widthScaleFactor,
            )
          else
            Image.asset(
              smallImage ?? Appimages.timeout2,
              height: 28 * heightScaleFactor,
              width: 26 * widthScaleFactor,
            ),
      
          SizedBox(width: 6 * widthScaleFactor),
      
          MainText(
            text: text6 ?? "25min left",
            fontSize: 14 * heightScaleFactor,
            color: AppColors.redColor,
          ),
        ],
      )
      
              ],
            ),
           Spacer(),
          // SizedBox(height: 14 * heightScaleFactor,),
             isshow ? SizedBox():        ishow
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17 * widthScaleFactor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: PauseContainer(
                            height: 40,
                          fontSize:13 ,
                            text: text3 ?? "",
                            icon: icon1,
                          ),
                        ),
                        SizedBox(width: 10 * widthScaleFactor),
                        Expanded(
                          child: PauseContainer(
                            fontSize: 13,
                            height: 40,
                            color: AppColors.forwardColor,
                            text: text4 ?? "",
                            icon: icon2,
                          ),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17 * widthScaleFactor),
                    child: PauseContainer(
                      onTap: onTap,
                      height: 40 * heightScaleFactor,
                      width: 300 * widthScaleFactor,
                      color: color3,
                      text: text7 ?? "",
                      icon: icon3,
                      svgPath: svg,
                    ),
                  ),

                   SizedBox(height: 14 * heightScaleFactor),
          ],
        ),
      ),
        // Positioned arrow above container
       arrowshow? Positioned(
          top: 36 * heightScaleFactor,
          right:right?? 9 * widthScaleFactor,
          child: AddOneContainer(
              onTap:
                    onTap,
                   
            svgPath: Appimages.forward,
            width: 13 * widthScaleFactor,
            height: 14 * heightScaleFactor,
            height1: 46 * heightScaleFactor,
            height2: 32.5 * heightScaleFactor,
            width1: 46 * widthScaleFactor,
            width2: 32.5 * widthScaleFactor,
          ),
        ):SizedBox()
      ],
    );
  }
}
