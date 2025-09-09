// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/bold_text.dart';

// class LanguageSelectionContainer extends StatelessWidget {
//   final String text;
//   final String image;
//   final bool isSelected;
//   const LanguageSelectionContainer({super.key, required this.text, required this.image, required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     return Container(width: double.infinity,
//   height: 74,
//   decoration: BoxDecoration(
//     color: isSelected ? AppColors.selectLangugaeColor: Colors.transparent,
//     borderRadius: BorderRadius.circular(20),
//   border: Border.all(color:isSelected?AppColors.selectLangugaeColor.withOpacity(0.1): AppColors.borderColor.withOpacity(0.25),width: 2)
//   ),
//   child: Padding(
//     padding:  EdgeInsets.symmetric(horizontal: 13),
//     child: Row(
//       children: [
//         SvgPicture.asset(image),
//         SizedBox(width: 17,),
//       BoldText(text: text,selectionColor: isSelected? AppColors.whiteColor:AppColors.languageTextColor)
//         // Text("English",style: TextStyle(fontFamily: "giory",fontSize: 22,letterSpacing: -0.3,fontWeight: FontWeight.w400,color: AppColors.languageTextColor),)
//       ],
//     ),
//   ),
//   );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';

class LanguageSelectionContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String image;
  final bool isSelected;
  const LanguageSelectionContainer({
    super.key,
    required this.text,
    required this.image,
    required this.isSelected, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width to calculate the scaling factor.
    final double screenWidth = MediaQuery.of(context).size.width;

    // Use a base width for scaling. A common mobile width is a good reference.
    const double baseWidth = 375.0;
    final double scaleFactor = screenWidth / baseWidth;

    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: double.infinity,
        height: 60 * scaleFactor, // Scale the height
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectLangugaeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20 * scaleFactor), // Scale the border radius
          border: Border.all(
            color: isSelected ? AppColors.selectLangugaeColor.withOpacity(0.1) : AppColors.borderColor.withOpacity(0.25),
            width: 2 * scaleFactor, // Scale the border width
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13 * scaleFactor), // Scale horizontal padding
          child: Row(
            children: [
              // Scale the SVG image
              SvgPicture.asset(
                image,
                width: 35 * scaleFactor, // Assuming a base width for the SVG
                height: 35 * scaleFactor, // Assuming a base height for the SVG
              ),
              SizedBox(width: 17 * scaleFactor), // Scale the horizontal space
              BoldText(
                text: text,
                selectionColor: isSelected ? AppColors.whiteColor : AppColors.languageTextColor,
                fontSize: 20 * scaleFactor, // Scale the font size
              ),
            ],
          ),
        ),
      ),
    );
  }
}