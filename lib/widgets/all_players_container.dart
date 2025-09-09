import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class AllPlayersContainer extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  final String?text3;
  final Color?color;
  final double?width;
  final double? fontSize;
  final double?fontSize2;
  const AllPlayersContainer({super.key, required this.text, required this.text2, required this.image, this.fontSize, this.fontSize2, this.text3, this.color, this.width});

  @override
  Widget build(BuildContext context) {
    return  Container(
                width: 336,
                height: 76,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.greyColor,width: 1.7),
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                      children: [
                         Image.asset(image,width: 38,height: 70,),
                         SizedBox(width: 13,),
                      Padding(
                        padding:  EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainText(text: text,fontSize:fontSize?? 14,height: 1,),
                            MainText(text: text2,color: AppColors.teamColor,fontSize:fontSize2?? 14,)
                          ],
                        ),
                      ),
                      ],
                     ),
                      UseableContainer(text:text3?? "Active",width:width?? 54 ,color:color?? AppColors.forwardColor,)
                    ],
                  ),
                ),
              );
  }
}