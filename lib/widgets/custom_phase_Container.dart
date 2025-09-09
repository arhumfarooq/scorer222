import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';

class CustomPhaseContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final double ? fontSize;
  final Color? color;

  const CustomPhaseContainer({super.key, required this.text1, required this.text2, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
                      width: 337,
                      height: 74,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor,width: 1.5),
                        borderRadius: BorderRadius.circular(24)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoldText(text: text1,fontSize: 20,),
                            BoldText(text: text2,fontSize:fontSize?? 20,selectionColor: color,)

                          ],
                        ),
                      ),
                    )

;
  }
}