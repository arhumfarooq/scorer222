import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/main_text.dart';

class GameSelectUseableContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final bool isSelected;
  const GameSelectUseableContainer({super.key, required this.text1, required this.text2, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 74,
                width: 334,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.greyColor,width: 1.5)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          border: Border.all(color: isSelected?AppColors.forwardColor: AppColors.greyColor,
                          width: isSelected?0:2),
                          shape: BoxShape.circle,
                          color:isSelected? AppColors.forwardColor:Colors.transparent,
                        
                        ),
                      child:isSelected? Icon(Icons.check,color: AppColors.whiteColor,size: 15,):SizedBox(),
                      ),
                  SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MainText(text: text1,fontSize: 14,),
                          MainText(text: text2,fontSize: 13,color: AppColors.teamColor,height: 1.5,)
                        ],
                      )
                    ],
                  ),
                ),

               )
;
  }
}