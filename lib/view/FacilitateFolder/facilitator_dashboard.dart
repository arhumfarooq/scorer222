// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer/components/active_Session_Screen.dart';
// import 'package:scorer/components/schedule_Screen.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/facil_dashboard_controller.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/add_one_Container.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/setting_container.dart';

// class FacilitatorDashboard extends StatelessWidget {
//   final controller= Get.put(FacilDashboardController());
//   FacilitatorDashboard({super.key});


//   final List<Widget> screens=[
//     ActiveSessionScreen(),
//     ScheduleScreen()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//      body: GradientBackground(child:  SafeArea(
//        child: SingleChildScrollView(
//          child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//            children: [
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 32),
//                child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Image.asset(Appimages.facil2,width: 62,height: 83,),
               
//                           Row(
//                             children: [
//                               // Image.asset(Appimages.facil2,width: 62,height: 83,),
                          
//                               SettingContainer(icons: Icons.settings,),
//                               SizedBox(width: 6,),
//                               SettingContainer(icons: Icons.notifications,ishow: true,),
//                               SizedBox(width: 6,),
                          
//                             AddOneContainer(icon: Icons.add)
//                             ],
//                           ),
//                         ],
//                       ),
                      
//                     //  SvgPicture.asset(Appimages.player2)
//                     ],
//                   ),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(right: 21),
//                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(""),
//                             CreateContainer(),
//                           ],
//                         ),
//              ),
         
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 32),
//              child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                   BoldText(text: "Welcome back, Adam!",fontSize: 16,selectionColor: AppColors.blueColor,),
//                MainText(text: "Manage your sessions and track\nengagement in real- time.",fontSize: 14,height: 1.4),
//               SizedBox(height: 23,)
// ,               Obx(()=>
//                Container(height: 53,
//                width: 336,
//                decoration: BoxDecoration(
//                 color: AppColors.settingColor,
//                 borderRadius: BorderRadius.circular(12)
//                ),
//                child: Stack(
//                 children: [
//                   AnimatedAlign(  alignment: controller.selectedIndex.value == 0
//                ? Alignment.centerLeft
//                : Alignment.centerRight,  duration: Duration(milliseconds: 250),
//                   child: Container(
//                     // child: 
//                     // m
//                     height: 42,
//                     width: 150,
//                     // color: AppColors.forwardColor,
//                      margin: EdgeInsets.symmetric(horizontal: 6), // 👉 thoda an
//                     decoration: BoxDecoration(
//                       color: AppColors.forwardColor,
//                       borderRadius: BorderRadius.circular(12)
//                     ),
//                   ),
                  
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Center(
//                           child: MainText(
//                             // onTap: controller.changeTab,
//                             onTap: (){
//                               controller.changeTab(0);
//                             },
//                             text: "Active Sessions",color:
//                             controller.selectedIndex.value==0?
                            
//                              AppColors.whiteColor: AppColors.languageColor,fontSize: 14,
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: MainText(text: "Scheduled",fontSize: 14,
//                           color: controller.selectedIndex.value==0?
                            
//                              AppColors.languageColor: AppColors.whiteColor,
//                                onTap: (){
//                               controller.changeTab(1);
//                             },
//                           ),
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//                ),
//                )
//                ),
              
//               ],
//              ),
//            ),
//             Obx(
//                 () => screens[controller.selectedIndex.value])
//            ],
//          ),
//        ),
//      ),),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/components/active_Session_Screen.dart';
import 'package:scorer/components/schedule_Screen.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/facil_dashboard_controller.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/add_one_Container.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/setting_container.dart';

class FacilitatorDashboard extends StatelessWidget {
  final controller = Get.put(FacilDashboardController());
  FacilitatorDashboard({super.key});

  final List<Widget> screens = [
    ActiveSessionScreen(),
    ScheduleScreen()
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

    return Scaffold(
      body: GradientBackground(
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
                            Appimages.facil2,
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
                              SizedBox(width: 6 * widthScaleFactor),
                              AddOneContainer(icon: Icons.add,onTap: () {
                                Get.toNamed(RouteName.createNewSessionScreen);
                              },),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 21 * widthScaleFactor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(""),
                      CreateContainer(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                        BoldText(
  text: "welcome_back".tr,
  fontSize: 16 * heightScaleFactor,
  selectionColor: AppColors.blueColor,
),
                           BoldText(
                            text: " Adam!",
                            fontSize: 16 * heightScaleFactor,
                            selectionColor: AppColors.blueColor,
                          ),
                        ],
                      ),
                    
MainText(
  text: "manage_sessions".tr,
  fontSize: 14 * heightScaleFactor,
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
      ),
    );
  }
}
