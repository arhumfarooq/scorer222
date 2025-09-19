
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/controllers/bottom_nav_controller.dart';
import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
import 'package:scorer/view/adminside/admin_dashboard.dart';
import 'package:scorer/view/adminside/game_screen_Admin_Side.dart';
import 'package:scorer/view/adminside/user_management_Screen.dart';
import 'package:scorer/widgets/create_container.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> _pages = [
    AdminDashboard(),
    AdminCreateNewSessionScreen(),
    GameScreenAdminSide(),
    UserManagementScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    const double baseWidth = 375.0; 
    final double scaleFactor = screenWidth / baseWidth;

    return Obx(
      () => Scaffold(
        extendBody: true,
        body: _pages[controller.selectedIndex.value],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0x00FFFFFF), 
                Colors.white,
              ],
            ),
          ),

          child: Container(
            height: 120 * scaleFactor,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,

                colors: [Color.fromARGB(0, 144, 206, 113), Colors.white],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 2.0 * scaleFactor,
                horizontal: 10.0 * scaleFactor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  
                  _buildNavItem(
                    context,
                    icon: Appimages.house1,
                    label:"home".tr,
                    index: 0,
                    scaleFactor: scaleFactor,
                  ),

                  
                  _buildCreateItem(
                    context,
                    icon: Appimages.buttonplus,
                    label: "create".tr,
                    index: 1,
                    scaleFactor: scaleFactor,
                  ),

                  
                  _buildNavItem(
                    context,
                    icon: Appimages.game,
                    label:  "game".tr,
                    index: 2,
                    scaleFactor: scaleFactor,
                  ),

                  
                  _buildNavItem(
                    context,
                    icon: Appimages.group,
                    label:"users".tr,
                    index: 3,
                    scaleFactor: scaleFactor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required String icon,
    required String label,
    required int index,
    required double scaleFactor,
  }) {
    return GestureDetector(
      onTap: () => controller.changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(icon, height: 57 * scaleFactor),
          SizedBox(height: 5 * scaleFactor),
          CreateContainer(
            text: label,
            textColor: controller.selectedIndex.value == index
                ? AppColors.forwardColor
                : AppColors.createBorderColor,
            containerColor: controller.selectedIndex.value == index
                ? AppColors.selectionColor.withOpacity(0.25)
                : AppColors.createColor,
            borderColor: controller.selectedIndex.value == index
                ? AppColors.forwardColor
                : AppColors.createBorderColor,
          ),
          SizedBox(height: 10 * scaleFactor),
        ],
      ),
    );
  }

  Widget _buildCreateItem(
    BuildContext context, {
    required String icon,
    required String label,
    required int index,
    required double scaleFactor,
  }) {
    return GestureDetector(
      onTap: () => controller.changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(icon, height: 62 * scaleFactor),
          SizedBox(height: 5 * scaleFactor),
          CreateContainer(
            text: label,
            textColor: controller.selectedIndex.value == index
                ? AppColors.forwardColor
                : AppColors.createBorderColor,
            containerColor: controller.selectedIndex.value == index
                ? AppColors.selectionColor.withOpacity(0.25)
                : AppColors.createColor,
            borderColor: controller.selectedIndex.value == index
                ? AppColors.forwardColor
                : AppColors.createBorderColor,
          ),
          SizedBox(height: 10 * scaleFactor),
        ],
      ),
    );
  }
}