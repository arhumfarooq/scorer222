// import 'package:flutter/material.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/custom_dashboard_container.dart';
// import 'package:scorer/widgets/main_text.dart';

// class ScheduleScreen extends StatelessWidget {
//   const ScheduleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // MainText(text: "dddddddddd")
//          SizedBox(height: 12,),
//    CustomDashboardContainer(
//     // height2: ,
//     width2:78 ,
//     color2: AppColors.scheColor,
//     heading: "Eranove Odyssey – Team A", text1: "Phase 2",ishow: false,
//     text2: "Scheduled", description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
//     text3: "Pause",text7: "Start Early",icon3: Icons.fast_forward,color3: AppColors.forwardColor,text5: "12 Players",text6: "Starts in 2h",
//     ),
//    SizedBox(height: 12,),
//     CustomDashboardContainer(
//       height: 27,
//       ishow: false,width2: 78,color2: AppColors.scheColor,
//       heading: "Leadership Assessment", text1: "Phase 1",color1: AppColors.phaseColor,
//     text2: "Scheduled", description: "Leadership Assessment strengthens teamwork through interactive activities.",
//     text3: "Resume",text4: "Next Phase",svg: Appimages.edit,text7: "Edit Session",text6: "Friday 2:00 PM",
//     ),
//     SizedBox(height: 20,)
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/custom_dashboard_container.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double heightScaleFactor = screenSize.height / baseHeight;

    return Column(
      children: [
        SizedBox(height: 12 * heightScaleFactor),
        // CustomDashboardContainer(
        //   width2: 78,
        //   color2: AppColors.scheColor,
        //   heading: "Eranove Odyssey – Team A",
        //   text1: "Phase 2",
        //   ishow: false,
        //   text2: "Scheduled",
        //   description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
        //   text3: "Pause",
        //   text7: "Start Early",
        //   icon3: Icons.fast_forward,
        //   color3: AppColors.forwardColor,
        //   text5: "12 Players",
        //   text6: "Starts in 2h",
        // ),


          CustomDashboardContainer(
        text7: "start_early".tr,
          icon3: Icons.fast_forward,
          heading: "Team Building Workshop",
          text1: "Phase 1",
          height: 10,
          text2: "Phase 1",
          description: "Team Building Workshop strengthens teamwork through interactive activities.",
          text3: "Resume",
          text4: "Next Phase",
          icon1: Icons.play_arrow,
          text5: "15 Players",
          text6: "Paused",
          icon2: Icons.square,
          ishow: false,
        ),
        SizedBox(height: 12 * heightScaleFactor),
      
          CustomDashboardContainer(
            // text7: "Start Early",
          icon3: Icons.fast_forward,
          heading: "Team Building Workshop",
          text1: "Phase 1",
          height: 10,
          text2: "Phase 1",
          description: "Team Building Workshop strengthens teamwork through interactive activities.",
          text3: "Resume",
          text4: "Next Phase",
          icon1: Icons.play_arrow,
          text5: "15 Players",
          // text6: "Paused",
          icon2: Icons.square,
          ishow: false,
           svg: Appimages.edit,
       text7: "edit_session".tr,
          text6: "Friday 2:00 PM," ),
        SizedBox(height: 20 * heightScaleFactor)
      ],
    );
  }
}
