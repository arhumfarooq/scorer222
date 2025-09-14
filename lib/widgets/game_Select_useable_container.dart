// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class GameSelectUseableContainer extends StatelessWidget {
//   final String text1;
//   final String text2;
//   final bool isSelected;
//   const GameSelectUseableContainer({super.key, required this.text1, required this.text2, required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//                 height: 74,
//                 width: 334,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(color: AppColors.greyColor,width: 1.5)
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 17),
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 24,
//                         width: 24,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: isSelected?AppColors.forwardColor: AppColors.greyColor,
//                           width: isSelected?0:2),
//                           shape: BoxShape.circle,
//                           color:isSelected? AppColors.forwardColor:Colors.transparent,
                        
//                         ),
//                       child:isSelected? Icon(Icons.check,color: AppColors.whiteColor,size: 15,):SizedBox(),
//                       ),
//                   SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           MainText(text: text1,fontSize: 14,),
//                           MainText(text: text2,fontSize: 13,color: AppColors.teamColor,height: 1.5,)
//                         ],
//                       )
//                     ],
//                   ),
//                 ),

//                )
// ;
//   }
// }

import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class GameSelectUseableContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final bool isSelected;
  final double?fontSize;
  const GameSelectUseableContainer({super.key, required this.text1, required this.text2, required this.isSelected, this.fontSize});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions to use for adaptive scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    const double baseWidth = 375.0; // Base width for design
    final double scaleFactor = screenWidth / baseWidth;

    return Container(
      height: 74 * scaleFactor, // Scale height
      width: 334 * scaleFactor, // Scale width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12 * scaleFactor), // Scale border radius
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5 * scaleFactor, // Scale border width
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17 * scaleFactor), // Scale horizontal padding
        child: Row(
          children: [
            Container(
              height: 24 * scaleFactor, // Scale height
              width: 24 * scaleFactor, // Scale width
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? AppColors.forwardColor : AppColors.greyColor,
                  width: isSelected ? 0 : 2 * scaleFactor, // Scale border width
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
            SizedBox(width: 10 * scaleFactor), // Scale spacing
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainText(
                  text: text1,
                  fontSize: 14 * scaleFactor, // Scale font size
                ),
                MainText(
                  text: text2,
                  fontSize:fontSize?? 13 * scaleFactor, // Scale font size
                  color: AppColors.teamColor,
                  height: 1.5,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
