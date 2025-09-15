// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';
// import 'package:scorer/widgets/main_text.dart';

// class PlayerLoginScreen extends StatelessWidget {
//   const PlayerLoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//      body: GradientBackground(child:  Padding(
//        padding: const EdgeInsets.symmetric(horizontal: 32),
//        child: SingleChildScrollView(
//          child: Column(
//               children: [
//                 SizedBox(height: 70,),
//             Row(
//               children: [
//                 SvgPicture.asset(Appimages.arrowback,color: AppColors.forwardColor,width: 24,height: 20,),
//                SizedBox(width: 70,)
//                , BoldText(text: "Player Login",selectionColor: AppColors.blueColor,)
//               ],
//             ),
//             SizedBox(height: 20,),
//             Image.asset(Appimages.player2),
//             SizedBox(height: 23,),
//            LoginTextfield(text: "Enter Full Name")  ,
//            SizedBox(height: 9,),
//             LoginTextfield(text: "Enter Email Address")  ,
//            SizedBox(height: 9,),
//             LoginTextfield(text: "Enter Password")  ,
//            SizedBox(height: 9,),
//            Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: [
//                Row(
         
//                 children: [
//                   Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: AppColors.rememberColor,width: 1)
//                     ),
//                   ),
//                   SizedBox(width: 6,),
//                   MainText(text: "Remember me",fontSize: 14,color: AppColors.languageTextColor,)
//                 ],
                      
//                ),
//                MainText(text: "Forget Password?",fontFamily: "gotham",fontSize: 14,color: AppColors.selectLangugaeColor,)
//              ],
//            )
//            ,
//            SizedBox(height: 30,),
//           LoginButton(text: "Login"),
//           SizedBox(height: 18,),
//            Row(
//            children: [
//              Expanded(
//                child: Divider(
//           color: AppColors.selectLangugaeColor.withOpacity(0.1),
//           thickness: 1,
//           endIndent: 10,
//                ),
//              ),
//              SizedBox(width: 12,),
//              BoldText(text: "or",fontSize: 22,),
//              // Maintext(text: title,fontsize: 18,color: AppColors.textColor,),
//               SizedBox(width: 12,),
//              Expanded(
//                child: Divider(
//           color: AppColors.selectLangugaeColor.withOpacity(0.1),
//           thickness: 1,
//           indent: 10,
//                ),
//              ),
//            ],
//          ),
//           SizedBox(height: 18,),

//           LoginButton(text: "Join with Session Code",color: AppColors.forwardColor,),
         
//           SizedBox(height: 28,),
         
//             // SvgPicture.asset(Appimages.player2)
//               ],
//             ),
//        ),
//      ),),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:get/route_manager.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/constants/routename.dart';
// // import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';

// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';
// import 'package:scorer/widgets/main_text.dart';

// class PlayerLoginScreen extends StatelessWidget {
//   const PlayerLoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen dimensions for scaling
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;

//     // A base height and width to scale from
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: GradientBackground(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: 70 * heightScaleFactor),
//               SizedBox(
//   height: 50,
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       Align(
//         alignment: Alignment.centerLeft,
//         child: SvgPicture.asset(
//           Appimages.arrowback,
//           colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//           width: 24 * widthScaleFactor,
//           height: 20 * heightScaleFactor,
//         ),
//       ),
//       Center(
//         child: BoldText(
//           text: "Player Login",
//           selectionColor: AppColors.blueColor,
//         ),
//       ),
//     ],
//   ),
// ),
//                 SizedBox(height: 20 * heightScaleFactor),
//                 Image.asset(
//                   Appimages.player2,
//                   height: 180 * heightScaleFactor,
//                 ),
//                 SizedBox(height: 23 * heightScaleFactor),
//                LoginTextfield(text: "enter_full_name".tr),
// SizedBox(height: 9 * heightScaleFactor),
// LoginTextfield(text: "enter_email".tr),
// SizedBox(height: 9 * heightScaleFactor),
// LoginTextfield(text: "enter_password".tr),
//                 SizedBox(height: 9 * heightScaleFactor),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           height: 20 * heightScaleFactor,
//                           width: 20 * widthScaleFactor,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               color: AppColors.rememberColor,
//                               width: 1 * widthScaleFactor,
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 6 * widthScaleFactor),
//                       MainText(
//   text: "remember_me".tr,
//   fontSize: 14 * heightScaleFactor,
//   color: AppColors.languageTextColor,
// ),
//                       ],
//                     ),
//                   MainText(
//   text: "forget_password".tr,
//   fontFamily: "gotham",
//   fontSize: 14 * heightScaleFactor,
//   color: AppColors.selectLangugaeColor,
// ),
//                   ],
//                 ),
//                 SizedBox(height: 30 * heightScaleFactor),
//                 LoginButton( text: "login".tr,
//                 fontSize: 20,
//                 onTap: (){
//                   Get.toNamed(RouteName.playerDashboard);
//                 },
//                 ),
//                 SizedBox(height: 18 * heightScaleFactor),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         color: AppColors.selectLangugaeColor.withOpacity(0.1),
//                         thickness: 1,
//                         endIndent: 10 * widthScaleFactor,
//                       ),
//                     ),
//                     SizedBox(width: 12 * widthScaleFactor),
//                   BoldText(
//   text: "or".tr,
//   fontSize: 22 * heightScaleFactor,
// ),
//                     SizedBox(width: 12 * widthScaleFactor),
//                     Expanded(
//                       child: Divider(
//                         color: AppColors.selectLangugaeColor.withOpacity(0.1),
//                         thickness: 1,
//                         indent: 10 * widthScaleFactor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 18 * heightScaleFactor),
//                 LoginButton(
//   fontSize: 20,
//   text: "join_with_code".tr,
//   color: AppColors.forwardColor,
// ),
//                 SizedBox(height: 28 * heightScaleFactor),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';
import 'package:scorer/widgets/main_text.dart';

