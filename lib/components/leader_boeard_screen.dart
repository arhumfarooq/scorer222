// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:scorer/components/filter_drop_down_container.dart';
// import 'package:scorer/components/players_Row.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/main.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/players_container.dart';

// class LeaderBoeardScreen extends StatelessWidget {
//    LeaderBoeardScreen({super.key});
//     final RxBool isTeamSelected = false.obs; // false = Players, true = Teams

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 30),
//       child: Column(
//         children: [
//           SizedBox(height: 20,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//             Row(
//               children: [
//                   Container(width: 13,height: 13,decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: AppColors.visitingColor
//               ),),
//               SizedBox(width: 10,),
//               MainText(text: "Live Updates....",color: AppColors.visitingColor,fontSize: 14,)
//               ],
//             ),
//             CreateContainer(
//       containerColor: AppColors.forwardColor.withOpacity(0.3),
//       text: "Overall",
//       width: 72,
//       textColor: AppColors.forwardColor,
//       borderColor: AppColors.forwardColor,
//       ishow: false,
      
//             )
//             ],
//           ),
// SizedBox(height: 32,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Row(
//               //   children: [
//               //     BoldText(text: "Players",selectionColor: AppColors.blueColor,fontSize: 16,),
//               //     SizedBox(width: 10,),
//               //     FlutterSwitch(value: true, onToggle: (val){},
//               //     height: 26,width: 40,
//               //     activeColor: AppColors.forwardColor,
//               //     inactiveColor: AppColors.forwardColor,
                  
//               //     ),
//               //     SizedBox(width: 10,),
              
//               //     BoldText(text: "Teams",selectionColor: AppColors.blueColor,fontSize: 16,),
              
//               //   ],
//               // ),
//                Obx(() => Row(
//           children: [
//             BoldText(
//               text: "Players",
//               selectionColor: isTeamSelected.value
//                   ? AppColors.playerColo1r // inactive
//                   : AppColors.blueColor, // active
//               fontSize: 16,
//             ),
//             const SizedBox(width: 10),
//             FlutterSwitch(
//               value: isTeamSelected.value,
//               onToggle: (val) {
//                 isTeamSelected.value = val;
//               },
//               height: 26,
//               width: 40,
//               activeColor: AppColors.forwardColor,
//               inactiveColor: AppColors.forwardColor,
//             ),
//             const SizedBox(width: 10),
//             BoldText(
//               text: "Teams",
//               selectionColor: isTeamSelected.value
//                   ? AppColors.blueColor // active
//                   : AppColors.playerColo1r, // inactive
//               fontSize: 16,
//             ),
//           ],
//         )),
//               GestureDetector(
//                 onTap: (){
// showCustomBottomSheet(context: context);

//                 },
//                 child: CreateContainer(text: "Use Filter",width: 88,)),
              
//             ],
//           ),
//           SizedBox(height: 80,),
//              Obx(() => PlayersRow(isTeamSelected: isTeamSelected.value)),
//               SizedBox(height: 90,),
//           Obx(() => PlayersContainers(
//       text1: "1",
//       text2: isTeamSelected.value ? "Team Alpha" : "Alex M.", // yahan handle hoga
//       image: Appimages.facil2,
//       icon: Icons.keyboard_arrow_up_outlined,
//       iconColor: AppColors.arrowColor,
//       text4: "2,890 pts",
//       ishow: true,
//       containerColor: AppColors.yellowColor,
//       leftPadding: 20,
//     )),

//               SizedBox(height: 15,),
//               Obx(()=> PlayersContainers(text1: "2", text2: isTeamSelected.value ?"Team Rock": "Sarah J.", image: Appimages.play2,
//               icon: Icons.keyboard_arrow_down_outlined,iconColor: AppColors.brownColor,text4: "2,890 pts",ishow: true,
//               containerColor: AppColors.greyColor,
//               leftPadding: 20,
//               ),),
//                SizedBox(height: 15,),
//              Obx(()=>  PlayersContainers(text1: "3", text2: isTeamSelected.value ?"Team Beta":"Mike C.", image: Appimages.play5,
//               icon: Icons.keyboard_arrow_down_outlined,iconColor: AppColors.brownColor,text4: "2,180 pts",ishow: true,
//               containerColor: AppColors.orangeColor,
//               leftPadding: 20,
//               ),),
//                   SizedBox(height: 15,),
//                PlayersContainers(text1: "4", text2: "Mike C.", image: Appimages.play3,
//               icon: Icons.keyboard_arrow_down_outlined,iconColor: AppColors.brownColor,text4: "1,760 pts",ishow: true,
//               containerColor: AppColors.playerColor,
//               leftPadding: 20,
//               ),
//                   SizedBox(height: 15,),
//                PlayersContainers(text1: "5", text2: "Mike C.", image: Appimages.play4,
//               icon: Icons.keyboard_arrow_up_outlined,iconColor: AppColors.forwardColor,text4: "1,760 pts",ishow: true,
//               containerColor: AppColors.playerColor,
//               leftPadding: 20,
//               ),
//               SizedBox(height: 20,),
//               Container(
//                 height: 292,
//                 width: 376,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColors.greyColor,width: 1.7),
//                   borderRadius: BorderRadius.circular(24)
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 20,),
//                       BoldText(text: "Engagement Metrics",fontSize: 16,selectionColor: AppColors.blueColor,),
//                       SizedBox(height: 16,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               BoldText(text: "85%",fontSize: 24,selectionColor: AppColors.forwardColor,),
//                       BoldText(text: "Participation",fontSize: 16,selectionColor: AppColors.blueColor,),

