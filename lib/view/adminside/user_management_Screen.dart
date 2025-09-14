// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:scorer/components/adminside/user_administrate_side.dart';
// import 'package:scorer/components/adminside/user_facilitate_side.dart';
// import 'package:scorer/components/adminside/user_player_Side.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/controllers/user_managment_controller.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/add_one_Container.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/setting_container.dart';

// class UserManagementScreen extends StatelessWidget {
//   final UserManagmentController controller = Get.put(UserManagmentController());
//   final List<String> tabs = ["Players", "Facilitator", "Administrator"];
//  final List<Widget> screens = [
//     UserPlayerSide(),
//     UserFacilitateSide(),
//     UserAdministrateSide(),

//   ];
//    UserManagementScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;

//     // A base height and width to scale from, e.g., a common phone (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: SafeArea(child: GradientBackground(child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//               Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 32 * widthScaleFactor,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Image.asset(
//                             Appimages.prince2,
//                             width: 62 * widthScaleFactor,
//                             height: 83 * heightScaleFactor,
//                           ),
//                           Row(
//                             children: [
//                               SettingContainer(icons: Icons.settings),
//                               SizedBox(width: 6 * widthScaleFactor),
//                               SettingContainer(
//                                 icons: Icons.notifications,
//                                 ishow: true,
//                               ),
//                               SizedBox(width: 6 * widthScaleFactor),
//                               AddOneContainer(icon: Icons.add),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(right: 21 * widthScaleFactor),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(""),
//                       CreateContainer(text: "Add",),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   // padding: const EdgeInsets.all(8.0),
//                   padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),

//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         BoldText(
//                           text: "Users Management",
//                           fontSize: 16 * heightScaleFactor,
//                           selectionColor: AppColors.blueColor,
//                         ),
//                         MainText(
//                           text: "Securely manage roles, permissions,\nand access.",
//                           fontSize: 14 * heightScaleFactor,
//                           height: 1.4,
//                         ),
//                         SizedBox(height: 23 * heightScaleFactor),
//                         Container(
//                           width: 336,
//                           height: 53,
//                           decoration: BoxDecoration(
//                             color: AppColors.whiteColor,
//                             border: Border.all(color: AppColors.searchBorder,width: 1),
//                             borderRadius: BorderRadius.circular(12)
//                           ),
//                           child: TextFormField(
//                             cursorColor: AppColors.blackColor,
//   decoration: InputDecoration(
//     hintText: "Search Players",
//     prefixIcon: Icon(Icons.search,color: AppColors.forwardColor,), // left side icon
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12), // rounded corner optional
//       borderSide: BorderSide.none, // remove default border
//     ),
//     // filled: true, // background color active
//     // fillColor: Colors.grey[200], // light grey background
//   ),
// ),


//                         ),
//                         SizedBox(height: 18,),
//                           Obx(() {
//                     double totalWidth = MediaQuery.of(context).size.width - 60; 
//                     // 60 = left (30) + right (30) padding
//                     double tabWidth = totalWidth / tabs.length;
//                     double left = controller.selectedIndex.value * tabWidth;
                  
//                     return Container(
//                       height: 53,
//                       width: totalWidth,
//                       decoration: BoxDecoration(
//                         color: AppColors.settingColor,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Stack(
//                         children: [
//                           // Highlight bar
//                           AnimatedPositioned(
//                             duration: Duration(milliseconds: 250),
//                             curve: Curves.easeInOut,
//                             left: left+4,
//                             top: 5.5,
//                             child: Container(
//                   height: 42,
//                              width: tabWidth - 8, // 👈 dono side se 4-4 px kam
//                   decoration: BoxDecoration(
//                     color: AppColors.forwardColor,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                             ),
//                           ),
                  
//                           // Tabs
//                           Row(
//                             children: List.generate(tabs.length, (index) {
//                   return SizedBox(
//                     width: tabWidth,
//                     child: GestureDetector(
//                       onTap: () => controller.changeTab(index),
//                       child: Center(
//                         child: Text(
//                           tabs[index],
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: controller.selectedIndex.value == index
//                                 ? AppColors.whiteColor
//                                 : AppColors.languageColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                             }),
//                           )
//                         ],
//                       ),
//                     );
//                   }),
//                   // spac
                  
