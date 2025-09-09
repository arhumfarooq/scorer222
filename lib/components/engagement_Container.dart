import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/pause_container.dart';
import 'package:scorer/widgets/useable_container.dart';
class EngagementContainer extends StatelessWidget {
  const EngagementContainer({
    super.key,
    required this.widthScaleFactor,
    required this.heightScaleFactor,
  });

  final double widthScaleFactor;
  final double heightScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // left: 8 * widthScaleFactor,
        right: 23* widthScaleFactor,
      ),
      child: Row(
        children: [
          Image.asset(
            Appimages.group,
            height: 116 * heightScaleFactor,
            width: 170 * widthScaleFactor,
          ),
          SizedBox(width: 3 * widthScaleFactor),
          Flexible(
            child: Container(
              width: 248 * widthScaleFactor,
              height: 116 * heightScaleFactor,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyColor, width: 1.5),
                borderRadius: BorderRadius.circular(24 * widthScaleFactor),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  // vertical: 20 * heightScaleFactor,
                  left: 10 * widthScaleFactor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        BoldText(
                          text: "12",
                          selectionColor: AppColors.forwardColor,
                          fontSize: 22 * heightScaleFactor,
                        ),
                        SizedBox(width: 8 * widthScaleFactor),
                        Container(
                          width: 40 * widthScaleFactor,
                          height: 2,
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 6 * widthScaleFactor),
                       Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown, // text ko shrink karega agar jagah kam ho
        alignment: Alignment.centerLeft, // left align rakhega
        child: BoldText(
          text: "Active Players",
          selectionColor: AppColors.blueColor,
          fontSize: 16 * heightScaleFactor,
        ),
      ),
    ),
    
                      ],
                    ),
                    SizedBox(height: 10 * heightScaleFactor),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BoldText(
                          text: "89%",
                          selectionColor: AppColors.forwardColor,
                          fontSize: 22 * heightScaleFactor,
                        ),
                        SizedBox(width: 6 * widthScaleFactor),
                        Container(
                          width: 35 * widthScaleFactor,
                          height: 2,
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 5 * widthScaleFactor),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown, // text ko shrink karega agar jagah kam ho
        alignment: Alignment.centerLeft,
                            child: BoldText(
                              text: "Engagement",
                              selectionColor: AppColors.blueColor,
                              fontSize: 16 * heightScaleFactor,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        
    //             Container(
    //   width: widthScaleFactor * 0.5, // 50% of screen width, responsive
    //   height: 116 * heightScaleFactor,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: AppColors.greyColor, width: 1.5),
    //     borderRadius: BorderRadius.circular(24 * widthScaleFactor),
    //   ),
    //   padding: EdgeInsets.symmetric(
    //     vertical: 20 * heightScaleFactor,
    //     horizontal: 14 * widthScaleFactor,
    //   ),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       /// Row 1
    //       Row(
    //         children: [
    //           BoldText(
    //             text: "12",
    //             selectionColor: AppColors.forwardColor,
    //             fontSize: 22 * heightScaleFactor,
    //           ),
    //           SizedBox(width: 6 * widthScaleFactor),
    
    //           Expanded(
    //             child: Container(
    //               height: 2,
    //               decoration: BoxDecoration(
    //                 color: AppColors.orangeColor,
    //                 borderRadius: BorderRadius.circular(2),
    //               ),
    //             ),
    //           ),
    //           SizedBox(width: 6 * widthScaleFactor),
    
    //           BoldText(
    //             text: "Active Players",
    //             selectionColor: AppColors.blueColor,
    //             fontSize: 14 * heightScaleFactor,
    //           ),
    //         ],
    //       ),
    
    //       /// Row 2
    //       Row(
    //         children: [
    //           BoldText(
    //             text: "89%",
    //             selectionColor: AppColors.forwardColor,
    //             fontSize: 22 * heightScaleFactor,
    //           ),
    //           SizedBox(width: 6 * widthScaleFactor),
    
    //           Expanded(
    //             child: Container(
    //               height: 2,
    //               decoration: BoxDecoration(
    //                 color: AppColors.orangeColor,
    //                 borderRadius: BorderRadius.circular(2),
    //               ),
    //             ),
    //           ),
    //           SizedBox(width: 6 * widthScaleFactor),
    
    //           BoldText(
    //             text: "Engagement",
    //             selectionColor: AppColors.blueColor,
    //             fontSize: 14 * heightScaleFactor,
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // )
    
        ],
      ),
    );
  }
}
