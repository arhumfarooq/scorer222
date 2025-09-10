// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
// // import 'package:scorer/view/adminside/admin_dashboard.dart';
// // import 'package:scorer/view/adminside/game_screen_Admin_Side.dart';
// // import 'package:scorer/view/adminside/user_management_Screen.dart';
// // import 'package:scorer/widgets/create_container.dart';

// // class BottomNavigation extends StatefulWidget {
// //   const BottomNavigation({super.key});

// //   @override
// //   State<BottomNavigation> createState() => _BottomNavigationState();
// // }

// // class _BottomNavigationState extends State<BottomNavigation> {
// //   int _selectedIndex = 0;

// //   final List<Widget> _pages = [
// //     AdminDashboard(),
// //    AdminCreateNewSessionScreen(),
// //     GameScreenAdminSide(),
// //     UserManagementScreen()
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       extendBody: true,
// //       body: _pages[_selectedIndex],

// //       bottomNavigationBar: Container(
// //          width: double.infinity, // 👈 fix width hatao
// //   // height: 200, // jitni height chahiye
// //   // height: 150,
// //   // height: 150,
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage(Appimages.bottom1),
// //              // 👈 bg image
// //             // fit: BoxFit.fill,
            
// //             fit: BoxFit.fitWidth,           // ✅ width ke hisaab se fit
// //       alignment: Alignment.bottomCenter,
// //           ),
// //         ),
// //         child: BottomNavigationBar(
// //           backgroundColor: Colors.transparent,
// //           elevation: 0,
// //           type: BottomNavigationBarType.fixed, // 👈 4+ items ke liye zaroori
// //           currentIndex: _selectedIndex,
// //           onTap: _onItemTapped,
// //           selectedItemColor: Colors.blue,
// //           unselectedItemColor: Colors.grey,
// //           items: [
// //              BottomNavigationBarItem(
// //               icon: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   // SizedBox(height: 10,),
// //                   // Image.asset(Appimages.house1, height: 50, width: 118),
// //                   CreateContainer(height: 31,text: "Home",),
                
// //                 ],
// //               ),
// //               label: "",
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   Image.asset(Appimages.buttonplus, height: 87, width: 118),
// //                   CreateContainer(height: 31,),
// //                 ],
// //               ),
// //               label: "",
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   Image.asset(Appimages.game,height: 87, width: 70),
// //                   CreateContainer(text: "Game",height: 31,),
// //                 ],
// //               ),
// //               label: "",
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   Image.asset(Appimages.group, height: 87, width: 80),
// //                   CreateContainer(height: 31,text: "Users",),
                
// //                 ],
// //               ),
// //               label: "",
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:scorer/constants/appimages.dart';
// // // import 'package:scorer/controllers/bottom_nav_controller.dart';
// // // import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
// // // import 'package:scorer/view/adminside/admin_dashboard.dart';
// // // import 'package:scorer/view/adminside/game_screen_Admin_Side.dart';
// // // import 'package:scorer/view/adminside/user_management_Screen.dart';
// // // import 'package:scorer/widgets/create_container.dart';

// // // class BottomNavigation extends StatelessWidget {
// // //   BottomNavigation({super.key});

// // //   final BottomNavController controller = Get.put(BottomNavController());

