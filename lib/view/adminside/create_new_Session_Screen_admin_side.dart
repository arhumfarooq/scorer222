






























































                      

                             


















































              


               



















































        































        
        





































































































































































import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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

    
    const double baseWidth = 375.0;
    final double scaleFactor = screenWidth / baseWidth;

    return Scaffold(
      resizeToAvoidBottomInset: true, 
      body: GradientBackground(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 30 * scaleFactor),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight, 
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        SizedBox(height: 20 * scaleFactor),

                        
                        SizedBox(
                          height: 50 * scaleFactor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(
                                Appimages.arrowback,
                                colorFilter: ColorFilter.mode(
                                    AppColors.forwardColor, BlendMode.srcIn),
                                width: 24 .w,
                                height: 20 .h,
                              ),
                            ),
                                  RichText(
                                                     text: TextSpan(
                                                       style:  TextStyle(fontSize: 22* scaleFactor, fontWeight: FontWeight.bold),
                                                       children: [
                              TextSpan(
                               text: "add_ne".tr,
                               style: TextStyle(
                                 color: AppColors.blueColor, 
                               ),
                                                         ),
                                                         WidgetSpan(
                               alignment: PlaceholderAlignment.middle, 
                               child: Container(
                                 
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
                               alignment: PlaceholderAlignment.middle, 
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

                        
                        Image.asset(
                          Appimages.group,
                          width: 208 * scaleFactor,
                          height: 181 * scaleFactor,
                        ),

                        SizedBox(height: 10 * scaleFactor),

                        
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
