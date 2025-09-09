import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer/components/analysis_container.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
// import 'package:scorer/view/startscreen/aa.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';

import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';

class ViewScoreScreen extends StatelessWidget {
  const ViewScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(child: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(height: 23,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  Appimages.arrowback,
                                  color: AppColors.forwardColor,
                                  width: 24,
                                  height: 20,
                                ),
                                BoldText(
                                  text: "View Score",
                                  selectionColor: AppColors.blueColor,
                                  fontSize: 24,
                                ),
                                
                                Text(""),
                              ],
                            ),
                            SizedBox(height: 27,),
                            Container(
                              height: 171,
                              width: 336,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.greyColor,width: 1.7),
                                borderRadius: BorderRadius.circular(24)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 19),
                                child: Column(
                                  children: [
                                     SizedBox(height: 16,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(Appimages.blackgirl,height: 47,width: 35,),
                                                    SizedBox(width: 3,),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        MainText(text: "Alex Martinez",fontSize: 14,),
                                                        MainText(text: "Team Alpha",color: AppColors.teamColor,fontSize: 13,height: 1,),
                                                         
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  UseableContainer(text:"Submitted",
                                                  height: 20,
                                                fontSize: 11,
                                                  width: 60,color: AppColors.forwardColor,textColor: AppColors.whiteColor,),
                                                SizedBox(width: 4,),
                                                UseableContainer(text: "94",
                                                fontFamily: "giory",
                                                fontSize: 14
                                                ,
                                                width: 37,
                                                height: 28,
                                                color: AppColors.orangeColor,
                                                
                                                )
                                                ],
                                              )
                                              ],
                                            ),
          SizedBox(height: 25,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    BoldText(text: "3:42 PM",fontSize: 24,selectionColor: AppColors.forwardColor,),
                                                    BoldText(text: "Submitted",selectionColor: AppColors.blueColor,fontSize: 16,)
                                                  ],
                                                ),
                                                SizedBox(width: 40,),
                                                 Column(
                                                  children: [
                                                    BoldText(text: "4:15 PM",fontSize: 24,selectionColor: AppColors.forwardColor,),
                                                    BoldText(text: "Scored",selectionColor: AppColors.blueColor,fontSize: 16,)
                                                  ],
                                                )
                                              ],
                                            )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 18,),
                            AnalysisContainer(height: 550,ishow: true,),
                            // SizedBox(height: 30,),
                             SizedBox(height: 90,),
                        BoldText(text: "Relevance threshold: >80%",fontSize: 16,selectionColor: AppColors.forwardColor,),
                       SizedBox(height: 22,),
                       Container(
  height: 700,
  width: 330,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    // color: AppColors.greyColor
    border: Border.all(color: AppColors.greyColor,width: 1.5)
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(text: "Team Response",fontSize: 16,selectionColor: AppColors.blueColor,),
                                  SizedBox(height: 25,),
                                  Row(
                                    children: [
                                      Image.asset(Appimages.timeout2,height: 19,width: 19,),
                                      MainText(text: "2 min read",fontSize: 14,color: AppColors.teamColor,)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              MainText(text: "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",fontSize: 14,height: 1.2,)
    ,SizedBox(height: 20,),
                                  BoldText(text: "Key Strategies:",fontSize: 16,selectionColor: AppColors.blueColor,),
                                  SizedBox(height: 20,),
                              MainText(text: "Implement real-time feedback system: Deploy customer feedback tools at every service interaction point to capture immediate responses and identify pain points quickly.",fontSize: 14,height: 1.2,)
                            ,SizedBox(height: 20,)
                             , MainText(text: "Reduce response time to under 2 hours: Streamline our support processes and implement automated routing to ensure faster resolution of customer inquiries.",fontSize: 14,height: 1.2,)
                            ,SizedBox(height: 20,)

                             , MainText(text: "Enhance self-service capabilities: comprehensive FAQ sections, video tutorials, and chatbot assistance to empower customers to resolve common issues independently.",fontSize: 14,height: 1.2,)
 ,SizedBox(height: 20,)

                             , MainText(text: "These strategies align with our company's customer-centric approach and will be measured through monthly satisfaction surveys, response time analytics, and self-service adoption rates.",fontSize: 14,height: 1.2,)




      ],
    ),
  ),
),
SizedBox(height: 26,),
LoginButton(
  
  onTap: () {
  Get.toNamed(RouteName.overViewOptionScreen);
},
  text: "Move to Next Stage",ishow: true,imageHeight: 22,imageWidth: 26,icon: Icons.fast_forward,height: 74,),

// LoginButton(text: "Accept AI Score (85)",color: AppColors.forwardColor,image: Appimages.ai2,ishow: true,imageHeight: 38,imageWidth: 32,height: 74,),
SizedBox(height: 23,),
LoginButton(text: "Share Responses",color: AppColors.forwardColor,image: Appimages.move,ishow: true,imageHeight: 26,imageWidth: 30,height: 74,),

// LoginButton(text: "Move to Next Stage",ishow: true,imageHeight: 22,imageWidth: 26,icon: Icons.fast_forward,height: 74,),
SizedBox(height: 23,),
LoginButton(text: "Export PDF",ishow: true,imageHeight: 18,imageWidth: 18,image: Appimages.export,height: 74,color: AppColors.redColor ,),
SizedBox(height: 23,),
LoginButton(text: "Edit Score & Feedback",ishow: true,imageHeight: 22,imageWidth: 22,icon: Icons.edit,height: 74,color: AppColors.orangeColor ,),

                            SizedBox(height: 39,)
               
              
            ],
          ),
        ),
      ))),
    );
  }
}