//                     ],
//                   ),
//                 ),
//                   Obx(
//                   () => screens[controller.selectedIndex.value],
//                 ),
              
//           ],
//         ),
//       ))),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/components/adminside/user_administrate_side.dart';
import 'package:scorer/components/adminside/user_facilitate_side.dart';
import 'package:scorer/components/adminside/user_player_Side.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/user_managment_controller.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/add_one_Container.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/setting_container.dart';

class UserManagementScreen extends StatelessWidget {
  final UserManagmentController controller = Get.put(UserManagmentController());
  final List<String> tabs = [
  "players".tr,
  "facilitator".tr,
  "administrator".tr,
];
  final List<Widget> screens = [
    UserPlayerSide(),
    UserFacilitateSide(),
    UserAdministrateSide(),
  ];

  UserManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    
    // Use a single scaling factor for consistency
    const double baseWidth = 414.0;
    final double scaleFactor = screenWidth / baseWidth;

    return GradientBackground(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32 * scaleFactor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              Appimages.prince2,
                              width: 62 * scaleFactor,
                              height: 83 * scaleFactor,
                            ),
                            Row(
                              children: [
                                SettingContainer(icons: Icons.settings),
                                SizedBox(width: 6 * scaleFactor),
                                SettingContainer(
                                  icons: Icons.notifications,
                                  ishow: true,
                                ),
                                SizedBox(width: 6 * scaleFactor),
                                AddOneContainer(icon: Icons.add,
                                onTap: () => Get.toNamed(RouteName.createNewSessionHeader),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 21 * scaleFactor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(""),
                       CreateContainer(text: "add".tr)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32 * scaleFactor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldText(
                           text: "users_management".tr,
                          fontSize: 16 * scaleFactor,
                          selectionColor: AppColors.blueColor,
                        ),
                        MainText(
                          text: "securely_manage_roles".tr,
                          fontSize: 14 * scaleFactor,
                          height: 1.4,
                        ),
                        SizedBox(height: 23 * scaleFactor),
                        Container(
                          width: 336 * scaleFactor,
                          height: 53 * scaleFactor,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(color: AppColors.searchBorder, width: 1 * scaleFactor),
                            borderRadius: BorderRadius.circular(12 * scaleFactor),
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.blackColor,
                            decoration: InputDecoration(
                             hintText: "search_players".tr,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 10 * scaleFactor),
                                child: Icon(Icons.search, color: AppColors.forwardColor),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12 * scaleFactor),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(fontSize: 14 * scaleFactor),
                            ),
                          ),
                        ),
                        SizedBox(height: 18 * scaleFactor),
                        Obx(() {
                          double totalWidth = screenWidth - (32 * 2 * scaleFactor);
                          double tabWidth = totalWidth / tabs.length;
                          double left = controller.selectedIndex.value * tabWidth;
                          
                          return Container(
                            height: 53 * scaleFactor,
                            width: totalWidth,
                            decoration: BoxDecoration(
                              color: AppColors.settingColor,
                              borderRadius: BorderRadius.circular(12 * scaleFactor),
                            ),
                            child: Stack(
                              children: [
                                // Highlight bar
                                AnimatedPositioned(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeInOut,
                                  left: left + (4 * scaleFactor),
                                  top: 5.5 * scaleFactor,
                                  child: Container(
                                    height: 42 * scaleFactor,
                                    width: tabWidth - (8 * scaleFactor),
                                    decoration: BoxDecoration(
                                      color: AppColors.forwardColor,
                                      borderRadius: BorderRadius.circular(12 * scaleFactor),
                                    ),
                                  ),
                                ),
                                // Tabs
                                Row(
                                  children: List.generate(tabs.length, (index) {
                                    return SizedBox(
                                      width: tabWidth,
                                      child: GestureDetector(
                                        onTap: () => controller.changeTab(index),
                                        child: Center(
                                          child: Text(
                                            tabs[index],
                                            style: TextStyle(
                                              fontSize: 14 * scaleFactor,
                                              color: controller.selectedIndex.value == index
                                                  ? AppColors.whiteColor
                                                  : AppColors.languageColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                )
                              ],
                            ),
                          );
                        }),
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
}}