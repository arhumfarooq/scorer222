// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/add_one_Container.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/create_container.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/setting_container.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class GameScreenAdminSide extends StatelessWidget {
//   const GameScreenAdminSide({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 30 ,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Image.asset(
//                                 Appimages.prince2,
//                                 width: 62 ,
//                                 height: 83 ,
//                               ),
//                               Row(
//                                 children: [
//                                   SettingContainer(icons: Icons.settings),
//                                   SizedBox(width: 6 ),
//                                   SettingContainer(
//                                     icons: Icons.notifications,
//                                     ishow: true,
//                                   ),
//                                   SizedBox(width: 6 ),
//                                   AddOneContainer(icon: Icons.add),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(right: 21 ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(""),
//                           CreateContainer(text: "Create New",width: 100,),
//                         ],
//                       ),
//                     ),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(horizontal: 30),
//                      child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                          BoldText(
//                        text: "Users Management",
//                        fontSize: 16 ,
//                        selectionColor: AppColors.blueColor,
//                                             ),
//                                             MainText(
//                        text: "Securely manage roles, permissions,\nand access.",
//                        fontSize: 14 ,
//                        height: 1.4,
//                                             ),
//           SizedBox(height: 40,),
          
//                                          GameUseAbleContainer()  ,
//                                          SizedBox(height: 12,) ,
//                                           GameUseAbleContainer()  ,
//                                          SizedBox(height: 12,),
//                                           GameUseAbleContainer()  ,
//                                          SizedBox(height: 12,),
//                                           GameUseAbleContainer()  ,
//                                          SizedBox(height: 12,),
//                                           GameUseAbleContainer()  ,
//                                          SizedBox(height: 52,)
//                       ],
//                      ),
//                    )
                  
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }

// class GameUseAbleContainer extends StatelessWidget {
//   const GameUseAbleContainer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      width: 335,
//      height: 184,
//      decoration: BoxDecoration(
//        border: Border.all(color: AppColors.greyColor,width: 1.5),
//        borderRadius: BorderRadius.circular(12)
//      ),
//      child: Stack(
//        clipBehavior: Clip.none,
//        children: [
//     Positioned(
//       top: 10,
//       left: -20,
//       child: Image.asset(Appimages.game,width: 55,height: 55,)),
//          Padding(
//            padding: const EdgeInsets.only(left: 40,right: 20),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                SizedBox(height: 17,),
//                MainText(text: "Odyssée des OKR",fontSize: 14,),
//                SizedBox(height: 5,),
    
//                MainText(text: "Objective & Key Result alignment through decision-making",fontSize: 14,height: 1.3,color: AppColors.teamColor,),
//                SizedBox(height: 8,),
             
//                Row(
//                  children: [
//                    UseableContainer(text: "AI-based",color: AppColors.orangeColor,width: 72,),
//                    SizedBox(width: 7,),
//                    UseableContainer(text: "Active",color: AppColors.forwardColor,)
//                  ],
//                ),
//     SizedBox(height: 18,),
//            Row(
//              children: [
//                    Row(
//                       children: [
//                         Image.asset(
//                           Appimages.player2,
//                           height: 28 ,
//                           width: 26 ,
//                         ),
//                         MainText(
//                           text: "12 Players",
//                           fontSize: 12 ,
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 9 ),
//                 Row(
//             children: [
         
//                 Image.asset(
//                Appimages.timeout2,
//                   height: 28,
//                   width: 26 ,
//                 ),
            
          
//               SizedBox(width: 6 ),
          
//               MainText(
//                 text: "60 min duration",
//                 fontSize: 12 ,
//                 color: AppColors.redColor,
//               ),
//             ],
//           )
//              ],
//            )
//              ],
//            ),
//          )
//        ],
//      ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/add_one_Container.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/setting_container.dart';
import 'package:scorer/widgets/useable_container.dart';

