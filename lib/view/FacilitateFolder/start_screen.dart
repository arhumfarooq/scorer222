// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/forward_button_container.dart';
// import 'package:scorer/widgets/language_selection_container.dart';
// import 'package:scorer/widgets/main_text.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: GradientBackground(child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 26),
//           child: Column(
//             children: [
//               SizedBox(height: 30,)
// ,              Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Row(
//                     children: [
    
//                       SvgPicture.asset(Appimages.language),
//                       SizedBox(width: 5,),
//                       MainText(text: 'Select Language',)
//                     ],
//                   ),
// ForwardButtonContainer(),


//   ],
// ) ,
// Padding(
//   padding:  EdgeInsets.only(top: 17,bottom: 17),
//   child: Column(
//     children: [
//       LanguageSelectionContainer(text: "English", image: Appimages.uk, isSelected: true,),
//       SizedBox(height: 9,),
//       LanguageSelectionContainer(text: "Spanish", image: Appimages.spain, isSelected: false,),
//       SizedBox(height: 9,),
//       LanguageSelectionContainer(text: "French", image: Appimages.france,isSelected: false),
//        SizedBox(height: 9,),
//       LanguageSelectionContainer(text: "Germany", image: Appimages.germany,isSelected: false),
//        SizedBox(height: 9,),
//       LanguageSelectionContainer(text: "Italy", image: Appimages.italy,isSelected: false),
//        SizedBox(height: 9,),
//       LanguageSelectionContainer(text: "Arabic", image: Appimages.saudi,isSelected: false)
//     ],
//   )
// ),
// Spacer(),
//  SvgPicture.asset(Appimages.bottom,width: 104,height: 32,),
//  SizedBox(height: 30,)

//             ],
//           ),
//         ),
//       ),)
//     );
//   }

// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/controllers/language_Selection_controller.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/forward_button_container.dart';
import 'package:scorer/widgets/language_selection_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';


class StartScreen extends StatelessWidget {
  final controller= Get.put(LanguageSelectionController());
  StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width to calculate the scaling factor.
    final double screenWidth = MediaQuery.of(context).size.width;

    // Use a base width for scaling. A common mobile width is a good reference.
    const double baseWidth = 375.0;
    final double scaleFactor = screenWidth / baseWidth;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            // Scale horizontal padding
            padding: EdgeInsets.symmetric(horizontal: 26 * scaleFactor),
            child: Column(
              children: [
                // Scale top SizedBox height
                SizedBox(height: 30 * scaleFactor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Scale SVG image size
                        SvgPicture.asset(
                          Appimages.language,
                          height: 24 * scaleFactor, // Assuming a base size
                          width: 24 * scaleFactor, // Assuming a base size
                        ),
                        // Scale horizontal spacing
                        SizedBox(width: 5 * scaleFactor),
                        // Scale font size
                        MainText(
                          text: 'Select Language',
                          fontSize: 16 * scaleFactor, // Assuming a base font size
                        ),
                      ],
                    ),
                    ForwardButtonContainer(
                      onTap:(){
                        Get.toNamed(RouteName.startScreen1);
                      },
                    ),
                  ],
                ),
                Padding(
                  // Scale vertical padding
                  padding: EdgeInsets.symmetric(vertical: 17 * scaleFactor),
                  child: Column(
                    children: [
                      LanguageSelectionContainer(text: "English", image: Appimages.uk, isSelected: controller.selectLangauge.value==0, onTap: () { 

                        controller.select(0);
                       },),
                      // Scale vertical spacing
                      SizedBox(height: 9 * scaleFactor),
                      LanguageSelectionContainer(text: "Spanish", image: Appimages.spain,isSelected: controller.selectLangauge.value==1, onTap: () { 

                        controller.select(1);
                       }, ),
                      SizedBox(height: 9 * scaleFactor),
                      LanguageSelectionContainer(text: "French", image: Appimages.france, isSelected: controller.selectLangauge.value==2, onTap: () { 

                        controller.select(2);
                       }, ),
                      SizedBox(height: 9 * scaleFactor),
                      LanguageSelectionContainer(text: "Germany", image: Appimages.germany, isSelected: controller.selectLangauge.value==3, onTap: () { 

                        controller.select(3);
                       },),
                      SizedBox(height: 9 * scaleFactor),
                      LanguageSelectionContainer(text: "Italy", image: Appimages.italy, isSelected: controller.selectLangauge.value==4, onTap: () { 

                        controller.select(4);
                       },),
                     
                      SizedBox(height: 9 * scaleFactor),
                      LanguageSelectionContainer(text: "Arabic", image: Appimages.saudi, isSelected: controller.selectLangauge.value==5, onTap: () { 

                        controller.select(5);
                       }, ),
                          SizedBox(height: 9 * scaleFactor),
                      LanguageSelectionContainer(text: "South Africa", image: Appimages.southAfrica, isSelected: controller.selectLangauge.value==6, onTap: () { 

                        controller.select(6);
                       }, ),
                       
                    ],
                  ),
                ),
                const Spacer(),
                // Scale SVG image size
                SvgPicture.asset(
                  Appimages.bottom,
                  width: 104 * scaleFactor,
                  height: 32 * scaleFactor,
                ),
                // Scale bottom spacing
                SizedBox(height: 30 * scaleFactor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}