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
// import 'package:scorer/widgets/useable_container.dart';

// class EvaluateResponseScreen2 extends StatelessWidget {
//   const EvaluateResponseScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//        final Size screenSize = MediaQuery.of(context).size;
//     final double screenHeight = screenSize.height;
//     final double screenWidth = screenSize.width;

//     // A base height and width to scale from, e.g., a common phone (iPhone 11)
//     const double baseHeight = 812.0;
//     const double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;

//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//                SizedBox(
//                     height: 50 * heightScaleFactor,
//                     child: Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: SvgPicture.asset(
//                             Appimages.arrowback,
//                             colorFilter: ColorFilter.mode(AppColors.forwardColor, BlendMode.srcIn),
//                             width: 24 * widthScaleFactor,
//                             height: 20 * heightScaleFactor,
//                           ),
//                         ),
//                         Center(
//                           child: BoldText(
//                             text: "Evaluate Response",
//                             selectionColor: AppColors.blueColor,
//                             fontSize: 16 * widthScaleFactor,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                              SizedBox(height: 27,),
              
//                 CustomResponseContainer(
//                   ishow1: false,
//                   containerHeight: 171,
//                     color1: AppColors.yellowColor,
//                     text1: "View Score",
//                     image: Appimages.eye,
//                     text: "Pending",
//                     ishow: true,
//                     textColor: AppColors.languageTextColor,
                    
//                         ),
//                          SizedBox(height: 12,),
//                         BoldText(text: "Relevance threshold: >80%",fontSize: 16,selectionColor: AppColors.forwardColor,),
//                        SizedBox(height: 22,),
//                        Container(
//                         height: 630,
//                         width: 376,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor,width: 1.7),
//                           borderRadius: BorderRadius.circular(24)
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: Column(
//                             children: [
//                               SizedBox(height: 20,),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   BoldText(text: "Your Evaluation",selectionColor: AppColors.blueColor,fontSize: 16,),
//                                   UseableContainer(text: "Completed",width:75,color: AppColors.forwardColor,)
//                                 ],
//                               ),
//                               SizedBox(height: 25,),

//                               Container(
//                                 height: 74,
//                                 width: 337,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: AppColors.greyColor,width: 1.7),
//                                   borderRadius: BorderRadius.circular(24)
//                                 ),
//                                 child: Padding(
//                                   padding:  EdgeInsets.only(left: 19,top: 22),
//                                   child: BoldText(text: "85",fontSize: 22,),
//                                 ),
//                               ),
//                               SizedBox(height: 15,),

//                               Container(
//                                 height: 209,
//                                 width: 337,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: AppColors.greyColor,width: 1.7),
//                                   borderRadius: BorderRadius.circular(24)
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(horizontal: 19),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       SizedBox(height: 20,),
//                                       BoldText(text: "Feedback (Optional)",fontSize: 20,),
//                                       SizedBox(height: 6,),
//                                       MainText(
//                                         fontSize: 14,height: 1.1,
//                                         text: """"Excellent strategic thinking with a comprehensive digital transformation approach. The timeline is realistic and the  three-phase implementation shows strong project management skills. Great work on considering both technical and human aspects.'""")
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 15,),
//                               Container(
//   height: 220,
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
//       CustomSloderRow(text: "Clarity & Specificity", text2: "22/25",fontSize: 12,width: 62,height: 3,),
//       SizedBox(height: 5,),
//       CustomSloderRow(text: "Strategic Thinking", text2: "22/25",fontSize: 12,width: 62,height: 3),
//       SizedBox(height: 5,),


//       CustomSloderRow(text: "Feasibility", text2: "22/25",fontSize: 12,width: 62,height: 3),
//       SizedBox(height: 5,),

//       CustomSloderRow(text: "Innovation", text2: "22/25",fontSize: 12,width: 62,height: 3),


      
//             ],
//     ),
//   ),
// ),

