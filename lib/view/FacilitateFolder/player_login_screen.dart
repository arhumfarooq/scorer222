










































         












                      

































         

         



































































































































































import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer/components/responsive_fonts.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/constants/routename.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';
import 'package:scorer/widgets/main_text.dart';

class PlayerLoginScreen extends StatelessWidget {
  const PlayerLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    const double baseHeight = 812.0;
    const double baseWidth = 414.0;
    final double heightScaleFactor = screenHeight / baseHeight;
    final double widthScaleFactor = screenWidth / baseWidth;

    return Scaffold(
      resizeToAvoidBottomInset: true, 
      body: GradientBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32 * widthScaleFactor),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70 * heightScaleFactor),
                    SizedBox(
                      height: 50,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
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
                          ),
                        Center(
  child: BoldText(
        fontSize: ResponsiveFont.getFontSizeCustom(
defaultSize: 22*widthScaleFactor,
smallSize: 17*widthScaleFactor

                                  ),
    text: "player_login".tr,
    selectionColor: AppColors.blueColor,
  ),
),

                        ],
                      ),
                    ),
                    SizedBox(height: 20 * heightScaleFactor),
                    Center(
                      child: Image.asset(
                        Appimages.player2,
                        height: 180 * heightScaleFactor,
                      ),
                    ),
                    SizedBox(height: 23 * heightScaleFactor),
                    Center(child: LoginTextfield(
                      fontsize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:21*widthScaleFactor,
                        smallSize: 19 *widthScaleFactor
                      ),
                      text: "enter_full_name".tr)),
                    SizedBox(height: 9 * heightScaleFactor),
                    Center(child: LoginTextfield(
                        fontsize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:21*widthScaleFactor,
                        smallSize: 19 *widthScaleFactor
                      ),
                      text: "enter_email".tr)),
                    SizedBox(height: 9 * heightScaleFactor),
                    Center(child: LoginTextfield(
                        fontsize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:21*widthScaleFactor,
                        smallSize: 19 *widthScaleFactor
                      ),
                      text: "enter_password".tr)),
                    SizedBox(height: 9 * heightScaleFactor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20 * heightScaleFactor,
                              width: 20 * widthScaleFactor,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.rememberColor,
                                  width: 1 * widthScaleFactor,
                                ),
                              ),
                            ),
                            SizedBox(width: 6 * widthScaleFactor),
                            MainText(
                              text: "remember_me".tr,
                              fontSize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:14*widthScaleFactor,
                        smallSize: 12*widthScaleFactor
                      ),
                              color: AppColors.languageTextColor,
                            ),
                          ],
                        ),
                        MainText(
                          text: "forget_password".tr,
                          fontFamily: "gotham",
                            fontSize: ResponsiveFont.getFontSizeCustom(
                        defaultSize:14*widthScaleFactor,
                        smallSize: 12*widthScaleFactor
                      ),
                          color: AppColors.selectLangugaeColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 30 * heightScaleFactor),
                    Center(
                      child: LoginButton(
                        text: "login".tr,
                        fontSize: 20.sp,
                        onTap: () {
                          Get.toNamed(RouteName.playerDashboard);
                        },
                      ),
                    ),
                    SizedBox(height: 18 * heightScaleFactor),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.selectLangugaeColor.withOpacity(0.1),
                            thickness: 1,
                            endIndent: 10 * widthScaleFactor,
                          ),
                        ),
                        SizedBox(width: 12 * widthScaleFactor),
                        BoldText(
                          text: "or".tr,
                          fontSize: 22 * heightScaleFactor,
                        ),
                        SizedBox(width: 12 * widthScaleFactor),
                        Expanded(
                          child: Divider(
                            color: AppColors.selectLangugaeColor.withOpacity(0.1),
                            thickness: 1,
                            indent: 10 * widthScaleFactor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18 * heightScaleFactor),
                    Center(
                      child: LoginButton(
                        fontSize: ResponsiveFont.getFontSizeCustom(
                          defaultSize: 19.sp,
                          smallSize: 17.sp
                        ),
                        text: "join_with_code".tr,
                        color: AppColors.forwardColor,
                      ),
                    ),

                    
                    Spacer(),
                    SizedBox(height: 28 * heightScaleFactor),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
