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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
              Positioned(
  top: screenHeight * 0.02,   // 2% from top
  right: screenWidth * 0.18,  // 15% from right
  child: Transform.rotate(
    angle: -0.1,
    child: RoleTextContainer(),
  ),
),

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
                    BoldText(
                      text: "Choose Your",
                      selectionColor: AppColors.blueColor,
                      fontSize: 24,
                    ),
                    SizedBox(height: 20 * heightScaleFactor),
                    MainText(
                      height: 1.3,
                      fontSize: 16,
                      text: 'Select how you want to participate\nin the session',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 19 * heightScaleFactor),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Obx(()=> RoleSelectionContainer(
                          onTap: () {
                             controller.changeTab(0);
                          },
                          isSelected: controller.selectedIndex.value==0 ,
                          image: Appimages.prince1,
                          image2: Appimages.admin,
                          text: "Administrator",
                          text2: 'Full system access\nand control',
                        ),),
                    SizedBox(height: 10 * heightScaleFactor),

                       Obx(()=> RoleSelectionContainer(
                          // isSelected: true,
                           onTap: () {
                             controller.changeTab(1);
                          },
                          isSelected: controller.selectedIndex.value==1 ,
                          image: Appimages.blackman,
                          image2: Appimages.facil,
                          text: "Facilitator",
                          text2: 'Manage sessions and\nguide activities',
                          width: 169,
                        ),),
                    SizedBox(height: 10 * heightScaleFactor),

                      Obx(()=>  RoleSelectionContainer(
                           onTap: () {
                             controller.changeTab(2);
                          },
                          isSelected: controller.selectedIndex.value==2,
                          image: Appimages.blackgirl,
                          image2: Appimages.player,
                          text: "Player",
                          text2: 'Participate in games\nand activities',
                          width: 160, 
                        ),)
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
      Get.snackbar("Selection Required", "Please select a role first!",
      backgroundColor: AppColors.forwardColor,
      colorText: AppColors.whiteColor
      
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
