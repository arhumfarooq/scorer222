import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/widgets/custom_dashboard_container.dart';

class AdminActiveSession extends StatelessWidget {
  const AdminActiveSession({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double baseHeight = 812.0;
    final double heightScaleFactor = screenSize.height / baseHeight;

    return Column(
      children: [
        SizedBox(height: 12 * heightScaleFactor),
        CustomDashboardContainer(
          heading: "Eranove Odyssey – Team A",
          text1: "Phase 2",
          text2: "Active",
          description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
          text3: "Pause",
          text4: "Next Phase",
          icon1: Icons.pause,
          icon2: Icons.fast_forward,
        ),
        SizedBox(height: 12 * heightScaleFactor),
        CustomDashboardContainer(
          color2: AppColors.yellowColor,
          color1: AppColors.redColor,
          heading: "Team Building Workshop",
          text1: "Phase 1",
          height: 27,
          text2: "Paused",
          description: "Team Building Workshop strengthens teamwork through interactive activities.",
          text3: "Resume",
          text4: "End",
          icon1: Icons.play_arrow,
          text5: "15 Players",
          text6: "Paused",
          icon2: Icons.square,
        ),
        SizedBox(height: 20 * heightScaleFactor)
      ],
    );
  }
}
