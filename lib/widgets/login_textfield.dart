// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';

// class LoginTextfield extends StatelessWidget {
//   final String text;
//   const LoginTextfield({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       height: 70,
//       width: 337,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         border: Border.all(color: AppColors.selectLangugaeColor.withOpacity(0.1),width: 2)
//       ),
//       child: Center(
//         child: TextFormField(
        
//           // scrollPadding: EdgeInsets.symmetric(horizontal: 10),
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(horizontal: 10),
//             hintText: text,
//         hintStyle: TextStyle(
//           fontFamily: "giory",
//           fontSize: 21,color: AppColors.languageTextColor
//         ), // yahan apna hint likho
//             // border: OutlineInputBorder()
//             //, // optional: border dikhane ke liye
//             enabledBorder: InputBorder.none,
//             focusedBorder: InputBorder.none
//           ),
//         ),
//       ),
    
//     )
// ;
//   }
// }

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
    // Get the screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    // A base height and width to scale from, e.g., a common phone (iPhone 11)
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
