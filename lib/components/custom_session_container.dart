import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:scorer/components/players_Row.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/players_container.dart';
import 'package:scorer/widgets/session_useable_row.dart';
import 'package:scorer/widgets/useable_container.dart';
class CustomSessionContainer extends StatelessWidget {
  const CustomSessionContainer({
    super.key,
    required this.heightScaleFactor,
    required this.widthScaleFactor,
  });

  final double heightScaleFactor;
  final double widthScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355 * heightScaleFactor,
      width: 330 * widthScaleFactor,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5 * widthScaleFactor,
        ),
        borderRadius: BorderRadius.circular(24 * widthScaleFactor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16 * widthScaleFactor),
        child: Column(
          children: [
            SizedBox(height: 20 * heightScaleFactor),
            BoldText(
              text: "Session Statistics",
              selectionColor: AppColors.blueColor,
              fontSize: 16 * widthScaleFactor,
            ),
            SizedBox(height: 30 * heightScaleFactor),
            SessionUseableRow(
              iamge: Appimages.phone1,
              text: "Average Score",
              text2: "Across all players",
              tex3: "2,890",
              tex4: "pts",
            ),
            SizedBox(height: 25 * heightScaleFactor),
            SessionUseableRow(
              iamge: Appimages.phone2,
              text: "Top Performer",
              text2: "Highest scoring player",
              tex3: "Alex M.",
              tex4: "2890 points",
            ),
            SizedBox(height: 25 * heightScaleFactor),
            SessionUseableRow(
              iamge: Appimages.phone3,
              text: "Completion Rate",
              text2: "Players who finished",
              tex3: "100%",
              tex4: "12/12 players",
            ),
            SizedBox(height: 25 * heightScaleFactor),
            SessionUseableRow(
              iamge: Appimages.phone4,
              text: "Participation Rate",
              text2: "Participation Rate",
              tex3: "100%",
              tex4: "Very high",
            ),
          ],
        ),
      ),
    );
  }
}