class GameScreenAdminSide extends StatelessWidget {
  const GameScreenAdminSide({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    const double baseWidth = 414.0;
    const double baseHeight = 812.0;
    final double widthScaleFactor = screenWidth / baseWidth;
    final double heightScaleFactor = screenHeight / baseHeight;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30 * widthScaleFactor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(width: 6 * widthScaleFactor),
                              AddOneContainer(icon: Icons.add),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30 * widthScaleFactor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(""),
                      CreateContainer(
                        text: "Create New",
                        width: 100 * widthScaleFactor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(
                        text: "Users Management",
                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.blueColor,
                      ),
                      MainText(
                        text: "Securely manage roles, permissions,\nand access.",
                        fontSize: 14 * widthScaleFactor,
                        height: 1.4,
                      ),
                      SizedBox(height: 40 * heightScaleFactor),
                      GameUseAbleContainer(
                        widthScaleFactor: widthScaleFactor,
                        heightScaleFactor: heightScaleFactor,
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      GameUseAbleContainer(
                        widthScaleFactor: widthScaleFactor,
                        heightScaleFactor: heightScaleFactor,
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      GameUseAbleContainer(
                        widthScaleFactor: widthScaleFactor,
                        heightScaleFactor: heightScaleFactor,
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      GameUseAbleContainer(
                        widthScaleFactor: widthScaleFactor,
                        heightScaleFactor: heightScaleFactor,
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      GameUseAbleContainer(
                        widthScaleFactor: widthScaleFactor,
                        heightScaleFactor: heightScaleFactor,
                      ),
                      SizedBox(height: 52 * heightScaleFactor),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GameUseAbleContainer extends StatelessWidget {
  final double widthScaleFactor;
  final double heightScaleFactor;

  const GameUseAbleContainer({
    super.key,
    required this.widthScaleFactor,
    required this.heightScaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 335 * widthScaleFactor,
      width: double.infinity,
      height: 184 * heightScaleFactor,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5 * widthScaleFactor,
        ),
        borderRadius: BorderRadius.circular(12 * widthScaleFactor),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 10 * heightScaleFactor,
            left: -20 * widthScaleFactor,
            child: Image.asset(
              Appimages.game,
              width: 55 * widthScaleFactor,
              height: 55 * heightScaleFactor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40 * widthScaleFactor,
              right: 20 * widthScaleFactor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17 * heightScaleFactor),
                MainText(
                  text: "Odyssée des OKR",
                  fontSize: 14 * widthScaleFactor,
                ),
                SizedBox(height: 5 * heightScaleFactor),
                MainText(
                  text: "Objective & Key Result alignment through decision-making",
                  fontSize: 14 * widthScaleFactor,
                  height: 1.3,
                  color: AppColors.teamColor,
                ),
                SizedBox(height: 8 * heightScaleFactor),
                Row(
                  children: [
                    UseableContainer(
                      height: 26,
                      text: "AI-based",
                      color: AppColors.orangeColor,
                      width: 72 * widthScaleFactor,
                    ),
                    SizedBox(width: 7 * widthScaleFactor),
                    UseableContainer(
                      text: "Active",height: 26,
                      color: AppColors.forwardColor,
                    )
                  ],
                ),
                SizedBox(height: 18 * heightScaleFactor),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Appimages.player2,
                          height: 28 * heightScaleFactor,
                          width: 26 * widthScaleFactor,
                        ),
                        MainText(
                          text: "12 Players",
                          fontSize: 12 * widthScaleFactor,
                        ),
                      ],
                    ),
                    SizedBox(width: 9 * widthScaleFactor),
                    Row(
                      children: [
                        Image.asset(
                          Appimages.timeout2,
                          height: 28 * heightScaleFactor,
                          width: 26 * widthScaleFactor,
                        ),
                        SizedBox(width: 6 * widthScaleFactor),
                        MainText(
                          text: "60 min duration",
                          fontSize: 12 * widthScaleFactor,
                          color: AppColors.redColor,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}