// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class FilterUseableContainer extends StatelessWidget {
//   final bool isSelected;
//   final String text;
//   final VoidCallback onTap;
//   final double?fontSze;
//   const FilterUseableContainer({super.key, required this.isSelected, required this.text, required this.onTap, this.fontSze});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//                 height: 74,
//                 width: 334,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColors.greyColor,width: 1.5),
//                   borderRadius: BorderRadius.circular(24),
//                   ),
//                   child: Padding(
//                     padding:  EdgeInsets.symmetric(horizontal: 23),
//                     child: Row(
//                       children: [
//                     Container(
//                       height: 24,
//                       width: 24,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: isSelected?AppColors.forwardColor: AppColors.greyColor,
//                         width: isSelected?0:sqrt1_2),
//                         shape: BoxShape.circle,
//                         color:isSelected? AppColors.forwardColor:Colors.transparent,
                      
//                       ),
//                     child:isSelected? Icon(Icons.check,color: AppColors.whiteColor,size: 15,):SizedBox(),
//                     ),
//                     SizedBox(width: 14,),
//                     MainText(text: text,fontSize:fontSze?? 14,)
//                       ],
//                     ),
//                   ),
//                 ),
//     );
            
//   }
// }


import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class FilterUseableContainer extends StatelessWidget {
  final bool isSelected;
  final String text;
  final VoidCallback onTap;
  final double? fontSze;
  const FilterUseableContainer({super.key, required this.isSelected, required this.text, required this.onTap, this.fontSze});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions to use for adaptive scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    const double baseWidth = 375.0; // Base width for design
    final double scaleFactor = screenWidth / baseWidth;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 74 * scaleFactor, // Scale height
        width: 334 * scaleFactor, // Scale width
        decoration: BoxDecoration(
          border: Border.all(
            color:  AppColors.greyColor,
            width: isSelected ? 1.5 * scaleFactor : 1.5 * scaleFactor, // Scale border width
          ),
          borderRadius: BorderRadius.circular(24 * scaleFactor), // Scale border radius
          // color: isSelected ? Colors.white : Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23 * scaleFactor), // Scale horizontal padding
          child: Row(
            children: [
              Container(
                height: 24 * scaleFactor, // Scale height
                width: 24 * scaleFactor, // Scale width
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.forwardColor : AppColors.greyColor,
                    width: isSelected ? 0 : 1.5 * scaleFactor, // Scale border width
                  ),
                  shape: BoxShape.circle,
                  color: isSelected ? AppColors.forwardColor : Colors.transparent,
                ),
                child: isSelected
                    ? Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                        size: 15 * scaleFactor, // Scale icon size
                      )
                    : const SizedBox(),
              ),
              SizedBox(width: 14 * scaleFactor), // Scale spacing
              MainText(
                text: text,
                fontSize: fontSze ?? 14 * scaleFactor, // Scale font size
              )
            ],
          ),
        ),
      ),
    );
  }
}