//                             ],
//                           ),
//                         ),
//                        ),
//                         SizedBox(height: 12,),
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
// SizedBox(height: 200,),
// FeedbackContainer(ishow: true,),
// SizedBox(height: 12,),
// AudioContainer(),
// SizedBox(height: 12,),
// AnalysisContainer(),
// SizedBox(height: 26,),
// LoginButton(text: "Accept AI Score (85)",color: AppColors.forwardColor,image: Appimages.ai2,ishow: true,imageHeight: 38,imageWidth: 32,height: 74,),
// SizedBox(height: 23,),
// LoginButton(text: "Move to Next Stage",ishow: true,imageHeight: 22,imageWidth: 26,icon: Icons.fast_forward,height: 74,),
// SizedBox(height: 23,),
// LoginButton(text: "Export PDF",ishow: true,imageHeight: 18,imageWidth: 18,image: Appimages.export,height: 74,color: AppColors.redColor ,),
// SizedBox(height: 23,),
// LoginButton(text: "Edit Score & Feedback",ishow: true,imageHeight: 22,imageWidth: 22,icon: Icons.edit,height: 74,color: AppColors.orangeColor ,),




//                        SizedBox(height: 100,)
               
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
import 'package:scorer/components/team_Alpha_Container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/custom_response_container.dart';
import 'package:scorer/widgets/custom_sloder_row.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class EvaluateResponseScreen2 extends StatelessWidget {
  const EvaluateResponseScreen2({super.key});

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
                          text: "Evaluate Response",
                          selectionColor: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ), SizedBox(height: 27 * heightScaleFactor),
                      CustomResponseContainer(
                        ishow1: false,
                        containerHeight: 171 * heightScaleFactor,
                        color1: AppColors.yellowColor,
                        text1: "View Score",
                        image: Appimages.eye,
                        text: "Pending",
                        ishow: true,
                        textColor: AppColors.languageTextColor,
                      ),
                      SizedBox(height: 12 * heightScaleFactor),
                      BoldText(
                        text: "Relevance threshold: >80%",
                        fontSize: 16 * widthScaleFactor,
                        selectionColor: AppColors.forwardColor,
                      ),
                      SizedBox(height: 22 * heightScaleFactor),
                      Container(
                        height: 630 * heightScaleFactor,
                        width: 376 * widthScaleFactor,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                          borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20 * widthScaleFactor),
                          child: Column(
                            children: [
                              SizedBox(height: 20 * heightScaleFactor),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(
                                    text: "Your Evaluation",
                                    selectionColor: AppColors.blueColor,
                                    // fontSize: 16 * widthScaleFactor,
                                  ),
                                  UseableContainer(
                                    text: "Completed",
                                    width: 83 * widthScaleFactor,
                                    color: AppColors.forwardColor,
                                  )
                                ],
                              ),
                              SizedBox(height: 25 * heightScaleFactor),
                              Container(
                                height: 74 * heightScaleFactor,
                                width: 337 * widthScaleFactor,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                                  borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 19 * widthScaleFactor, top: 22 * heightScaleFactor),
                                  child: BoldText(
                                    text: "85",
                                    fontSize: 22 * widthScaleFactor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15 * heightScaleFactor),
                              Container(
                                height: 209 * heightScaleFactor,
                                width: 337 * widthScaleFactor,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.greyColor, width: 1.7 * widthScaleFactor),
                                  borderRadius: BorderRadius.circular(24 * widthScaleFactor),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 19 * widthScaleFactor),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20 * heightScaleFactor),
                                      BoldText(
                                        text: "Feedback (Optional)",
                                        fontSize: 20 * widthScaleFactor,
                                      ),
                                      SizedBox(height: 6 * heightScaleFactor),
                                      MainText(
                                        fontSize: 14 * widthScaleFactor,
                                        height: 1.1,
                                        text: """"Excellent strategic thinking with a comprehensive digital transformation approach. The timeline is realistic and the  three-phase implementation shows strong project management skills. Great work on considering both technical and human aspects.'"""
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15 * heightScaleFactor),
                              Container(
                                height: 220 * heightScaleFactor,
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
                                        text: "Scoring Breakdown",
                                        selectionColor: AppColors.blueColor,
                                        fontSize: 16 * widthScaleFactor,
                                      ),
                                      SizedBox(height: 31 * heightScaleFactor),
                                      CustomSloderRow(
                                        text: "Clarity & Specificity",
                                        text2: "22/25",
                                        fontSize: 12 * widthScaleFactor,
                                        width: 62 * widthScaleFactor,
                                        height: 3 * heightScaleFactor,
                                      ),
                                      SizedBox(height: 5 * heightScaleFactor),
                                      CustomSloderRow(
                                        text: "Strategic Thinking",
                                        text2: "22/25",
                                        fontSize: 12 * widthScaleFactor,
                                        width: 62 * widthScaleFactor,
                                        height: 3 * heightScaleFactor,
                                      ),
                                      SizedBox(height: 5 * heightScaleFactor),
                                      CustomSloderRow(
                                        text: "Feasibility",
                                        text2: "22/25",
                                        fontSize: 12 * widthScaleFactor,
                                        width: 62 * widthScaleFactor,
                                        height: 3 * heightScaleFactor,
                                      ),
                                      SizedBox(height: 5 * heightScaleFactor),
                                      CustomSloderRow(
                                        text: "Innovation",
                                        text2: "22/25",
                                        fontSize: 12 * widthScaleFactor,
                                        width: 62 * widthScaleFactor,
                                        height: 3 * heightScaleFactor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                                    text: "Team Response",
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
                                text: "Key Strategies:",
                                fontSize: 16 * widthScaleFactor,
                                selectionColor: AppColors.blueColor,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "Implement real-time feedback system: Deploy customer feedback tools at every service interaction point to capture immediate responses and identify pain points quickly.",
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "Reduce response time to under 2 hours: Streamline our support processes and implement automated routing to ensure faster resolution of customer inquiries.",
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "Enhance self-service capabilities: comprehensive FAQ sections, video tutorials, and chatbot assistance to empower customers to resolve common issues independently.",
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                              SizedBox(height: 20 * heightScaleFactor),
                              MainText(
                                text: "These strategies align with our company's customer-centric approach and will be measured through monthly satisfaction surveys, response time analytics, and self-service adoption rates.",
                                fontSize: 14 * widthScaleFactor,
                                height: 1.2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 200 * heightScaleFactor),
                      FeedbackContainer(ishow: true),
                      SizedBox(height: 12 * heightScaleFactor),
                      AudioContainer(),
                      SizedBox(height: 12 * heightScaleFactor),
                      AnalysisContainer(),
                      SizedBox(height: 26 * heightScaleFactor),
                      LoginButton(
                        onTap: () {
                  Get.toNamed(RouteName.viewScoreScreen);
                },
                        text: "Accept AI Score (85)",
                        color: AppColors.forwardColor,
                        image: Appimages.ai2,
                        ishow: true,
                        fontSize: 18,
                          
                        imageHeight: 38 * heightScaleFactor,
                        imageWidth: 32 * widthScaleFactor,
                        height: 74 * heightScaleFactor,
                      ),
                      SizedBox(height: 23 * heightScaleFactor),
                      LoginButton(
                        onTap: () {
                  Get.toNamed(RouteName.overViewOptionScreen);
                },
                        text: "Move to Next Stage",
                        ishow: true,
                          
                        imageHeight: 22 * heightScaleFactor,
                        imageWidth: 26 * widthScaleFactor,
                        icon: Icons.fast_forward,
                        height: 74 * heightScaleFactor,
                        fontSize: 18,
                          
                      ),
                      SizedBox(height: 23 * heightScaleFactor),
                      LoginButton(
                        fontSize: 18,
                          
                        text: "Export PDF",
                        ishow: true,
                        imageHeight: 18 * heightScaleFactor,
                        imageWidth: 18 * widthScaleFactor,
                        image: Appimages.export,
                        height: 74 * heightScaleFactor,
                        color: AppColors.redColor,
                      ),
                      SizedBox(height: 23 * heightScaleFactor),
                      LoginButton(
                        text: "Edit Score & Feedback",
                        fontSize: 18,
                        ishow: true,
                        imageHeight: 22 * heightScaleFactor,
                        imageWidth: 22 * widthScaleFactor,
                        icon: Icons.edit,
                        height: 74 * heightScaleFactor,
                        color: AppColors.orangeColor,
                      ),
                      SizedBox(height: 100 * heightScaleFactor)
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