//                             ],
//                           ),
//                           SizedBox(width: 30,),
//                           Column(
//                             children: [
//                               BoldText(text: "85%",fontSize: 24,selectionColor: AppColors.forwardColor,),
//                       BoldText(text: "Participation",fontSize: 16,selectionColor: AppColors.blueColor,),

//                             ],
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 20,),
//                       Row(
//                         children: [
//                           Container(height: 5,width: 150,
//                           decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
//   topLeft: Radius.circular(20),
//   bottomLeft: Radius.circular(20)

// ),
//                           color: AppColors.forwardColor
//                           ),
//                           ),
//                           Container(height: 5,width: 106,
//                           decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
//   topRight: Radius.circular(20),
//   bottomRight: Radius.circular(20)

// ),
//                           color: AppColors.greyColor
//                           ),
//                           ),
//                         ],
//                       ),
// SizedBox(height: 16,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(text: "Active Players",fontSize: 14,),
//                           BoldText(text: "10/12",fontSize: 16,selectionColor: AppColors.blueColor,)
//                         ],
//                       ),
// SizedBox(height: 16,),

//                       Row(
//                         children: [
//                           Container(height: 5,width: 150,
//                           decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
//   topLeft: Radius.circular(20),
//   bottomLeft: Radius.circular(20)

// ),
//                           color: AppColors.forwardColor
//                           ),
//                           ),
//                           Container(height: 5,width: 106,
//                           decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
//   topRight: Radius.circular(20),
//   bottomRight: Radius.circular(20)

// ),
//                           color: AppColors.greyColor
//                           ),
//                           ),
//                         ],
//                       ),
// SizedBox(height: 16,),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MainText(text: "Avg Response Time",fontSize: 14,),
//                           BoldText(text: "32s",fontSize: 16,selectionColor: AppColors.blueColor,)
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
// SizedBox(height: 27,),
//               LoginButton(text: "End Session",color: AppColors.redColor,icon: Icons.square_sharp,ishow: true,),
//               SizedBox(height: 13,),
//               LoginButton(text: "Share Results",color: AppColors.forwardColor,image: Appimages.move,ishow: true,),

              
//               SizedBox(height: 100,)

//         ],
//       ),
//     );
//   }
// }


//   Future<T?> showCustomBottomSheet<T>({
//     required BuildContext context,
//     // required Widget child,
//     bool isDismissible = true,
//     bool enableDrag = true,
//     double? height,
//     Color backgroundColor = Colors.white,
//   }) {
//     return showModalBottomSheet<T>(
//       // showDragHandle: false,
//       context: context,
//       isScrollControlled: true,
//       isDismissible: isDismissible,
//       enableDrag: false,
//       showDragHandle: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         double screenHeight = MediaQuery.of(context).size.height;
//         double screenWidth = MediaQuery.of(context).size.width;
//         return Container(
//           height: (750 / 844) * screenHeight, // ✅ Reduced logo height
//           width: (440 / 390) * screenWidth,
//           // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//           decoration: BoxDecoration(
//             color: backgroundColor,
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(32),
//               topRight: Radius.circular(32),
//             ),
//           ),
//           child: FilterDropDownContainer(),
//         );
//       },
//     );
//   }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:scorer/components/filter_drop_down_container.dart';
import 'package:scorer/components/metrices_Container.dart';
import 'package:scorer/components/players_Row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/main.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/players_container.dart';

