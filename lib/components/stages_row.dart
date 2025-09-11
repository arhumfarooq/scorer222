// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/get_instance.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';

// class StagesRow extends StatelessWidget {
//   final StageController controller = Get.find<StageController>();
//   StagesRow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//               padding:  EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       width: 95,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         color: AppColors.forwardColor,
                                  
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 22,),
//                           Container(
//                             width: 24,
//                             height: 24,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.whiteColor,
//                               border: Border.all(color: AppColors.forwardColor,width: 1.5)
//                             ),
//                             child: Icon(Icons.check,color: AppColors.forwardColor,size: 20,weight: 9  ,),
//                           ),
//                           SizedBox(height: 9,),
//                           BoldText(text: "Stage 1",fontSize: 16,selectionColor: AppColors.whiteColor,),
//                           MainText(text: "8:42min",fontSize: 12,color: AppColors.whiteColor,height: 1.5,)
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 4,),
//                   Container(width: 16,
//                   height: 6,
//                   decoration: BoxDecoration(
//                     color: AppColors.forwardColor
//               ,
//               borderRadius: BorderRadius.circular(20)                ),
//                   ),
//                   SizedBox(width: 4,),
//                   Obx((){
// return controller.isCompleted.value?Expanded(
//                     child: Container(
//                       width: 95,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         color: AppColors.forwardColor,
                                  
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 22,),
//                           Container(
//                             width: 24,
//                             height: 24,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.whiteColor,
//                               border: Border.all(color: AppColors.forwardColor,width: 1.5)
//                             ),
//                             child: Icon(Icons.check,color: AppColors.forwardColor,size: 20,weight: 9  ,),
//                           ),
//                           SizedBox(height: 9,),
//                           BoldText(text: "Stage 2",fontSize: 16,selectionColor: AppColors.whiteColor,),
//                           MainText(text: "8:19min",fontSize: 12,color: AppColors.whiteColor,height: 1.5,)
//                         ],
//                       ),
//                     ),
//                   ):
//               Expanded(
//                 child: Container(
//                       width: 95,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         // color: AppColors.forwardColor,
//                         border: Border.all(color: AppColors.orangeColor,width: 1.7)
                
//                       ),
//                       child: Column(children: [
//                         SizedBox(height: 22,),
//                  Container(
//                             width: 24,
//                             height: 24,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.orangeColor,
//                               // border: Border.all(color: AppColors.orangeColor,width: 1.5)
//                             ),
//                             child: Padding(
//                               padding:  EdgeInsets.only(right: 2,left: 4,bottom: 200),
//                               child: Center(child: MainText(text: "2",fontSize: 14,color: AppColors.whiteColor,)),
//                             ),
//                             // child: Icon(Icons.check,color: AppColors.forwardColor,size: 20,weight: 9  ,),
//                           ),
//                           SizedBox(height: 9,),
                
//                           BoldText(text: "Stage 2",selectionColor: AppColors.blueColor,fontSize: 16,)
                
//                       ],),
//                     ),
//               );

//                   }),
//                    SizedBox(width: 4,),
//                   Container(width: 16,
//                   height: 6,
//                   decoration: BoxDecoration(
//                     color: AppColors.smallColor
//               ,
//               borderRadius: BorderRadius.circular(20)                ),
//                   ),
//                   SizedBox(width: 4,),
//               Expanded(
//                 child: Container(
//                       width: 95,
//                       height: 116,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         // color: AppColors.forwardColor,
//                         border: Border.all(color: AppColors.containerColor,width: 1.7)
                
//                       ),
//                       child: Column(
//                         children: [
//                             SizedBox(height: 22,),
//                  Container(
//                             width: 24,
//                             height: 24,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.containerColor,
//                               // border: Border.all(color: AppColors.orangeColor,width: 1.5)
//                             ),
//                             child: Padding(
//                               padding:  EdgeInsets.only(right: 2,left: 4,bottom: 200),
//                               child: Center(child: MainText(text: "3",fontSize: 14,color: AppColors.whiteColor,)),
//                             ),
//                             // child: Icon(Icons.check,color: AppColors.forwardColor,size: 20,weight: 9  ,),
//                           ),
//                           SizedBox(height: 9,),
                