class PlayerLoginScreen extends StatelessWidget {
  const PlayerLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Scaffold(
      resizeToAvoidBottomInset: true, // 👈 important
      body: GradientBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70 * heightScaleFactor),
                    SizedBox(
                      height: 50,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SvgPicture.asset(
                              Appimages.arrowback,
                              colorFilter: ColorFilter.mode(
                                  AppColors.forwardColor, BlendMode.srcIn),
                              width: 24 * widthScaleFactor,
                              height: 20 * heightScaleFactor,
                            ),
                          ),
                        Center(
  child: BoldText(
        fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 22*widthScaleFactor,
smallSize: 17*widthScaleFactor

                                  ),
    text: "player_login".tr,
    selectionColor: AppColors.blueColor,
  ),
),

                        ],
                      ),
                    ),
                    SizedBox(height: 20 * heightScaleFactor),
                    Center(
                      child: Image.asset(
                        Appimages.player2,
                        height: 180 * heightScaleFactor,
                      ),
                    ),
                    SizedBox(height: 23 * heightScaleFactor),
                    Center(child: LoginTextfield(
                      fontsize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:21*widthScaleFactor,
                        smallSize: 19 *widthScaleFactor
                      ),
                      text: "enter_full_name".tr)),
                    SizedBox(height: 9 * heightScaleFactor),
                    Center(child: LoginTextfield(
                        fontsize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:21*widthScaleFactor,
                        smallSize: 19 *widthScaleFactor
                      ),
                      text: "enter_email".tr)),
                    SizedBox(height: 9 * heightScaleFactor),
                    Center(child: LoginTextfield(
                        fontsize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:21*widthScaleFactor,
                        smallSize: 19 *widthScaleFactor
                      ),
                      text: "enter_password".tr)),
                    SizedBox(height: 9 * heightScaleFactor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20 * heightScaleFactor,
                              width: 20 * widthScaleFactor,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.rememberColor,
                                  width: 1 * widthScaleFactor,
                                ),
                              ),
                            ),
                            SizedBox(width: 6 * widthScaleFactor),
                            MainText(
                              text: "remember_me".tr,
                              fontSize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:14*widthScaleFactor,
                        smallSize: 12*widthScaleFactor
                      ),
                              color: AppColors.languageTextColor,
                            ),
                          ],
                        ),
                        MainText(
                          text: "forget_password".tr,
                          fontFamily: "gotham",
                            fontSize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:14*widthScaleFactor,
                        smallSize: 12*widthScaleFactor
                      ),
                          color: AppColors.selectLangugaeColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 30 * heightScaleFactor),
                    Center(
                      child: LoginButton(
                        text: "login".tr,
                        fontSize: 20,
                        onTap: () {
                          Get.toNamed(RouteName.playerDashboard);
                        },
                      ),
                    ),
                    SizedBox(height: 18 * heightScaleFactor),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.selectLangugaeColor.withOpacity(0.1),
                            thickness: 1,
                            endIndent: 10 * widthScaleFactor,
                          ),
                        ),
                        SizedBox(width: 12 * widthScaleFactor),
                        BoldText(
                          text: "or".tr,
                          fontSize: 22 * heightScaleFactor,
                        ),
                        SizedBox(width: 12 * widthScaleFactor),
                        Expanded(
                          child: Divider(
                            color: AppColors.selectLangugaeColor.withOpacity(0.1),
                            thickness: 1,
                            indent: 10 * widthScaleFactor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18 * heightScaleFactor),
                    Center(
                      child: LoginButton(
                        fontSize: ResponsiveFont.getFontSizeCustom(
                          defaultSize: 20*widthScaleFactor,
                          smallSize: 17*widthScaleFactor
                        ),
                        text: "join_with_code".tr,
                        color: AppColors.forwardColor,
                      ),
                    ),

                    /// 👇 Spacer last me
                    Spacer(),
                    SizedBox(height: 28 * heightScaleFactor),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
