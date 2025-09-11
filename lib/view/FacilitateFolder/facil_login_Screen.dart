// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';
// import 'package:scorer/widgets/main_text.dart';

// class FacilLoginScreen extends StatelessWidget {
//   const FacilLoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//      body: GradientBackground(child:  Padding(
//        padding: const EdgeInsets.symmetric(horizontal: 32),
//        child: Column(
//             children: [
//               SizedBox(height: 70,),
//           Row(
//             children: [
//               SvgPicture.asset(Appimages.arrowback,color: AppColors.forwardColor,width: 24,height: 20,),
//              SizedBox(width: 50,)
//              , BoldText(text: "Facilitator Login",selectionColor: AppColors.blueColor,)
//             ],
//           ),
//           SizedBox(height: 20,),
//           Image.asset(Appimages.facil2),
//           SizedBox(height: 23,),
//          LoginTextfield(text: "Enter Full Name")  ,
//          SizedBox(height: 9,),
//           LoginTextfield(text: "Enter Email Address")  ,
//          SizedBox(height: 9,),
//           LoginTextfield(text: "Enter Password")  ,
//          SizedBox(height: 9,),
//          Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: [
//              Row(
       
//               children: [
//                 Container(
//                   height: 20,
//                   width: 20,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(color: AppColors.rememberColor,width: 1)
//                   ),
//                 ),
//                 SizedBox(width: 6,),
//                 MainText(text: "Remember me",fontSize: 14,color: AppColors.languageTextColor,)
//               ],
                    
//              ),
//              MainText(text: "Forget Password?",fontFamily: "gotham",fontSize: 14,color: AppColors.selectLangugaeColor,)
//            ],
//          )
//          ,
//          SizedBox(height: 30,),
//         LoginButton(text: "Login"),
//         SizedBox(height: 18,),
//             ],
//           ),
//      ),),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart' show RouteName;
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';
import 'package:scorer/widgets/main_text.dart';

class FacilLoginScreen extends StatelessWidget {
  const FacilLoginScreen({super.key});

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

    return Scaffold(
      body: GradientBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
          child: Column(
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
                    colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
                    width: 24 * widthScaleFactor,
                    height: 20 * heightScaleFactor,
                  ),
                ),
              Center(
  child: BoldText(
    text: "facilitator_login".tr,
    selectionColor: AppColors.blueColor,
  ),
),
              ],
            ),
          ),
              SizedBox(height: 20 * heightScaleFactor),
              Image.asset(
                Appimages.facil2,
                height: 180 * heightScaleFactor,
              ),
              SizedBox(height: 23 * heightScaleFactor),
             LoginTextfield(text: "enter_full_name".tr),
SizedBox(height: 9 * heightScaleFactor),
LoginTextfield(text: "enter_email".tr),
SizedBox(height: 9 * heightScaleFactor),
LoginTextfield(text: "enter_password".tr),
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
  fontSize: 14 * heightScaleFactor,
  color: AppColors.languageTextColor,
),
                    ],
                  ),
                 MainText(
  text: "forget_password".tr,
  fontFamily: "gotham",
  fontSize: 14 * heightScaleFactor,
  color: AppColors.selectLangugaeColor,
),
                ],
              ),
              SizedBox(height: 30 * heightScaleFactor),
              LoginButton(
                fontSize: 20,
                
               text: "login".tr, onTap:(){
                        Get.toNamed(RouteName.facilitatorDashboard);
                      },),
              SizedBox(height: 18 * heightScaleFactor),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
