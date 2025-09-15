// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/main.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/forward_button_container.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/role_selection_container.dart';
// import 'package:scorer/widgets/role_text_container.dart';

// class ChooseYourRoleScreen extends StatelessWidget {
//   const ChooseYourRoleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(
//         child: Stack(
//           children: [
//              Positioned(
//         top:15,
//         left: 240,
//         child: Transform.rotate(
//           angle: -0.1,
//           child: RoleTextContainer())),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               child: Column(
                
//                 children: [
//                   SizedBox(height: 20,),
//                   Center(child: BoldText(text: "Choose Your",selectionColor: AppColors.blueColor,fontSize: 24,)),
//                   SizedBox(height: 20,),
//                    MainText(
//     height: 1.3,
//     fontSize: 16,
//     text: 'Select how you want to participate\nin the session',textAlign: TextAlign.center,),
//     SizedBox(height: 19,),
//      RoleSelectionContainer(
//       // height: ,
//     isSelected: false,
//     image: Appimages.prince1, image2: Appimages.admin, text: "Administrator", 
  
//   text2: 'Full system access\nand control'),
//                   SizedBox(height: 10,),

//    RoleSelectionContainer(
//     isSelected: true,
//     image: Appimages.blackman, image2: Appimages.facil, text: "Facilitator", 
  
//   text2: 'Manage sessions and guide activities ',width: 169,),
//                   SizedBox(height: 10,),

//   RoleSelectionContainer(
//     // isSelected: true,
//     image: Appimages.blackgirl, image2: Appimages.player, text: "Player", 
  
//   text2: 'Participate in games and activities',width: 160,),
//   Spacer(),
//   ForwardButtonContainer(),
//   SizedBox(height: 30,)
                  
//                 ],
//               ),
//             ),
                  
//         // Positioned(
//         //     top: 37,
//         //     left: 92,
//         //     child: BoldText(text: "Choose Your",selectionColor: AppColors.blueColor,fontSize: 24,)),







//           ],
//         ),
//       )),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/startscreen/aa.dart'; // Assuming this provides GradientBackground
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/forward_button_container.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/role_selection_container.dart';
// import 'package:scorer/widgets/role_text_container.dart';

// class ChooseYourRoleScreen extends StatelessWidget {
//   const ChooseYourRoleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen dimensions
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;

//     // A base height to scale from, e.g., a common phone height (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Stack(
//             children: [
//               Positioned(
//                 top: 15 * heightScaleFactor,
//                 left: 270 * widthScaleFactor,
//                 child: Transform.rotate(
//                   angle: -0.1,
//                   child: RoleTextContainer(),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20 * heightScaleFactor),
//                     BoldText(
//                       text: "Choose Your",
//                       selectionColor: AppColors.blueColor,
//                       fontSize: 24,
//                     ),
//                     SizedBox(height: 20 * heightScaleFactor),
//                     MainText(
//                       height: 1.3,
//                       fontSize: 16,
//                       text: 'Select how you want to participate\nin the session',
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(height: 19 * heightScaleFactor),
//                     RoleSelectionContainer(
//                       isSelected: false,
//                       image: Appimages.prince1,
//                       image2: Appimages.admin,
//                       text: "Administrator",
//                       text2: 'Full system access\nand control',
//                     ),
//                     SizedBox(height: 10 * heightScaleFactor),
//                     RoleSelectionContainer(
//                       isSelected: true,
//                       image: Appimages.blackman,
//                       image2: Appimages.facil,
//                       text: "Facilitator",
//                       text2: 'Manage sessions and guide activities',
//                       width: 169, // This will be handled by the widget itself
//                     ),
//                     SizedBox(height: 10 * heightScaleFactor),
//                     RoleSelectionContainer(
//                       image: Appimages.blackgirl,
//                       image2: Appimages.player,
//                       text: "Player",
//                       text2: 'Participate in games\nand activities',
//                       width: 160,
//                     ),
//                     Spacer(),
//                     ForwardButtonContainer(),
//                     SizedBox(height: 10 * heightScaleFactor),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/role_selection_controller.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/forward_button_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/role_selection_container.dart';
import 'package:scorer/widgets/role_text_container.dart';

