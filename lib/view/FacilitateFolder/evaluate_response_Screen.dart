// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/components/analysis_container.dart';
// import 'package:scorer/components/audio_container.dart';
// import 'package:scorer/components/feedback_container.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/startscreen/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/custom_response_container.dart';
// import 'package:scorer/widgets/custom_sloder_row.dart';
// import 'package:scorer/widgets/login_button.dart';
// import 'package:scorer/widgets/main_text.dart';

// class EvaluateResponseScreen extends StatelessWidget {
//   const EvaluateResponseScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//       final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;

//     // A base height and width to scale from, e.g., a common phone (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Padding(
//         padding:  EdgeInsets.symmetric(horizontal: 30),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//              SizedBox(
//   height: 50,
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       Align(
//         alignment: Alignment.centerLeft,
//         child: SvgPicture.asset(
//           Appimages.arrowback,
//           colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//           width: 24 * widthScaleFactor,
//           height: 20 * heightScaleFactor,
//         ),
//       ),
//       Center(
//         child: BoldText(
//           text: "Evaluate Response",
//           selectionColor: AppColors.blueColor,
//         ),
//       ),
//     ],
//   ),
// ),
//                         SizedBox(height: 27,),
            
//               CustomResponseContainer(
//                 ishow1: false,
//                 containerHeight: 175,
//                   color1: AppColors.forwardColor,
//                   text1: "View Score",
//                   image: Appimages.eye,
//                   text: "Scored",
//                   ishow: true,
//                   textColor: AppColors.whiteColor,
                  
//                       ),
//                       SizedBox(height: 12,),
//                       BoldText(text: "Relevance threshold: >80%",fontSize: 16,selectionColor: AppColors.forwardColor,),
//                      SizedBox(height: 121,),
//                       FeedbackContainer(),
//           SizedBox(height: 12,),
//                    AudioContainer(),
//           SizedBox(height: 12,),

//                    AnalysisContainer(),
//           SizedBox(height: 12,),
// Container(
//   height: 700,
//   width: 330,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(24),
//     // color: AppColors.greyColor
//     border: Border.all(color: AppColors.greyColor,width: 1.5)
//   ),
//   child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 17),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 20,),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   BoldText(text: "Team Response",fontSize: 16,selectionColor: AppColors.blueColor,),
//                                   SizedBox(height: 25,),
//                                   Row(
//                                     children: [
//                                       Image.asset(Appimages.timeout2,height: 19,width: 19,),
//                                       MainText(text: "2 min read",fontSize: 14,color: AppColors.teamColor,)
//                                     ],
//                                   )
//                                 ],
//                               ),
//                               SizedBox(height: 20,),
//                               MainText(text: "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",fontSize: 14,height: 1.2,)
//     ,SizedBox(height: 20,),
//                                   BoldText(text: "Key Strategies:",fontSize: 16,selectionColor: AppColors.blueColor,),
//                                   SizedBox(height: 20,),
//                               MainText(text: "Implement real-time feedback system: Deploy customer feedback tools at every service interaction point to capture immediate responses and identify pain points quickly.",fontSize: 14,height: 1.2,)
//                             ,SizedBox(height: 20,)
//                              , MainText(text: "Reduce response time to under 2 hours: Streamline our support processes and implement automated routing to ensure faster resolution of customer inquiries.",fontSize: 14,height: 1.2,)
//                             ,SizedBox(height: 20,)

//                              , MainText(text: "Enhance self-service capabilities: comprehensive FAQ sections, video tutorials, and chatbot assistance to empower customers to resolve common issues independently.",fontSize: 14,height: 1.2,)
//  ,SizedBox(height: 20,)

//                              , MainText(text: "These strategies align with our company's customer-centric approach and will be measured through monthly satisfaction surveys, response time analytics, and self-service adoption rates.",fontSize: 14,height: 1.2,)




//       ],
//     ),
//   ),
// )
// ,
// SizedBox(height: 12,),
// Container(
//   height: 236,
//   width: 336,
//   decoration: BoxDecoration(
//     border: Border.all(color: AppColors.greyColor,width: 1.7),
//     borderRadius: BorderRadius.circular(24),
//   ),
//   child: Padding(
//     padding:  EdgeInsets.only(left: 17,right: 15),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 20,),
//         BoldText(text: "Scoring Breakdown",selectionColor: AppColors.blueColor,fontSize: 16,),
//         SizedBox(height: 31,),
//       CustomSloderRow(text: "Clarity & Specificity", text2: "22/25"),
//       SizedBox(height: 5,),
//       CustomSloderRow(text: "Strategic Thinking", text2: "22/25"),
//       SizedBox(height: 5,),


//       CustomSloderRow(text: "Feasibility", text2: "22/25"),
//       SizedBox(height: 5,),

//       CustomSloderRow(text: "Innovation", text2: "22/25"),


      
//             ],
//     ),
//   ),
// ),

// SizedBox(height: 26,),
// LoginButton(text: "Accept AI Score (85)",color: AppColors.forwardColor,image: Appimages.ai2,ishow: true,imageHeight: 38,imageWidth: 32,height: 74,),
// SizedBox(height: 23,),
// LoginButton(text: "Manual Overwrite",ishow: true,imageHeight: 38,imageWidth: 32,icon: Icons.edit,height: 74,),
// SizedBox(height: 23,),


//             ],
//           ),
//         ),
//       ))),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/analysis_container.dart';
import 'package:scorer/components/audio_container.dart';
import 'package:scorer/components/feedback_container.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/custom_response_container.dart';
import 'package:scorer/widgets/custom_sloder_row.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';

class EvaluateResponseScreen extends StatelessWidget {
  const EvaluateResponseScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * widthScaleFactor),

                // padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                  height: 50,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          Appimages.arrowback,
                          colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
                          width: 24 * widthScaleFactor,
                          height: 20 * heightScaleFactor,
                        ),
                      ),
                      Center(
                        child: BoldText(
                           text: "evaluate_response".tr,
                          selectionColor: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
                      SizedBox(height: 27 * heightScaleFactor),
                     CustomResponseContainer(
  ishow1: false,
  containerHeight: 175 * heightScaleFactor,
  color1: AppColors.forwardColor,
  text1: "view_score".tr,
  image: Appimages.eye,
  text: "scored".tr,
  ishow: true,
  textColor: AppColors.whiteColor,
),
                      SizedBox(height: 12 * heightScaleFactor),
                      BoldText(
                         text: "relevance_threshold".tr,

                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.forwardColor,
                      ),
                      SizedBox(height: 121 * heightScaleFactor),
                      FeedbackContainer(),
                      SizedBox(height: 12 * heightScaleFactor),
                      AudioContainer(),
                      SizedBox(height: 12 * heightScaleFactor),
                      AnalysisContainer(
// height: 400,

                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      Container(
                        height: 700 * heightScaleFactor,
                        width: 330 * widthScaleFactor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                          border: Border.all(color: AppColors.greyColor, width: 1.5 * widthScaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17 * widthScaleFactor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20 * heightScaleFactor),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(
                                   text: "team_response".tr,
                                    fontSize: 16 * widthScaleFactor,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                  SizedBox(height: 25 * heightScaleFactor),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Appimages.timeout2,
                                        height: 19 * heightScaleFactor,
                                        width: 19 * widthScaleFactor,
                                      ),
                                      MainText(
                                        text: "2 min read",
                                        fontSize: 14 * widthScaleFactor,
                                        color: AppColors.teamColor,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                            
BoldText(
  text: "key_strategies".tr,
  fontSize: 16 * widthScaleFactor,
  selectionColor: AppColors.blueColor,
),
                              SizedBox(height: 20 * heightScaleFactor),
                             MainText(
  text: "feedback_system".tr,
  fontSize: 14 * widthScaleFactor,
  height: 1.2,
),
                              SizedBox(height: 20 * heightScaleFactor),
                             MainText(
  text: "reduce_response_time".tr,
  fontSize: 14 * widthScaleFactor,
  height: 1.2,
),
                              SizedBox(height: 20 * heightScaleFactor),
                             MainText(
  text: "enhance_self_service".tr,
  fontSize: 14 * widthScaleFactor,
  height: 1.2,
),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
  text: "alignment".tr,
  fontSize: 14 * widthScaleFactor,
  height: 1.2,
),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      Container(
                        height: 210 * heightScaleFactor,
                        width: 336 * widthScaleFactor,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 17 * widthScaleFactor, right: 15 * widthScaleFactor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20 * heightScaleFactor),
                            BoldText(
  text: "scoring_breakdown".tr,
  fontSize: 16 * widthScaleFactor,
  selectionColor: AppColors.blueColor,
),
                              SizedBox(height: 31 * heightScaleFactor),
CustomSloderRow(
  fontSize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 13*widthScaleFactor,
    smallSize: 11*widthScaleFactor
  ),

  text: "clarity_specificity".tr, text2: "22/25"),
                              SizedBox(height: 5 * heightScaleFactor),
CustomSloderRow(
 fontSize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 13*widthScaleFactor,
    smallSize: 11*widthScaleFactor
  ),
  
  text: "strategic_thinking".tr, text2: "22/25"),
                              SizedBox(height: 5 * heightScaleFactor),
CustomSloderRow(
  fontSize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 13*widthScaleFactor,
    smallSize: 11*widthScaleFactor
  ),
  text: "feasibility".tr, text2: "22/25"),
                              SizedBox(height: 5 * heightScaleFactor),
CustomSloderRow(
  // fontSize: (Get.locale?.languageCode == 'fr' || Get.locale?.languageCode == 'es')? 11:14,
fontSize:  ResponsiveFont.getFontSizeCustom(
defaultSize:14 *widthScaleFactor,
smallSize: 11*widthScaleFactor


),
  
  text: "innovation".tr, text2: "22/25"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 26 * heightScaleFactor),
                      LoginButton(
                        text:  "accept_ai_score".tr,
                        fontSize: 18,
                        color: AppColors.forwardColor,
                        image: Appimages.ai2,
                        ishow: true,
                        imageHeight: 38 * heightScaleFactor,
                        imageWidth: 32 * widthScaleFactor,
                        // height: 74 * heightScaleFactor,
                      ),
                      SizedBox(height: 15 * heightScaleFactor),
                      LoginButton(
                        fontSize: 18,
                          
                        text:  "manual_overwrite".tr,
                        ishow: true,
                        imageHeight: 32 * heightScaleFactor,
                        imageWidth: 32 * widthScaleFactor,
                        icon: Icons.edit,
                        // height: 74 * heightScaleFactor,
                      ),
                      SizedBox(height: 23 * heightScaleFactor),
                    ],
                  ),
                ),
              ),
               Positioned(
                    right: 0,
                    top: screenHeight * 0.2,
                    child: TeamAlphaContainer(screenWidth: screenWidth, screenHeight: screenHeight),
                  ),
          
                  /// Player Image
                
                
            ],
          ),
        ),
      ),
    );
  }
}