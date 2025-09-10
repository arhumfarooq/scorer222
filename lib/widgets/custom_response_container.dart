// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class CustomResponseContainer extends StatelessWidget {
//   final String? text;
//   final bool ishow;
//   final Color? color1;
//   final String?text1;
//   final String?image;
//   final Color?textColor;
//   final double? containerHeight;
//   final double? containerWidth;
//   final bool ishow1;
//   const CustomResponseContainer({super.key, this.text,  this.ishow=false, this.color1, this.text1, this.image, this.textColor, this.containerHeight, this.containerWidth, this.ishow1=true});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//        clipBehavior: Clip.none,
//       children: [
//         Container(
//           height:containerHeight?? 226,
//           width:containerWidth?? 346,
//           decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(24),
//         border: Border.all(color: AppColors.greyColor,width: 1.7)
//           ),
//           child: Padding(
//         padding:  EdgeInsets.symmetric(horizontal: 17),
//         child: Column(
//           children: [
//             SizedBox(height: 16,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Image.asset(Appimages.blackgirl,height: 47,width: 35,),
//                     SizedBox(width: 3,),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         MainText(text: "Sarah Johnson",fontSize: 14,),
//                         MainText(text: "Team Beta 3:42 PM",color: AppColors.teamColor,fontSize: 13,height: 1,),
                         
//                       ],
//                     )
//                   ],
//                 ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   UseableContainer(text:text?? "Pending",
//                   height: 28,
                
//                   width: 52,color:color1?? AppColors.yellowColor,textColor:textColor?? AppColors.languageTextColor,),
//                 SizedBox(width: 4,),
//                 UseableContainer(text: "78",
//                 fontFamily: "giory",
//                 fontSize: 14
//                 ,
//                 width: 37,
//                 height: 28,
//                 color: AppColors.orangeColor,
                
//                 )
//                 ],
//               )
//               ],
//             ),
//             SizedBox(height: 5,),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //   children: [
//             //     Text(""),
//                 // Image.asset(Appimages.ai2,height: 38,width: 38,)
//             //               ],
//             // ),
//             SizedBox(height: 17,),
//             MainText(text: "Our primary objective is to increase customer satisfaction by 25% through Improved service delivery.",fontSize: 13,height: 1.5,)
//           ,Spacer(),
//         ishow1?  LoginButton(
//           fontSize: 14,
//           fontFamily: "refsan",
//           imageHeight: 17,
//           imageWidth: 18,
//           text:text1?? "Evaluate",height: 45,width: 300,radius: 12,image:image?? Appimages.star,ishow: true,):SizedBox(),
//         SizedBox(height: 20,)
        
//           ],
//         ),
//           ),
          
//         ),
//        ishow? Positioned(
//           top: 70,
//           right: 14,
          
//           child:                 Image.asset(Appimages.ai2,height: 38,width: 38,)
// ):SizedBox(),
// ishow?Positioned(
//   top: 60,
//   right: -6,
//   child:  SvgPicture.asset(
//             Appimages.arrowdown,
//             height: 22,
//             width: 20,
//           ),):SizedBox()
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
// import 'package:package:scorer/widgets/useable_container.dart';
import 'package:scorer/widgets/useable_container.dart';

class CustomResponseContainer extends StatelessWidget {
  final String? text;
  final bool ishow;
  final Color? color1;
  final String? text1;
  final String? image;
  final Color? textColor;
  final double? containerHeight;
  final double? containerWidth;
  final bool ishow1;
  final  VoidCallback ?onTap;

  const CustomResponseContainer({
    super.key,
    this.text,
    this.ishow = false,
    this.color1,
    this.text1,
    this.image,
    this.textColor,
    this.containerHeight,
    this.containerWidth,
    this.ishow1 = true, this.onTap,
  });

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
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: containerHeight ?? 226 * scaleHeight,
            width: containerWidth ?? 346 * scaleWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24 * scaleWidth),
              border: Border.all(color: AppColors.greyColor, width: 1.7 * scaleWidth),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17 * scaleWidth),
              child: Column(
                children: [
                  SizedBox(height: 16 * scaleHeight),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Appimages.blackgirl,
                            height: 47 * scaleHeight,
                            width: 35 * scaleWidth,
                          ),
                          SizedBox(width: 3 * scaleWidth),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MainText(
                                text: "Sarah Johnson",
                                fontSize: 14 * scaleWidth,
                              ),
                              MainText(
                                text: "Team Beta 3:42 PM",
                                color: AppColors.teamColor,
                                fontSize: 13 * scaleWidth,
                                height: 1,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UseableContainer(
                            text: text ?? "Pending",
                            height: 28 * scaleHeight,
                            width: 60 * scaleWidth,
                            color: color1 ?? AppColors.yellowColor,
                            textColor: textColor ?? AppColors.languageTextColor,
                            fontSize: 12 * scaleWidth, // Assuming a base font size
                          ),
                          SizedBox(width: 4 * scaleWidth),
                          UseableContainer(
                            text: "78",
                            fontFamily: "giory",
                            fontSize: 14 * scaleWidth,
                            width: 37 * scaleWidth,
                            height: 28 * scaleHeight,
                            color: AppColors.orangeColor,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 17 * scaleHeight),
                  MainText(
                    text: "Our primary objective is to increase customer satisfaction by 25% through Improved service delivery.",
                    fontSize: 14 * scaleWidth,
                    height: 1.5,
                  ),
                  const Spacer(),
                  if (ishow1)
                    LoginButton(
                      fontSize: 14 * scaleWidth,
                      fontFamily: "refsan",
                      imageHeight: 17 * scaleHeight,
                      imageWidth: 18 * scaleWidth,
                      text: text1 ?? "Evaluate",
                      height: 45 * scaleHeight,
                      width: 300 * scaleWidth,
                      radius: 12 * scaleWidth,
                      image: image ?? Appimages.star,
                      ishow: true,
                    )
                  else
                    SizedBox.shrink(),
                  SizedBox(height: 20 * scaleHeight),
                ],
              ),
            ),
          ),
        ),
        if (ishow)
          Positioned(
            top: 70 * scaleHeight,
            right: 14 * scaleWidth,
            child: Image.asset(
              Appimages.ai2,
              height: 38 * scaleHeight,
              width: 38 * scaleWidth,
            ),
          ),
        if (ishow)
          Positioned(
            top: 60 * scaleHeight,
            right: -6 * scaleWidth,
            child: SvgPicture.asset(
              Appimages.arrowdown,
              height: 22 * scaleHeight,
              width: 20 * scaleWidth,
            ),
          ),
      ],
    );
  }
}