class ChooseYourRoleScreen extends StatelessWidget {
  final RoleSelectionController controller = Get.put(RoleSelectionController());
   ChooseYourRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
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
          child: Stack(
            children: [
            

              // Positioned(
              //   top: 15 * heightScaleFactor,
              //   right: 65 * widthScaleFactor,
              //   child: Transform.rotate(
              //     angle: -0.1,
              //     child: RoleTextContainer(),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
                child: Column(
                  children: [
                    SizedBox(height: 20 * heightScaleFactor),
                   Container(
                    // width: 100,
                    // height: 100,
                     child: Stack(
                      clipBehavior: Clip.none,
                       children: [
                          Positioned(
                            right: 40,
  // top: screenHeight * 0.02,   // 2% from top
  // right: screenWidth * 0.18,  // 15% from right
  // right: 60,
  child: Transform.rotate(
    angle: -0.1,
    child: RoleTextContainer(),
  ),
),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             BoldText(
                                  fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 22,
smallSize: 18

                                  ),
                               text: "choose_your".tr,
                               selectionColor: AppColors.blueColor,
                              //  fontSize: 24,
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
SizedBox(height: 20 * heightScaleFactor),
MainText(
  height: 1.3,
  fontSize: 16,
  text: 'select_participation'.tr,
  textAlign: TextAlign.center,
),

                    SizedBox(height: 19 * heightScaleFactor),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                     Obx(() => RoleSelectionContainer(
  onTap: () => controller.changeTab(0),
  isSelected: controller.selectedIndex.value == 0,
  image: Appimages.prince1,
  image2: Appimages.admin,
  text: "administrator".tr,
  text2: 'admin_description'.tr,
)),
                    SizedBox(height: 10 * heightScaleFactor),

                    Obx(() => RoleSelectionContainer(
  onTap: () => controller.changeTab(1),
  isSelected: controller.selectedIndex.value == 1,
  image: Appimages.blackman,
  image2: Appimages.facil,
  text: "facilitator".tr,
  text2: 'facilitator_description'.tr,
  width: 169,
)),
                    SizedBox(height: 10 * heightScaleFactor),

                     Obx(() => RoleSelectionContainer(
  onTap: () => controller.changeTab(2),
  isSelected: controller.selectedIndex.value == 2,
  image: Appimages.blackgirl,
  image2: Appimages.player,
  text: "player".tr,
  text2: 'player_description'.tr,
  width: 160,
)),
                      ],
                    ),
                    Spacer(),
                    // SizedBox(height: 30 * heightScaleFactor),
                  ForwardButtonContainer(
  onTap: () {
    final controller = Get.find<RoleSelectionController>();

    if (controller.selectedIndex.value == 0) {
      // Agar pehla option select hai
      Get.toNamed(RouteName.adminLoginScreen);
    } else if (controller.selectedIndex.value == 1) {
      // Agar dusra option select hai
      Get.toNamed(RouteName.facilLoginScreen);
    } 
    else if (controller.selectedIndex.value == 2) {
      // Agar dusra option select hai
      Get.toNamed(RouteName.playerLoginScreen);
    } 
    else {
      // Agar koi select hi na kare
    Get.snackbar(
  "selection_required".tr,
  "please_select_role".tr,
  backgroundColor: AppColors.forwardColor,
  colorText: AppColors.whiteColor,
);

    }
  },
),

                    SizedBox(height: 10 * heightScaleFactor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 









  // RichText(
  //                                                    text: TextSpan(
  //                                                      style:  TextStyle(fontSize: 22* scaleFactor, fontWeight: FontWeight.bold),
  //                                                      children: [
  //                             TextSpan(
  //                              text: "Create Ne",
                               
  //                              style: TextStyle(
  //                                color: AppColors.blueColor, // Dark Blue
  //                              ),
  //                                                        ),
  //                                                        WidgetSpan(
  //                              alignment: PlaceholderAlignment.middle, // aligns inline
  //                              child: Container(
  //                                // padding: const EdgeInsets.symmetric( vertical: 4),
  //                                decoration: BoxDecoration(
  //                                  color: Color(0xff8DC046),
  //                                  borderRadius: const BorderRadius.only(
  //                                               topLeft: Radius.circular(30),
  //                                               bottomLeft: Radius.circular(30),
  //                                  ),
  //                                ),
  //                                child:  Text(
  //                                  "w",
  //                                  style: TextStyle(
  //                                               color: AppColors.blueColor, 
  //                                               fontSize: 22 * scaleFactor,
  //                                               fontWeight: FontWeight.bold,
  //                                  ),
  //                                ),
  //                              ),
  //                                                        ),
  //                                                        WidgetSpan(
  //                              alignment: PlaceholderAlignment.middle, // aligns inline
  //                              child: Container(
  //                                decoration: BoxDecoration(
  //                                  color: AppColors.forwardColor,
  //                                  borderRadius: const BorderRadius.only(
  //                                               topRight: Radius.circular(30),
  //                                               bottomRight: Radius.circular(30),
  //                                  ),
  //                                ),
  //                                child: Padding(
  //                                  padding:  EdgeInsets.only(left: 4.0, right: 10.0),
  //                                  child:  Text(
  //                                               "Session",
  //                                               style: TextStyle(
  //                                                 color: Colors.white,
  //                                                 fontSize: 22 * scaleFactor,
  //                                                 fontWeight: FontWeight.bold,
  //                                               ),
  //                                  ),
  //                                ),
  //                              ),
  //                                                        ),
  //                                                      ],
  //                                                    ),
  //                                                  ),