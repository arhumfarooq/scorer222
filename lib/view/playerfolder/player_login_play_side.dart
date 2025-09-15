// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart' show Appimages, aa;
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';

// class PlayerLoginPlaySide extends StatelessWidget {
//   const PlayerLoginPlaySide({super.key});

//   @override
//   Widget build(BuildContext context) {
//        final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;

//     // A base height and width to scale from, e.g., a common phone (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 32),
//         child: Column(
//           children: [
//             SizedBox(height: 20,),
//              SizedBox(
//           height: 50,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//         Align(
//           alignment: Alignment.centerLeft,
//           child: SvgPicture.asset(
//             Appimages.arrowback,
//             colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//             width: 24 * widthScaleFactor,
//             height: 20 * heightScaleFactor,
//           ),
//         ),
//         Center(
//           child: BoldText(
//             text: "Player Nickname",
//             selectionColor: AppColors.blueColor,
//           ),
//         ),
//             ],
//           ),
//         ),
//         Image.asset(Appimages.player2),
//         SizedBox(height: 23,),
//         LoginTextfield(text: "Enter Nick Name"),
//         SizedBox(height: 9,),
//         LoginTextfield(text: "Enter Team Nick Name"),
//         SizedBox(height: 23,),
//         LoginButton(text: "Continue",color: AppColors.forwardColor,)
//           ],
//         ),
//       ))),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart' show Appimages, aa;
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';
// import 'package:scorer/widgets/gradient_background.dart';


class PlayerLoginPlaySide extends StatelessWidget {
  const PlayerLoginPlaySide({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
            child: Column(
              children: [
                SizedBox(height: 20 * heightScaleFactor),
                SizedBox(
                  height: 50 * heightScaleFactor,
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
    text: "player_nickname".tr,
    selectionColor: AppColors.blueColor,
    fontSize: 24 * widthScaleFactor,
  ),
),
                    ],
                  ),
                ),
                SizedBox(height: 50 * heightScaleFactor), // Add a responsive spacer
                Image.asset(
                  Appimages.player2,
                  width: 150 * widthScaleFactor, // Scale image width
                  height: 150 * heightScaleFactor, // Scale image height
                ),
                SizedBox(height: 23 * heightScaleFactor),
               
LoginTextfield(
  fontsize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 21,
    smallSize: 18
  ),
  text: "enter_nickname".tr,
),

SizedBox(height: 9 * heightScaleFactor),

LoginTextfield(
  fontsize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 21,
    smallSize: 18
  ),
  text: "enter_team_nickname".tr,
),               SizedBox(height: 23 * heightScaleFactor),
                LoginButton(
                  onTap: ()=>Get.toNamed(RouteName.playerDashboardScreen2),
                  text: "continue".tr,
                  color: AppColors.forwardColor,
                  height: 50 * heightScaleFactor, // Scale button height
                  width: double.infinity,
                  fontSize: 16 * widthScaleFactor, // Scale font size
                  radius: 12 * widthScaleFactor, // Scale radius
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}