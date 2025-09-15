// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';

// class CreateNewSessionScreenAminSide extends StatelessWidget {
//   const CreateNewSessionScreenAminSide({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 50,
//                   child: Row(
//                     children: [
//                       /// Back arrow (left side)
//                       SvgPicture.asset(
//                         Appimages.arrowback,
//                         colorFilter: ColorFilter.mode(
//                             AppColors.forwardColor, BlendMode.srcIn),
//                         width: 24,
//                         height: 20,
//                       ),

//                       /// Center wali cheez (Add New + Player)
//                       Flexible(
//                         child: Center(
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             alignment: Alignment.centerLeft,
//                             children: [
//                                Positioned(
//                                 left: 70, // 👈 is value ko adjust karke overlap perfect banao
//                                 child: Container(
//                                   width: 100,
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 4),
//                                   decoration: BoxDecoration(
//                                     color: AppColors.forwardColor,
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Center(
//                                     child: BoldText(
//                                       text: "Player",
//                                       fontSize: 20,
//                                       selectionColor: AppColors.whiteColor,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               /// "Add New" text
//                               BoldText(
//                                 text: "Add New",
//                                 selectionColor: AppColors.blueColor,
//                               ),
                      
//                               /// Overlapping Player container
                             
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';

// // Assuming these are defined in your project
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/widgets/bold_text.dart';

// class CreateNewSessionHeader extends StatelessWidget {
//   const CreateNewSessionHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//         final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;

//     // Define a base width for scaling, assuming a typical phone screen width of 375.
//     const double baseWidth = 375.0;
//     final double scaleFactor = screenWidth / baseWidth;
//     // These are placeholder values since the original constants were not provided


//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
              
//               children: [
//                 SizedBox(height: 20,),
               
//                   SizedBox(
//   height: 50,
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       Align(
//         alignment: Alignment.centerLeft,
//         child: SvgPicture.asset(
//           Appimages.arrowback,
//           colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//           width: 24 ,
//           height: 20 ,
//         ),
//       ),
//       Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             BoldText(
//               text: "Add Nev",
//               selectionColor: AppColors.blueColor,
//             ),
//              Container(
//                           width: 100 * scaleFactor,
//                           height: 37 * scaleFactor,
//                           decoration: BoxDecoration(
//                             color: AppColors.forwardColor,
//                             borderRadius: BorderRadius.circular(80 * scaleFactor),
//                           ),
//                           child: Row(
//                             children: [
//                                 BoldText(
//               text: "v",
//               selectionColor: AppColors.blueColor,
//             ),
//             SizedBox(width: 2,),
//                               BoldText(
//                                 text: "Session",
//                                 fontSize: 22 * scaleFactor,
//                                 selectionColor: AppColors.whiteColor,
//                               ),
//                             ],
//                           ),
//                         ),

//           ],
//         ),
//       ),
//     ],
//   ),
// ),
        
//                 Image.asset(Appimages.group,width: 208,height: 181,),
//                 SizedBox(height: 47,),
//                 LoginTextfield(text: "Enter Player Name",fontsize: 18,),
//                 SizedBox(height: 9,),
//                 LoginTextfield(text: "Enter Player Email Address",fontsize: 18,),
//                 SizedBox(height: 9,),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 10 ),
//         height: 70 ,
//         width: 337 ,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(25 ),
//           border: Border.all(color: AppColors.selectLangugaeColor.withOpacity(0.1), width: 2 ),
//         ),
//              child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           BoldText(text: "Role",fontSize: 18,),
//           Row(
//             children: [
//               BoldText(text: "Facilitator",selectionColor: AppColors.blueColor,fontSize: 16,),
//               Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.forwardColor,size: 30,)
//             ],
//           )
//         ],
//              ),
//             ),
//             SizedBox(height: 33,),
//             LoginButton(text: "Save",ishow: true,image: Appimages.save,),
//             SizedBox(height: 13,),
//             LoginButton(text: "Cancel",color: AppColors.forwardColor,),
        
        
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/login_textfield.dart';

// class CreateNewSessionHeader extends StatelessWidget {
//   const CreateNewSessionHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;

//     // Define a base width for scaling, assuming a typical phone screen width of 375.
//     const double baseWidth = 375.0;
//     final double scaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
//             child: Column(
//               children: [
//                 SizedBox(height: 20 * scaleFactor),
//  SizedBox(
//                     height: 50 * scaleFactor,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SvgPicture.asset(
//                           Appimages.arrowback,
//                           colorFilter: ColorFilter.mode(
//                               AppColors.forwardColor, BlendMode.srcIn),
//                           width: 24 * scaleFactor,
//                           height: 20 * scaleFactor,
//                         ),
//                         Expanded(
//                           child: Center(
//                             child: Stack(
//                               alignment: Alignment.center,
//                               clipBehavior: Clip.none,
//                               children: [
//                                 Positioned(
//                                   left: 145,
//                                   child: Container(
//                                     width: 90 * scaleFactor,
//                                     height: 37 * scaleFactor,
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 16 * scaleFactor,
//                                         vertical: 6 * scaleFactor),
//                                     decoration: BoxDecoration(
//                                       color: AppColors.forwardColor,
//                                       borderRadius:
//                                           BorderRadius.circular(20 * scaleFactor),
//                                     ),
//                                     child: Center(
//                                       child: BoldText(
//                                         text: "Player",
//                                         selectionColor: AppColors.whiteColor,
//                                         fontSize: 18 * scaleFactor,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 65 * scaleFactor,
//                                   child: BoldText(
//                                     text: "Add New",
//                                     fontSize: 24 * scaleFactor,
//                                     selectionColor: AppColors.blueColor,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 Image.asset(
//                   Appimages.group,
//                   width: 208 * scaleFactor,
//                   height: 181 * scaleFactor,
//                 ),
//                 SizedBox(height: 10 * scaleFactor),
//                 LoginTextfield(
//                   text: "Enter Player Name",
//                   fontsize: 18 * scaleFactor,
//                 ),
//                 SizedBox(height: 9 * scaleFactor),
//                 LoginTextfield(
//                   text: "Enter Player Email Address",
//                   fontsize: 18 * scaleFactor,
//                 ),
//                 SizedBox(height: 9 * scaleFactor),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
//                   height: 70 * scaleFactor,
//                   width: 337 * scaleFactor,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25 * scaleFactor),
//                     border: Border.all(
//                       color: AppColors.selectLangugaeColor.withOpacity(0.1),
//                       width: 2 * scaleFactor,
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       BoldText(
//                         text: "Role",
//                         fontSize: 18 * scaleFactor,
//                       ),
//                       Row(
//                         children: [
//                           BoldText(
//                             text: "Facilitator",
//                             selectionColor: AppColors.blueColor,
//                             fontSize: 16 * scaleFactor,
//                           ),
//                           Icon(
//                             Icons.keyboard_arrow_down_rounded,
//                             color: AppColors.forwardColor,
//                             size: 30 * scaleFactor,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 40 * scaleFactor),
//                 LoginButton(
//                   text: "Save",
//                   ishow: true,
//                   image: Appimages.save,
//                 ),
//                 SizedBox(height: 13 * scaleFactor),
//                 LoginButton(
//                   text: "Cancel",
//                   color: AppColors.forwardColor,
//                 ),
//                 Spacer()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';

class CreateNewSessionHeader extends StatelessWidget {
  const CreateNewSessionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    // Base width for scaling
    const double baseWidth = 375.0;
    final double scaleFactor = screenWidth / baseWidth;

    return Scaffold(
      resizeToAvoidBottomInset: true, // 👈 keyboard ke liye zaroori
      body: GradientBackground(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight, // 👈 full height tak stretch karega
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        SizedBox(height: 20 * scaleFactor),

                        // Header Row
                        SizedBox(
                          height: 50 * scaleFactor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                Appimages.arrowback,
                                colorFilter: ColorFilter.mode(
                                    AppColors.forwardColor, BlendMode.srcIn),
                                width: 24 * scaleFactor,
                                height: 20 * scaleFactor,
                              ),
                                  RichText(
                                                     text: TextSpan(
                                                       style:  TextStyle(fontSize: 22* scaleFactor, fontWeight: FontWeight.bold),
                                                       children: [
                              TextSpan(
                               text: "add_ne".tr,
                               style: TextStyle(
                                 color: AppColors.blueColor, // Dark Blue
                               ),
                                                         ),
                                                         WidgetSpan(
                               alignment: PlaceholderAlignment.middle, // aligns inline
                               child: Container(
                                 // padding: const EdgeInsets.symmetric( vertical: 4),
                                 decoration: BoxDecoration(
                                   color: Color(0xff8DC046),
                                   borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                bottomLeft: Radius.circular(30),
                                   ),
                                 ),
                                 child:  Text(
                                 "w_text".tr,
                                   style: TextStyle(
                                                color: AppColors.blueColor, 
                                                fontSize: 22 * scaleFactor,
                                                fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ),
                                                         ),
                                                         WidgetSpan(
                               alignment: PlaceholderAlignment.middle, // aligns inline
                               child: Container(
                                 decoration: BoxDecoration(
                                   color: AppColors.forwardColor,
                                   borderRadius: const BorderRadius.only(
                                                topRight: Radius.circular(30),
                                                bottomRight: Radius.circular(30),
                                   ),
                                 ),
                                 child: Padding(
                                   padding:  EdgeInsets.only(left: 4.0, right: 10.0),
                                   child:  Text(
                                                "player".tr,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22 * scaleFactor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                   ),
                                 ),
                               ),
                                                         ),
                                                       ],
                                                     ),
                                                   ),
                                                   
                                                   Text("")
                 
                            ],
                          ),
                        ),

                        // Image
                        Image.asset(
                          Appimages.group,
                          width: 208 * scaleFactor,
                          height: 181 * scaleFactor,
                        ),

                        SizedBox(height: 10 * scaleFactor),

                        // Textfields
                        LoginTextfield(
                        text: "enter_player_name".tr,
                          fontsize: 18 * scaleFactor,
                        ),
                        SizedBox(height: 9 * scaleFactor),
                        LoginTextfield(
                       text: "enter_player_email".tr,
                          fontsize: 18 * scaleFactor,
                        ),
                        SizedBox(height: 9 * scaleFactor),

                        // Role dropdown UI
                        Center(
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
                            height: 70 * scaleFactor,
                            width: 337 * scaleFactor,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(25 * scaleFactor),
                              border: Border.all(
                                color: AppColors.selectLangugaeColor
                                    .withOpacity(0.1),
                                width: 2 * scaleFactor,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BoldText(
                                 text: "role".tr,
                                  fontSize: 18 * scaleFactor,
                                ),
                                Row(
                                  children: [
                                    BoldText(
                                       text: "facilitator".tr,
                                      selectionColor: AppColors.blueColor,
                                      fontSize: 16 * scaleFactor,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: AppColors.forwardColor,
                                      size: 30 * scaleFactor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 40 * scaleFactor),

                        // Buttons
                        LoginButton(
                          fontSize: 20,
                          text: "save".tr,
                          ishow: true,
                          image: Appimages.save,
                        ),
                        SizedBox(height: 13 * scaleFactor),
                        LoginButton(
                          fontSize: 20,

                          text: "cancel".tr,
                          color: AppColors.forwardColor,
                        ),

                        // 👇 Spacer ab safe hai (overflow nahi hoga)
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
