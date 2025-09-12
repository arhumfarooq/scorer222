// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/pause_container.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class OverViewScreen extends StatelessWidget {
//   const OverViewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       // mainAxisAlignment: main,
//       children: [
//         // Text("sds ")
//         SizedBox(height: 20,),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BoldText(text: "Session Information",selectionColor: AppColors.blueColor,fontSize: 16,),
//         MainText(text: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",fontSize: 14,height: 1.5,)
          
//             ],
//           ),
//         ),
//         SizedBox(height: 20,),
//         // SvgPicture.asset(Appimages.group1),
//         Padding(
//           padding:  EdgeInsets.only(left: 8,right: 13),
//           child: Row(
//             children: [
//               Image.asset(Appimages.group),
//               Container(
//                 width: 202,
//                 height: 116,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColors.greyColor,width: 1.5),
//                   borderRadius: BorderRadius.circular(24)
//                 ),
//                 child: Padding(
//                   padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 10),
//                   child: Column(
//                     children: [Row(
//                       children: [
//                         BoldText(text: "12",selectionColor: AppColors.forwardColor,fontSize: 22,),
//                         SizedBox(width: 8,),
//                         Container(width: 40,height: 2,decoration: BoxDecoration(
//                           color: AppColors.orangeColor,borderRadius: BorderRadius.circular(2),
                          
//                         ),),
//                         SizedBox(width: 6,),
//                         BoldText(text: "Active Players",selectionColor: AppColors.blueColor,fontSize: 16,)
//                       ],
//                     ),
//                     SizedBox(height: 10,),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         BoldText(text: "89%",selectionColor: AppColors.forwardColor,fontSize: 22,),
//                         SizedBox(width: 6,),
//                         Container(width: 35,height: 2,decoration: BoxDecoration(
//                           color: AppColors.orangeColor,borderRadius: BorderRadius.circular(2),
                          
//                         ),),
//                         SizedBox(width: 5,),
//                         FittedBox(
//                           child: BoldText(text: "Engagement",selectionColor: AppColors.blueColor,fontSize: 16,))
//                       ],
//                     )
                    
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
// SizedBox(height: 10,),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             children: [
//               Container(
//                 width: 376,
//                 height: 179,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColors.greyColor,width: 1.5),
//                   borderRadius: BorderRadius.circular(24)
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom:15 ),
//                   child: Column(
//                     children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         MainText(text: "Session Code",fontSize: 14,),
//                         Row(
//                           children: [
                           
//                             BoldText(text: "ABC123",fontSize: 16,selectionColor: AppColors.blueColor,),
//                            SizedBox(width: 10,),
//                             SvgPicture.asset(Appimages.copy)
//                           ],
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 10,),
//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         MainText(text: "Join Link",fontSize: 14,),
//                         Row(
//                           children: [
//                             BoldText(text: "https:/www.score.com",fontSize: 16,selectionColor: AppColors.blueColor,),
//                            SizedBox(width: 10,),
                           
//                             SvgPicture.asset(Appimages.move)
//                           ],
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 10,),

//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         MainText(text: "Started",fontSize: 14,),
//                         BoldText(text: "2:30 PM",fontSize: 16,selectionColor: AppColors.blueColor,),
//                         // SvgPicture.asset(Appimages.move)
//                       ],
//                     ),
//                     SizedBox(height: 10,),

//                       Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         MainText(text: "Duration",fontSize: 14,),
//                         BoldText(text: "45 minutes",fontSize: 16,selectionColor: AppColors.blueColor,),
//                         // SvgPicture.asset(Appimages.move)
//                       ],
//                     )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Container(
//                height: 220,
//                width: 376,
//                decoration: BoxDecoration(
//               border: Border.all(color: AppColors.greyColor,width: 1.5),
//               borderRadius: BorderRadius.circular(24)
//                ), 
//                child: Stack(
//                  children: [
//                    Padding(
//                      padding:  EdgeInsets.only(top: 17,right: 21,left: 20),
//                      child: Column(
//                       children: [
//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              BoldText(text: "Current Phase",fontSize: 16,selectionColor: AppColors.blueColor,),
//                              Row(
//                                children: [
//                                 UseableContainer(text: "Phase 2",color: AppColors.orangeColor,),
//                                 SizedBox(width: 10,),
//                                 MainText(text: "Strategy Building",fontSize: 14,)
                     
//                                ],
//                              )
//                            ],
//                          ),
//                          SvgPicture.asset(Appimages.time)
//                        ],
//                      ),
//                      SizedBox(height: 20,),
                     
//                      Row(
//                        children: [
//                          Container(
//                            height: 6,
//                            width: 170,
//                            decoration: BoxDecoration(
//                              color: AppColors.forwardColor,
//                              borderRadius: BorderRadius.circular(20)
//                            ),
//                          ),
//                        Container(
//                            height: 6,
//                            width: 114,
//                            decoration: BoxDecoration(
//                              color: AppColors.greyColor,
//                              borderRadius: BorderRadius.circular(20)
//                            ),
//                          ),
                     
//                        ],
//                      ),
//                      SizedBox(height: 30,),
                    
                     
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: [
//                          Expanded(child: PauseContainer(text: "Pause",)),
//                          SizedBox(width: 20,),
//                          Expanded(child: PauseContainer(text: "Next Phase",icon: Icons.fast_forward,color: AppColors.forwardColor,))
//                        ],
//                      )
//                       ],
//                      ),
//                    ),
//                    Positioned(
//                     top: 36,
//                     left: 240,
//                     child:  Column(
//                       children: [
//                         BoldText(text: "12:32",fontSize: 16,selectionColor: AppColors.blueColor,),
//                         MainText(text: "Remaining",fontSize: 10,height: 1,)
//                       ],
//                      ))
//                  ],
//                ),
//               ),
//               SizedBox(height: 20,)
//             ],
//           ),
//         )
//         // MainText(text: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",fontSize: 14,)
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/components/engagement_Container.dart';
import 'package:scorer/components/new_session_container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';

class OverViewScreen extends StatelessWidget {
  const OverViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double baseWidth = 414.0;
    final double heightScaleFactor = screenSize.height / baseHeight;
    final double widthScaleFactor = screenSize.width / baseWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20 * heightScaleFactor),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             BoldText(
  text: "session_info".tr,
  selectionColor: AppColors.blueColor,
  fontSize: 16 * heightScaleFactor,
),
              MainText(
  text: "session_description".tr,
  fontSize: 14 * heightScaleFactor,
  height: 1.5,
),
            ],
          ),
        ),
        SizedBox(height: 20 * heightScaleFactor),
        EngagementContainer(widthScaleFactor: widthScaleFactor, heightScaleFactor: heightScaleFactor),
        SizedBox(height: 10 * heightScaleFactor),
        NewSessionContainer(widthScaleFactor: widthScaleFactor, heightScaleFactor: heightScaleFactor)
      ],
    );
  }
}
