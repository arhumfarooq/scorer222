
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer/bottom_navigation.dart';
import 'package:scorer/constants/approutes.dart';
import 'package:scorer/controllers/facil_dashboard_controller.dart';
import 'package:scorer/localization/app_translation.dart';
import 'package:scorer/localization/translation_Service.dart';
import 'package:scorer/view/FacilitateFolder/end_Session_screen.dart';
import 'package:scorer/view/FacilitateFolder/evaluate_response_Screen.dart';
import 'package:scorer/view/FacilitateFolder/evaluate_response_Screen2.dart';
import 'package:scorer/view/FacilitateFolder/facilitator_dashboard.dart';
import 'package:scorer/view/FacilitateFolder/over_view__option_Screen.dart';
import 'package:scorer/view/FacilitateFolder/player_login_screen.dart';
import 'package:scorer/view/FacilitateFolder/splash_screen.dart';
import 'package:scorer/view/adminside/game2_Screen.dart';
import 'package:scorer/view/adminside/game_screen_Admin_Side.dart';
import 'package:scorer/view/playerfolder/player_login_play_side.dart';
import 'package:scorer/view/playerfolder/submit_response_Screen2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedLocale = await TranslationService().getSavedLocale();
  runApp(MyApp(locale: savedLocale));
}

class MyApp extends StatelessWidget {
  final Locale locale;
  const MyApp({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 874), 
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppTranslations(),
          locale: locale,
          getPages: AppRoutes.getAppRoutes(),
          fallbackLocale: const Locale('en', 'US'),
          home: SplashScreen(),
        );
      },
    );
  }
}
