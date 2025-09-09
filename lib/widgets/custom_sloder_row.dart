// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

// class CustomSloderRow extends StatelessWidget {
//   final String text;
//   final String text2;
//   final double ?fontSize;
//   final double?height;
//   final double?width;
//   const CustomSloderRow({super.key, required this.text, required this.text2, this.fontSize, this.height, this.width});

//   @override
//   Widget build(BuildContext context) {
//     return   Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             MainText(text: text,fontSize:fontSize?? 14,),
//             Row(
//               children: [
//  SizedBox(
//   width:width?? 75, // ✅ slider ki custom width
//   child: SliderTheme(
//     data: SliderTheme.of(context).copyWith(
//       trackHeight:height?? 4,
//      activeTrackColor:AppColors.forwardColor,    // ✅ left side color
//       inactiveTrackColor: AppColors.greyColor, // ✅ right side color
//       thumbColor: AppColors.forwardColor,   
//       thumbShape: const RoundSliderThumbShape(
//         enabledThumbRadius: 6,
//       ),
//       overlayShape: SliderComponentShape.noOverlay,
//     ),
//     child: Slider(
//       value: 20, // fixed value
//       onChanged: (_) {}, // 👈 
//       min: 0,
//       max: 30,
//     ),
//   ),
// )
// ,
//                 MainText(text: text2,fontSize:fontSize?? 14,)
//               ],
//             )
//           ],
//         )
// ;
//   }
// }
import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class CustomSloderRow extends StatelessWidget {
  final String text;
  final String text2;
  final double? fontSize;
  final double? height;
  final double? width;
  final double?value;
  final Color?color;
  final double? width1;

  const CustomSloderRow({
    super.key,
    required this.text,
    required this.text2,
    this.fontSize,
    this.height,
    this.width, this.value, this.color, this.width1,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions using MediaQuery
    final double screenWidth = MediaQuery.of(context).size.width;

    // Define a reference width for scaling (e.g., iPhone 11 Pro Max)
    const double baseWidth = 414.0;

    // Calculate the scale factor
    final double scaleWidth = screenWidth / baseWidth;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText(
          text: text,
          fontSize: fontSize ?? 14 * scaleWidth,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              // crossAxisAlignment: ,
              children: [
                SizedBox(
                  width: width ?? 75 * scaleWidth,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: height ?? 4 * scaleWidth,
                      activeTrackColor:color?? AppColors.forwardColor,
                      inactiveTrackColor: AppColors.greyColor,
                      thumbColor:color?? AppColors.forwardColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 6 * scaleWidth,
                      ),
                      overlayShape: SliderComponentShape.noOverlay,
                    ),
                    child: Slider(
                      value:value?? 20, // fixed value
                      onChanged: (_) {}, // 👈
                      min: 0,
                      max: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: width1,),
            MainText(
              text: text2,
              fontSize: fontSize ?? 14 * scaleWidth,
            )
          ],
        )
      ],
    );
  }
}