class LeaderBoeardScreen extends StatelessWidget {
  LeaderBoeardScreen({super.key});
  final RxBool isTeamSelected = false.obs;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
      child: SingleChildScrollView(
         physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: screenWidth * 0.035,
                      height: screenWidth * 0.035,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.visitingColor,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                   MainText(
  text: "live_updates".tr,
  color: AppColors.visitingColor,
  fontSize: screenWidth * 0.035,
),
                  ],
                ),
               CreateContainer(
  containerColor: AppColors.forwardColor.withOpacity(0.3),
  text: "overall".tr,
  width: screenWidth * 0.18,
  textColor: AppColors.forwardColor,
  borderColor: AppColors.forwardColor,
  ishow: false,
),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Row(
                    children: [
                      BoldText(
                        text: "players".tr,
                        selectionColor: isTeamSelected.value
                            ? AppColors.playerColo1r
                            : AppColors.blueColor,
                        fontSize: screenWidth * 0.04,
                      ),
                      SizedBox(width: screenWidth * 0.025),
                      FlutterSwitch(
                        value: isTeamSelected.value,
                        onToggle: (val) {
                          isTeamSelected.value = val;
                        },
                        height: screenHeight * 0.03,
                        width: screenWidth * 0.1,
                        activeColor: AppColors.forwardColor,
                        inactiveColor: AppColors.forwardColor,
                      ),
                      SizedBox(width: screenWidth * 0.025),
                      BoldText(
                        text: "teams".tr,
                        selectionColor: isTeamSelected.value
                            ? AppColors.blueColor
                            : AppColors.playerColo1r,
                        fontSize: screenWidth * 0.04,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showCustomBottomSheet(context: context);
                  },
                  child: CreateContainer(
                    text: "use_filter".tr,
                    width: screenWidth * 0.22,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.1),
            Obx(() => PlayersRow(isTeamSelected: isTeamSelected.value)),
            SizedBox(height: screenHeight * 0.09),
            Obx(
              () => PlayersContainers(
                text1: "1",
                text2: isTeamSelected.value ? "team_alpha".tr : "Alex M.",
                image: Appimages.facil2,
                icon: Icons.keyboard_arrow_up_outlined,
                iconColor: AppColors.arrowColor,
                text4: "2,890 pts",
                ishow: true,
                containerColor: AppColors.yellowColor,
                leftPadding: screenWidth * 0.05,
              ),
            ),
            SizedBox(height: screenHeight * 0.018),
            Obx(
              () => PlayersContainers(
                text1: "2",
                text2: isTeamSelected.value ? "Team Rock" : "Sarah J.",
                image: Appimages.play2,
                icon: Icons.keyboard_arrow_down_outlined,
                iconColor: AppColors.brownColor,
                text4: "2,890 pts",
                ishow: true,
                containerColor: AppColors.greyColor,
                leftPadding: screenWidth * 0.05,
              ),
            ),
            SizedBox(height: screenHeight * 0.018),
            Obx(
              () => PlayersContainers(
                text1: "3",
                text2: isTeamSelected.value ? "Team Beta" : "Mike C.",
                image: Appimages.play5,
                icon: Icons.keyboard_arrow_down_outlined,
                iconColor: AppColors.brownColor,
                text4: "2,180 pts",
                ishow: true,
                containerColor: AppColors.orangeColor,
                leftPadding: screenWidth * 0.05,
              ),
            ),
            SizedBox(height: screenHeight * 0.018),
            PlayersContainers(
              text1: "4",
              text2: "Mike C.",
              image: Appimages.play3,
              icon: Icons.keyboard_arrow_down_outlined,
              iconColor: AppColors.brownColor,
              text4: "1,760 pts",
              ishow: true,
              containerColor: AppColors.playerColor,
              leftPadding: screenWidth * 0.05,
            ),
            SizedBox(height: screenHeight * 0.018),
            PlayersContainers(
              text1: "5",
              text2: "Mike C.",
              image: Appimages.play4,
              icon: Icons.keyboard_arrow_up_outlined,
              iconColor: AppColors.forwardColor,
              text4: "1,760 pts",
              ishow: true,
              containerColor: AppColors.playerColor,
              leftPadding: screenWidth * 0.05,
            ),
            SizedBox(height: screenHeight * 0.025),
            MetricesContainer(screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.03),
            LoginButton(
              fontSize:18 ,

              onTap: () {
        Get.toNamed(RouteName.endSessionScreen);
            },
              text: "end_session".tr,
              color: AppColors.redColor,
              icon: Icons.square_sharp,
              ishow: true,
              
            ),
            SizedBox(height: screenHeight * 0.015),
            LoginButton(
              text: "share_results".tr,
              fontSize:18 ,
              color: AppColors.forwardColor,
              image: Appimages.move,
              ishow: true,
            ),
            SizedBox(height: 30,)
            // SizedBox(height: screenHeight * 0.5),
          ],
        ),
      ),
    );
  }
}
