
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/components/adminside/admin_active_Session.dart';
import 'package:scorer/components/adminside/admin_schedule_session.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/controllers/facil_dashboard_controller.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/setting_container.dart';

class AdminDashboard extends StatelessWidget {
  final controller = Get.put(FacilDashboardController());
  AdminDashboard({super.key});

  final List<Widget> screens = [
    AdminActiveSession(),
    AdminScheduleSession()
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions for scaling
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    // A base height and width to scale from, e.g., a common phone (iPhone 11)
    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return  GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32 * widthScaleFactor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Appimages.prince2,
                            width: 62 * widthScaleFactor,
                            height: 83 * heightScaleFactor,
                          ),
                          Row(
                            children: [
                              SettingContainer(icons: Icons.settings),
                              SizedBox(width: 6 * widthScaleFactor),
                              SettingContainer(
                                icons: Icons.notifications,
                                ishow: true,
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BoldText(
                             text: "hello_admin".tr,
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                           BoldText(
                            text: ", Chris!",
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                        ],
                      ),
                      MainText(
text: "welcome_admin".tr,                        fontSize: 14 * heightScaleFactor,
                        height: 1.4,
                      ),
                      SizedBox(height: 23 * heightScaleFactor),
                      Obx(
                        () => Container(
                          height: 53 * heightScaleFactor,
                          width: 336 * widthScaleFactor,
                          decoration: BoxDecoration(
                            color: AppColors.settingColor,
                            borderRadius: BorderRadius.circular(12 * widthScaleFactor),
                          ),
                          child: Stack(
                            children: [
                              AnimatedAlign(
                                alignment: controller.selectedIndex.value == 0
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                duration: const Duration(milliseconds: 250),
                                child: Container(
                                  height: 42 * heightScaleFactor,
                                  width: 150 * widthScaleFactor,
                                  margin: EdgeInsets.symmetric(horizontal: 6 * widthScaleFactor),
                                  decoration: BoxDecoration(
                                    color: AppColors.forwardColor,
                                    borderRadius: BorderRadius.circular(12 * widthScaleFactor),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: MainText(
                                        onTap: () {
                                          controller.changeTab(0);
                                        },
                                          text:   "active_sessions".tr,
                                        color: controller.selectedIndex.value == 0
                                            ? AppColors.whiteColor
                                            : AppColors.languageColor,
                                        fontSize: 14 * heightScaleFactor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: MainText(
                                        text:  "scheduled".tr,
                                        fontSize: 14 * heightScaleFactor,
                                        color: controller.selectedIndex.value == 0
                                            ? AppColors.languageColor
                                            : AppColors.whiteColor,
                                        onTap: () {
                                          controller.changeTab(1);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => screens[controller.selectedIndex.value],
                ),
              ],
            ),
          ),
        ),
      );
  }
}
