import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/create_container.dart';
import 'package:scorer/widgets/custom_sloder_row.dart';
import 'package:scorer/widgets/custom_stratgy_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';
import 'package:scorer/widgets/useable_container.dart';
import 'package:scorer/widgets/useable_textrow.dart';

class SubmitResponseScreen2 extends StatelessWidget {
  const SubmitResponseScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
  child: Column(
    children: [
        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 10),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(Appimages.player2,height: 63,width: 50, ),
                              Expanded(child: Center(child: BoldText(text: "Team Alpha",fontSize: 22,))),
                              Image.asset(Appimages.house1,height: 63,width: 80 ),
                    
                            
                                
                            ],
                          ),
                        ),
              
                          Stack(
                              
                                clipBehavior: Clip.none,
                                    children: [
                                     SvgPicture.asset(Appimages.Crown,height: 162,width: 162,),
                                      // Image.asset(Appimages.ok,height: 310,width: 310,),
                                       Positioned(
                                        bottom: -10,
                                        right:-20,
                                        child: CreateContainer(text: "5 Phases",width: 84,)),
                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  BoldText(text: "Response Submitted!",fontSize: 16,selectionColor: AppColors.blueColor,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Container(
      height: 510,
      width: 330,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor,width: 1.5),
        borderRadius: BorderRadius.circular(24)
      ),
      child: Stack(
    
            clipBehavior: Clip.none,
    
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 27,),
                                        BoldText(text: "AI Analysis & Suggestion",fontSize: 16,selectionColor: AppColors.blueColor,),
          
                                        SizedBox(height: 28,),
          Stack(
            clipBehavior: Clip.none,
            children: [
          Positioned(
            right: -10,
            top: -10,
            child: SvgPicture.asset(Appimages.arrowdown)),
          Container(
            child: Image.asset(Appimages.ai2),
          )
            ],
          ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            BoldText(text: "Relevance Score",fontSize: 16,selectionColor: AppColors.blueColor,),
                                             UseableContainer(
                                  text: "78",
                                  fontFamily: "giory",
                                  fontSize: 14 ,
                                  width: 37 ,
                                  height: 28 ,
                                  color: AppColors.orangeColor,
                                )
                                          ],
                                        ),
                                        MainText(text: "Response directly addresses the prompt with clear objective and actionable strategies.",fontSize: 14,height: 1.3,)
          ,SizedBox(height: 10,)
          
          ,Divider(color: AppColors.greyColor,thickness: 1,),
          SizedBox(height: 20,),
           Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            BoldText(text: "Quality Assessment",fontSize: 16,selectionColor: AppColors.blueColor,),
                                             UseableContainer(
                                  text: "High",
                                  // fontFamily: "giory",
                                  fontSize: 12 ,
                                  width: 46 ,
                                  height: 28 ,
                                  color: AppColors.forwardColor,
                                )
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        MainText(text: "Well-structured response with specific metrics and measurable outcomes.",fontSize: 14,height: 1.3,)
          
          
                
              ],
            ),
          ),
          Positioned(
            bottom: -70,
            left: 70,
            child: Container(
                height: 181 , // Use width scale for a square container
                width: 181 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.forwardColor,
                      Colors.grey.shade200,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(3 ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 202, 202, 202),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BoldText(
                        text: "89/100",
                        fontSize: 38 ,
                        selectionColor: AppColors.createBorderColor,
                      ),
                      SizedBox(height: 4 ),
                      BoldText(
                        text: "Final Score",
                        fontSize: 16 ,
                        selectionColor: AppColors.blueColor,
                      )
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    ),
  ),
  SizedBox(height: 100,),
   Padding(
    //  padding: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.symmetric(horizontal: 30),

     child: Container(
                          height: 236 ,
                          width: 336 ,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyColor, width: 1.7 ),
                            borderRadius: BorderRadius.circular(24 ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 17 , right: 15 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20 ),
                                BoldText(
                                  text: "Scoring Breakdown",
                                  selectionColor: AppColors.blueColor,
                                  fontSize: 16 ,
                                ),
                                // SizedBox(height: 31 * heightScaleFactor),
                                SizedBox(height: 5 ),
     
                                CustomSloderRow(text: "Clarity & Specificity", text2: "22/25"),
                                SizedBox(height: 5 ),
                                CustomSloderRow(text: "Strategic Thinking", text2: "22/25"),
                                // SizedBox(height: 5 * heightScaleFactor),
                                SizedBox(height: 5 ),
     
                                CustomSloderRow(text: "Feasibility", text2: "22/25"),
                                // SizedBox(height: 5 * heightScaleFactor),
                                SizedBox(height: 5 ),
     
                                CustomSloderRow(text: "Innovation", text2: "22/25"),
                              ],
                            ),
                          ),
                        ),
   ),
                      SizedBox(height: 29,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Container(
                          width: 376,
                          height: 271,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyColor,width: 1.5),
                            borderRadius: BorderRadius.circular(24)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: AppColors.yellowColor,),
                                      SizedBox(width: 9,),
                                      BoldText(
                                        text: "Tips for Next Challenge",
                                        selectionColor: AppColors.blueColor,
                                        fontSize: 16 ,
                                      ),
                                    ],
                                  ),
SizedBox(height: 28,),
                                   UseableTextrow(
                                    height: 1.4,
                    color: AppColors.forwardColor,
                    text: "Include contingency planning in your\ndecision-making process"),
                    SizedBox(height: 20,),
                     UseableTextrow(
                                    height: 1.4,
                    color: AppColors.forwardColor,
                    text: "Consider stakeholder impact beyond\nimmediate team members"),
                      SizedBox(height: 20,),
                     UseableTextrow(
                                    height: 1.4,
                    color: AppColors.forwardColor,
                    text: "Quantify benefits where possible to\nstrengthen your reasoning"),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 29,),
                       Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(
                                      children: [
                                          CustomStratgyContainer(
                                      width3: 81,
                                      iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 1 Strategy Building", text2: "Completed • 20 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                            flex: 4,flex1: 0,
                            ),
                            SizedBox(height: 10,),
                              CustomStratgyContainer(
                                      width3: 81,
                                      iconContainer: AppColors.forwardColor, icon: Icons.check, text1: "Phase 2 Strategy Building", text2: "Active • 30 min", text3: "Completed", smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                            flex: 4,flex1: 0,
                            ),
                            SizedBox(height: 10,),
                             CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 3: Implementation", text2: "Upcoming • 15 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
                             ),
                            SizedBox(height: 10,),
                             CustomStratgyContainer(iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "Phase 4: Evaluation", text2: "Upcoming • 15 min", text3: "Pending", smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
                             ),
                             SizedBox(height: 30,),
                             LoginButton(text: "Move to Phase 3",color: AppColors.forwardColor,ishow: true,
                             image: Appimages.submit,
                             ),
                             SizedBox(height: 10,),
                              LoginButton(text: "Live Leaderboard",ishow: true,
                             image: Appimages.tropy1,
                             ),
                                SizedBox(height: 10,),
                               LoginButton(text: "Export PDF",ishow: true,color: AppColors.redColor,
                             image: Appimages.export,
                             ),
                             SizedBox(height: 40,)
                             
          
                                        
                                      ],
                                    ),
                                  )
            
              
            
    ],
  ),
)),),

    );
  }
}