//                           BoldText(text: "Stage 3",selectionColor: AppColors.containerColor,fontSize: 16,),
//                           MainText(text: "10:00min",fontSize: 12,color: AppColors.containerColor,height: 1.5,)
                
//                         ],
//                       ),
//                     ),
//               ),
//                 ],
//               ),
//             )
// ;
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/controllers/stage_controllers.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';

class StagesRow extends StatelessWidget {
  final StageController controller = Get.find<StageController>();
  StagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0.05; // 5% of screen width
    final cardWidth = (screenWidth - (horizontalPadding * 2) - (4 * 4)) / 3; // Calculate dynamic card width
    final cardHeight = cardWidth * 1.22; // Maintain aspect ratio of 95/116
    final circleSize = cardWidth * 0.25; // Dynamic circle size
    final spacing = screenWidth * 0.01; // Dynamic spacing

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: cardWidth,
              height: cardHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColors.forwardColor,
              ),
              child: Column(
                children: [
                  SizedBox(height: cardHeight * 0.19),
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whiteColor,
                      border: Border.all(color: AppColors.forwardColor, width: 1.5),
                    ),
                    child: Icon(
                      Icons.check,
                      color: AppColors.forwardColor,
                      size: circleSize * 0.8,
                      weight: 9,
                    ),
                  ),
                  SizedBox(height: cardHeight * 0.07),
                  BoldText(text: "stage1".tr, fontSize: cardWidth * 0.16, selectionColor: AppColors.whiteColor),
                  MainText(text: "8:42min", fontSize: cardWidth * 0.12, color: AppColors.whiteColor, height: 1.5),
                ],
              ),
            ),
          ),
          SizedBox(width: spacing),
          Container(
            width: spacing * 4,
            height: 6,
            decoration: BoxDecoration(
              color: AppColors.forwardColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(width: spacing),
          Obx(() {
            return controller.isCompleted.value
                ? Expanded(
                    child: Container(
                      width: cardWidth,
                      height: cardHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColors.forwardColor,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: cardHeight * 0.19),
                          Container(
                            width: circleSize,
                            height: circleSize,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.whiteColor,
                              border: Border.all(color: AppColors.forwardColor, width: 1.5),
                            ),
                            child: Icon(
                              Icons.check,
                              color: AppColors.forwardColor,
                              size: circleSize * 0.8,
                              weight: 9,
                            ),
                          ),
                          SizedBox(height: cardHeight * 0.07),
                          BoldText(text: "stage2".tr, fontSize: cardWidth * 0.16, selectionColor: AppColors.whiteColor),
                          MainText(text: "8:19min", fontSize: cardWidth * 0.12, color: AppColors.whiteColor, height: 1.5),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: Container(
                      width: cardWidth,
                      height: cardHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: AppColors.orangeColor, width: 1.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: cardHeight * 0.19),
                          Container(
                            width: circleSize,
                            height: circleSize,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.orangeColor,
                            ),
                            child: Center(
                              child: MainText(
                                text: "2",
                                fontSize: circleSize * 0.58,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          SizedBox(height: cardHeight * 0.07),
                          BoldText(text: "stage2".tr, selectionColor: AppColors.blueColor, fontSize: cardWidth * 0.16),
                        ],
                      ),
                    ),
                  );
          }),
          SizedBox(width: spacing),
          Container(
            width: spacing * 4,
            height: 6,
            decoration: BoxDecoration(
              color: AppColors.smallColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(width: spacing),
          Expanded(
            child: Container(
              width: cardWidth,
              height: cardHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.containerColor, width: 1.7),
              ),
              child: Column(
                children: [
                  SizedBox(height: cardHeight * 0.19),
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerColor,
                    ),
                    child: Center(
                      child: MainText(
                        text: "3",
                        fontSize: circleSize * 0.58,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(height: cardHeight * 0.07),
                  BoldText(text:   "stage3".tr, selectionColor: AppColors.containerColor, fontSize: cardWidth * 0.16),
                  MainText(text: "10:00min", fontSize: cardWidth * 0.12, color: AppColors.containerColor, height: 1.5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}