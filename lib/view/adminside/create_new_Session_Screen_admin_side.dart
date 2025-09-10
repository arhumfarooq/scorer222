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
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    final double screenHeight = screenSize.height;

    // Define a base width for scaling, assuming a typical phone screen width of 375.
    const double baseWidth = 375.0;
    final double scaleFactor = screenWidth / baseWidth;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
            child: Column(
              children: [
                SizedBox(height: 20 * scaleFactor),
//                 SizedBox(
//                   height: 50 * scaleFactor,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: SvgPicture.asset(
//                           Appimages.arrowback,
//                           colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//                           width: 24 * scaleFactor,
//                           height: 20 * scaleFactor,
//                         ),
//                       ),
//                       Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             BoldText(
//                               text: "Add Nev",
//                               selectionColor: AppColors.blueColor,
//                               fontSize: 24 * scaleFactor,
//                             ),
//                            Container(
//   width: 100 * scaleFactor,
//   height: 37 * scaleFactor,
//   decoration: BoxDecoration(
//     color: AppColors.forwardColor,
//     borderRadius: BorderRadius.circular(80 * scaleFactor),
//   ),
//   child: Row(
//     children: [
//       // Left aligned "v"
//       BoldText(
//         text: "v",
//         selectionColor: AppColors.blueColor,
//         fontSize: 24 * scaleFactor,
//       ),

//       // Center aligned "Session"
//       Expanded(
//         child: Center(
//           child: BoldText(
//             text: "Session",
//             fontSize: 18 * scaleFactor,
//             selectionColor: AppColors.whiteColor,
//           ),
//         ),
//       ),
//     ],
//   ),
// )

//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
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
                        Expanded(
                          child: Center(
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: 169 * scaleFactor,
                                  child: Container(
                                    width: 90 * scaleFactor,
                                    height: 37 * scaleFactor,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16 * scaleFactor,
                                        vertical: 6 * scaleFactor),
                                    decoration: BoxDecoration(
                                      color: AppColors.forwardColor,
                                      borderRadius:
                                          BorderRadius.circular(20 * scaleFactor),
                                    ),
                                    child: Center(
                                      child: BoldText(
                                        text: "Player",
                                        selectionColor: AppColors.whiteColor,
                                        fontSize: 18 * scaleFactor,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 65 * scaleFactor,
                                  child: BoldText(
                                    text: "Add New",
                                    fontSize: 24 * scaleFactor,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Image.asset(
                  Appimages.group,
                  width: 208 * scaleFactor,
                  height: 181 * scaleFactor,
                ),
                SizedBox(height: 10 * scaleFactor),
                LoginTextfield(
                  text: "Enter Player Name",
                  fontsize: 18 * scaleFactor,
                ),
                SizedBox(height: 9 * scaleFactor),
                LoginTextfield(
                  text: "Enter Player Email Address",
                  fontsize: 18 * scaleFactor,
                ),
                SizedBox(height: 9 * scaleFactor),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 * scaleFactor),
                  height: 70 * scaleFactor,
                  width: 337 * scaleFactor,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25 * scaleFactor),
                    border: Border.all(
                      color: AppColors.selectLangugaeColor.withOpacity(0.1),
                      width: 2 * scaleFactor,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoldText(
                        text: "Role",
                        fontSize: 18 * scaleFactor,
                      ),
                      Row(
                        children: [
                          BoldText(
                            text: "Facilitator",
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
                SizedBox(height: 40 * scaleFactor),
                LoginButton(
                  text: "Save",
                  ishow: true,
                  image: Appimages.save,
                ),
                SizedBox(height: 13 * scaleFactor),
                LoginButton(
                  text: "Cancel",
                  color: AppColors.forwardColor,
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}