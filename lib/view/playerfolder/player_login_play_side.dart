import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart' show Appimages, aa;
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';

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
      body: GradientBackground(child: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 20,),
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
            text: "Player Nickname",
            selectionColor: AppColors.blueColor,
          ),
        ),
            ],
          ),
        ),
        Image.asset(Appimages.player2),
        SizedBox(height: 23,),
        LoginTextfield(text: "Enter Nick Name"),
        SizedBox(height: 9,),
        LoginTextfield(text: "Enter Team Nick Name"),
        SizedBox(height: 23,),
        LoginButton(text: "Continue",color: AppColors.forwardColor,)
          ],
        ),
      ))),
    );
  }
}