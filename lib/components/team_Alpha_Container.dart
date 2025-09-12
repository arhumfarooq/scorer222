
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_svg/flutter_svg.dart';
// // // import 'package:get/get.dart';
// // // import 'package:scorer/components/stages_row.dart';
// // // import 'package:scorer/constants/appcolors.dart';
// // // import 'package:scorer/constants/appimages.dart';
// // // import 'package:scorer/constants/routename.dart';
// // // import 'package:scorer/controllers/stage_controllers.dart';
// // // import 'package:scorer/widgets/bold_text.dart';
// // // import 'package:scorer/widgets/create_container.dart';
// // // import 'package:scorer/widgets/custom_stratgy_container.dart';
// // // import 'package:scorer/widgets/login_button.dart';
// // // import 'package:scorer/widgets/main_text.dart';
// // // import 'package:scorer/widgets/pause_container.dart';
// // // import 'package:scorer/widgets/players_container.dart';
// // // import 'package:scorer/widgets/useable_container.dart';
// // // import 'package:scorer/widgets/useable_textrow.dart';
// // // class TeamAlphaContainer extends StatelessWidget {
// // //   const TeamAlphaContainer({
// // //     super.key,
// // //     required this.screenWidth,
// // //     required this.screenHeight,
// // //   });

// // //   final double screenWidth;
// // //   final double screenHeight;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       width: screenWidth * 0.4,
// // //       height: screenHeight * 0.08,
// // //       decoration: BoxDecoration(
// // //         borderRadius: BorderRadius.only(
// // //           topLeft: Radius.circular(screenWidth * 0.03),
// // //           bottomLeft: Radius.circular(screenWidth * 0.03),
// // //         ),
// // //         color: AppColors.forwardColor,
// // //       ),
// // //       child: Column(
// // //         children: [
// // //           Padding(
// // //             padding: EdgeInsets.only(
// // //                 left: screenWidth * 0.1,
// // //                 top: screenHeight * 0.015),
// // //             child: MainText(
// // //               text: "Team Alpha",
// // //               fontFamily: "gotham",
// // //               fontSize: screenWidth * 0.04,
// // //               color: AppColors.whiteColor,
// // //               height: 0,
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: EdgeInsets.only(bottom: screenHeight * 0.003),
// // //             child: Row(
// // //               mainAxisAlignment: MainAxisAlignment.end,
// // //               children: [
// // //                 Icon(Icons.keyboard_arrow_up_outlined,
// // //                     color: AppColors.arrowColor,
// // //                     size: screenWidth * 0.05),
// // //                 MainText(
// // //                   text: "2,890 pts  ",
// // //                   fontFamily: "gotham",
// // //                   fontSize: screenWidth * 0.04,
// // //                   height: 0,
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/widgets/main_text.dart';

// // class TeamAlphaContainer extends StatefulWidget {
// //   final double screenWidth;
// //   final double screenHeight;

// //   const TeamAlphaContainer({
// //     super.key,
// //     required this.screenWidth,
// //     required this.screenHeight,
// //   });

// //   @override
// //   _TeamAlphaContainerState createState() => _TeamAlphaContainerState();
// // }

// // class _TeamAlphaContainerState extends State<TeamAlphaContainer> {
// //   bool isExpanded = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: [
// //         Align(
// //           alignment: Alignment.centerRight,
// //           child: GestureDetector(
// //             onTap: () {
// //               setState(() {
// //                 isExpanded = !isExpanded; // toggle expand/collapse
// //               });
// //             },
// //             child: AnimatedContainer(
// //               duration: Duration(milliseconds: 300),
// //               curve: Curves.easeInOut,
// //               width: isExpanded
// //                   ? widget.screenWidth * 0.4
// //                   : widget.screenWidth * 0.08, // collapsed small box
// //               height
// //                   : widget.screenHeight * 0.06,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.only(
// //                   topLeft: Radius.circular(widget.screenWidth * 0.03),
// //                   bottomLeft: Radius.circular(widget.screenWidth * 0.03),
// //                 ),
// //                 color: AppColors.forwardColor,
// //               ),
// //               child: Stack(
// //                 clipBehavior: Clip.none,
// //                 children: [
// // Positioned(
// //   top: -20,
// //   left: -20,
// //   child: Image.asset(Appimages.man3,
// //   width: 72,
// //   height: 72,
// //   )),

// //                   Column(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       if (isExpanded)
// //                         Padding(
// //                           padding: EdgeInsets.only(
// //                               left: widget.screenWidth * 0.05,
// //                               top: widget.screenHeight * 0.01),
// //                           child: MainText(
// //                             text: "Team Alpha",
// //                             fontFamily: "gotham",
// //                             fontSize: widget.screenWidth * 0.04,
// //                             color: AppColors.whiteColor,
// //                             height: 0,
// //                           ),
// //                         ),
// //                       // Spacer(),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.end,
// //                         children: [
// //                           Icon(
// //                             isExpanded
// //                                 ? Icons.keyboard_arrow_down_outlined
// //                                 : Icons.keyboard_arrow_up_outlined,
// //                             color: AppColors.arrowColor,
// //                             size: widget.screenWidth * 0.05,
// //                           ),
// //                           if (isExpanded)
// //                             MainText(
// //                               text: "2,890 pts",
// //                               fontFamily: "gotham",
// //                               fontSize: widget.screenWidth * 0.04,
// //                               height: 0,
// //                             ),
// //                           SizedBox(width: widget.screenWidth * 0.02),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/main_text.dart';

class TeamAlphaContainer extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  const TeamAlphaContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  _TeamAlphaContainerState createState() => _TeamAlphaContainerState();
}

class _TeamAlphaContainerState extends State<TeamAlphaContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded; // toggle expand/collapse
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              
              width: isExpanded
                  ? widget.screenWidth * 0.4
                  : widget.screenWidth * 0.05, // collapsed small box
              height: widget.screenHeight * 0.07, // fixed height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.screenWidth * 0.03),
                  bottomLeft: Radius.circular(widget.screenWidth * 0.03),
                ),
                color: AppColors.forwardColor,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  if (isExpanded)
                Positioned(
  top: -widget.screenHeight * 0.03,   // ≈ -25 responsive
  left: -widget.screenWidth * 0.06,   // ≈ -25 responsive
  child: Image.asset(
    Appimages.man3,
    width: widget.screenWidth * 0.21, // ≈ 82 responsive
    height: widget.screenWidth * 0.25, // square rakha
  ),
),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isExpanded)
                        Padding(
                          padding: EdgeInsets.only(
                              left: widget.screenWidth * 0.05,
                              top: widget.screenHeight * 0.01),
                          child: MainText(
                            text: "Team Alpha",
                            fontFamily: "gotham",
                            fontSize: widget.screenWidth * 0.04,
                            color: AppColors.whiteColor,
                            height: 0,
                          ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (isExpanded)
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: AppColors.arrowColor,
                              size: widget.screenWidth * 0.05,
                            ),
                          if (isExpanded)
                            MainText(
                              text: "2,890 pts",
                              fontFamily: "gotham",
                              fontSize: widget.screenWidth * 0.04,
                              height: 0,
                            ),
                          SizedBox(width: widget.screenWidth * 0.02),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