// // //   final List<Widget> _pages = [
// // //     AdminDashboard(),
// // //     AdminCreateNewSessionScreen(),
// // //     GameScreenAdminSide(),
// // //     UserManagementScreen()
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Obx(() => Scaffold(
// // //       // backgroundColor,
// // //         // 👈 background hata diya
// // //       extendBody: true, // 👈 body ko bottomNav ke niche extend karne ke liye
// // //           body: _pages[controller.selectedIndex.value], // 👈 Page Switch ho raha hai

// // //           bottomNavigationBar: Container(
// // //             // width: 2,
// // //             height: 200,
// // //             decoration: BoxDecoration(
// // //               image: DecorationImage(
// // //                 image: AssetImage(Appimages.bottom1),
// // //                 fit: BoxFit.cover,
// // //               ),
// // //             ),
// // //             child: BottomNavigationBar(
// // //               backgroundColor: Colors.transparent,
// // //               elevation: 0,
// // //               type: BottomNavigationBarType.fixed,
// // //               currentIndex: controller.selectedIndex.value,
// // //               onTap: (index) {
// // //                 controller.changeIndex(index); // 👈 update index
// // //               },
// // //               selectedItemColor: Colors.blue,
// // //               unselectedItemColor: Colors.grey,
// // //               items: [
// // //                 BottomNavigationBarItem(
// // //                   icon: Column(
// // //                     mainAxisSize: MainAxisSize.min,
// // //                     children: [
// // //                       Image.asset(Appimages.house1, height: 118, width:80),
// // //                       CreateContainer(height: 31, text: "Home"),
// // //                     ],
// // //                   ),
// // //                   label: "",
// // //                 ),
// // //                 BottomNavigationBarItem(
// // //                   icon: Column(
// // //                     mainAxisSize: MainAxisSize.min,
// // //                     children: [
// // //                       Image.asset(Appimages.buttonplus, height: 50, width: 50),
// // //                       CreateContainer(height: 31, text: "Add"),
// // //                     ],
// // //                   ),
// // //                   label: "",
// // //                 ),
// // //                 BottomNavigationBarItem(
// // //                   icon: Column(
// // //                     mainAxisSize: MainAxisSize.min,
// // //                     children: [
// // //                       Image.asset(Appimages.game, height: 50, width: 50),
// // //                       CreateContainer(height: 31, text: "Game"),
// // //                     ],
// // //                   ),
// // //                   label: "",
// // //                 ),
// // //                 BottomNavigationBarItem(
// // //                   icon: Column(
// // //                     mainAxisSize: MainAxisSize.min,
// // //                     children: [
// // //                       Image.asset(Appimages.group, height: 50, width: 50),
// // //                       CreateContainer(height: 31, text: "Users"),
// // //                     ],
// // //                   ),
// // //                   label: "",
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
          
// // //         ));
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
// // import 'package:scorer/view/adminside/admin_dashboard.dart';
// // import 'package:scorer/view/adminside/game_screen_Admin_Side.dart';
// // import 'package:scorer/view/adminside/user_management_Screen.dart';
// // import 'package:scorer/widgets/create_container.dart';

// // class BottomNavigation extends StatefulWidget {
// //   const BottomNavigation({super.key});

// //   @override
// //   State<BottomNavigation> createState() => _BottomNavigationState();
// // }

// // class _BottomNavigationState extends State<BottomNavigation> {
// //   int _selectedIndex = 0;

// //   final List<Widget> _pages = [
// //     AdminDashboard(),
// //     AdminCreateNewSessionScreen(),
// //     GameScreenAdminSide(),
// //     UserManagementScreen()
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       extendBody: true,
// //       body: _pages[_selectedIndex],
// //       bottomNavigationBar: Container(
// //         height: 120, // ہائٹ بڑھائیں تاکہ icon اور text دونوں fit ہو جائیں
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage(Appimages.bottom1),
// //             fit: BoxFit.fitWidth,
// //             alignment: Alignment.bottomCenter,
// //           ),
// //         ),
// //         child: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 10.0),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// //             children: <Widget>[
// //               // Home Item
// //               _buildNavItem(
// //                 icon: Appimages.house1,
// //                 label: "Home",
// //                 index: 0,
// //               ),
// // // CreateContainer(text: "Home",),
// //               // Create Item (Special design)
// //               _buildCreateItem(
// //                 icon: Appimages.buttonplus,
// //                 label: "Create",
// //                 index: 1,
// //               ),

// //               // Game Item
// //               _buildNavItem(
// //                 icon: Appimages.game,
// //                 label: "Game",
// //                 index: 2,
// //               ),

// //               // Users Item
// //               _buildNavItem(
// //                 icon: Appimages.group,
// //                 label: "Users",
// //                 index: 3,
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildNavItem({required String icon, required String label, required int index  }) {
  
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           _selectedIndex = index;
// //         });
// //       },
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         mainAxisAlignment: MainAxisAlignment.end, // content ko bottom se align kare
// //         children: [
// //           Image.asset(icon, height: 60),
// //           const SizedBox(height: 5), // icon aur container ke beech thodi jagah
         
// //           CreateContainer(text: label,),
// //           const SizedBox(height: 10), // bottom padding
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildCreateItem({required String icon, required String label, required int index}) {
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           _selectedIndex = index;
// //         });
// //       },
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         mainAxisAlignment: MainAxisAlignment.end,
// //         children: [
// //           Image.asset(icon, height: 67), // Special size for Create button
// //           const SizedBox(height: 5),
// //          CreateContainer(text: label
         
         
// //          ,),
// //           const SizedBox(height: 10),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/controllers/bottom_nav_controller.dart';
// import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
// import 'package:scorer/view/adminside/admin_dashboard.dart';
// import 'package:scorer/view/adminside/game_screen_Admin_Side.dart';
// import 'package:scorer/view/adminside/user_management_Screen.dart';
// import 'package:scorer/widgets/create_container.dart';

// class BottomNavigation extends StatelessWidget {
//   BottomNavigation({super.key});

//   final BottomNavController controller = Get.put(BottomNavController());

//   final List<Widget> _pages = [
//     AdminDashboard(),
//     AdminCreateNewSessionScreen(),
//     GameScreenAdminSide(),
//     UserManagementScreen()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Scaffold(
//           extendBody: true,
//           body: _pages[controller.selectedIndex.value],

//           bottomNavigationBar: Container(
//             height: 120,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(Appimages.bottom1),
//                 fit: BoxFit.fitWidth,
//                 alignment: Alignment.bottomCenter,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   // Home Item
//                   _buildNavItem(
//                     icon: Appimages.house1,
//                     label: "Home",
//                     index: 0,
//                   ),

//                   // Create Item
//                   _buildCreateItem(
//                     icon: Appimages.buttonplus,
//                     label: "Create",
//                     index: 1,
//                   ),

//                   // Game Item
//                   _buildNavItem(
//                     icon: Appimages.game,
//                     label: "Game",
//                     index: 2,
//                   ),

//                   // Users Item
//                   _buildNavItem(
//                     icon: Appimages.group,
//                     label: "Users",
//                     index: 3,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }

//   Widget _buildNavItem(
//       {required String icon, required String label, required int index}) {
//     return GestureDetector(
//       onTap: () => controller.changeIndex(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Image.asset(icon, height: 60),
//           const SizedBox(height: 5),
//           CreateContainer(text: label,
// textColor: controller.selectedIndex.value == index
//     ? AppColors.forwardColor
//     : AppColors.createBorderColor,

//           containerColor:controller.selectedIndex.value == index
//     ? AppColors.selectionColor.withOpacity(0.25)
//     : AppColors.createColor ,
//         borderColor: controller.selectedIndex.value == index
//     ? AppColors.forwardColor
//     : AppColors.createBorderColor,

//           ),
//           const SizedBox(height: 10),
//         ],
//       ),
//     );
//   }

//   Widget _buildCreateItem(
//       {required String icon, required String label, required int index}) {
//     return GestureDetector(
//       onTap: () => controller.changeIndex(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Image.asset(icon, height: 67),
//           const SizedBox(height: 5),
//           CreateContainer(text: label,

//           textColor: controller.selectedIndex.value == index
//     ? AppColors.forwardColor
//     : AppColors.createBorderColor,
//           containerColor:controller.selectedIndex.value == index
//     ? AppColors.selectionColor.withOpacity(0.25)
//     : AppColors.createColor ,
//         borderColor: controller.selectedIndex.value == index
//     ? AppColors.forwardColor
//     : AppColors.createBorderColor,

//           ),
//           const SizedBox(height: 10),
//         ],
//       ),
//     );
//   }
// }
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
    UserManagementScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    const double baseWidth = 375.0; // Base design width
    final double scaleFactor = screenWidth / baseWidth;

    return Obx(() => Scaffold(
          extendBody: true,
          body: _pages[controller.selectedIndex.value],
          bottomNavigationBar: Container(
            height: 120 * scaleFactor,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Appimages.bottom1),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0 * scaleFactor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Home Item
                  _buildNavItem(
                    context,
                    icon: Appimages.house1,
                    label: "Home",
                    index: 0,
                    scaleFactor: scaleFactor,
                  ),

                  // Create Item
                  _buildCreateItem(
                    context,
                    icon: Appimages.buttonplus,
                    label: "Create",
                    index: 1,
                    scaleFactor: scaleFactor,
                  ),

                  // Game Item
                  _buildNavItem(
                    context,
                    icon: Appimages.game,
                    label: "Game",
                    index: 2,
                    scaleFactor: scaleFactor,
                  ),

                  // Users Item
                  _buildNavItem(
                    context,
                    icon: Appimages.group,
                    label: "Users",
                    index: 3,
                    scaleFactor: scaleFactor,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildNavItem(BuildContext context,
      {required String icon,
      required String label,
      required int index,
      required double scaleFactor}) {
    return GestureDetector(
      onTap: () => controller.changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(icon, height: 60 * scaleFactor),
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

  Widget _buildCreateItem(BuildContext context,
      {required String icon,
      required String label,
      required int index,
      required double scaleFactor}) {
    return GestureDetector(
      onTap: () => controller.changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(icon, height: 65 * scaleFactor),
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
      )
      


    );
      }}