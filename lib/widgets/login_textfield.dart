

















        















    





import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';

class LoginTextfield extends StatelessWidget {
  final double? fontsize;
  final String text;
  final double? height;
  final bool ishow;
  
  const LoginTextfield({super.key, required this.text, this.fontsize, this.height,  this.ishow=false});

  @override
  Widget build(BuildContext context) {
    
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Container(
      height:height?? 70 * heightScaleFactor,
      width: 337 * widthScaleFactor,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25 * heightScaleFactor),
        border: Border.all(color: AppColors.selectLangugaeColor.withOpacity(0.1), width: 2 * widthScaleFactor),
      ),
      child: ishow?TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10 * widthScaleFactor),
          hintText: text,
          
          hintStyle: TextStyle(
            fontFamily: "giory",
            fontSize:fontsize?? 21 * heightScaleFactor,
            color: AppColors.languageTextColor,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ):Center(
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10 * widthScaleFactor),
            hintText: text,
            
            hintStyle: TextStyle(
              fontFamily: "giory",
              fontSize:fontsize?? 21 * heightScaleFactor,
              color: AppColors.languageTextColor,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
