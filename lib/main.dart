

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:device_preview/device_preview.dart'; // 👈 add this
// import 'package:scorer/bottom_navigation.dart';
// import 'package:scorer/constants/approutes.dart';
// import 'package:scorer/view/FacilitateFolder/create_new_Session_Screen.dart';
// import 'package:scorer/view/FacilitateFolder/splash_screen.dart';
// import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
// import 'package:scorer/view/adminside/game2_Screen.dart';


// void main() {
  
//   runApp(
//     DevicePreview(
//       enabled: true, // 👈 true rakho jab test karna ho
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       useInheritedMediaQuery: true, // 👈 device_preview ke liye zaroori
//       locale: DevicePreview.locale(context), // 👈 device_preview ke liye
//       builder: DevicePreview.appBuilder, // 👈 device_preview ke liye
//       getPages: AppRoutes.getAppRoutes(),
//       home:  SplashScreen(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scorer/constants/approutes.dart';
// import 'package:scorer/view/startscreen/choose_your_role_Screen.dart';
// import 'package:scorer/view/startscreen/splash_screen.dart';
// import 'package:scorer/view/startscreen/start_Screen1.dart';
// import 'package:scorer/view/startscreen/start_Screen2.dart';
// import 'package:scorer/view/startscreen/start_Screen3.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       getPages: AppRoutes.getAppRoutes(),
//       home: SplashScreen(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scorer/localization/app_translation.dart';
// import 'package:scorer/localization/translation_Service.dart';
// import 'package:scorer/view/FacilitateFolder/splash_screen.dart';
// // import 'translation_service.dart';
// // import 'app_translations.dart';
// // import 'package:scorer/view/startscreen/splash_screen.dart';
// import 'package:scorer/constants/approutes.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Get saved locale from SharedPreferences
//   final savedLocale = await TranslationService().getSavedLocale();

//   runApp(MyApp(locale: savedLocale));
// }

// class MyApp extends StatelessWidget {
//   final Locale locale;
//   const MyApp({super.key, required this.locale});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       translations: AppTranslations(),     // translations file
//       locale: locale,                      // loaded locale
//       fallbackLocale: const Locale('en', 'US'),
//       getPages: AppRoutes.getAppRoutes(),
//       home: SplashScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/bottom_navigation.dart';
import 'package:scorer/components/phases_Screen.dart';
import 'package:scorer/constants/approutes.dart';
import 'package:scorer/localization/app_translation.dart';
import 'package:scorer/localization/translation_Service.dart';
import 'package:scorer/view/FacilitateFolder/admin_login_screen.dart';
import 'package:scorer/view/FacilitateFolder/choose_your_role_Screen.dart';
import 'package:scorer/view/FacilitateFolder/create_new_Session_Screen.dart';
import 'package:scorer/view/FacilitateFolder/end_Session_screen.dart';
import 'package:scorer/view/FacilitateFolder/evaluate_response_Screen.dart';
import 'package:scorer/view/FacilitateFolder/evaluate_response_Screen2.dart';
import 'package:scorer/view/FacilitateFolder/facil_login_Screen.dart';
import 'package:scorer/view/FacilitateFolder/facilitator_dashboard.dart';
import 'package:scorer/view/FacilitateFolder/over_view__option_Screen.dart';
import 'package:scorer/view/FacilitateFolder/player_login_screen.dart';
import 'package:scorer/view/FacilitateFolder/splash_screen.dart';
import 'package:scorer/view/FacilitateFolder/start_screen.dart';
import 'package:scorer/view/FacilitateFolder/view_Score_Screen.dart';
import 'package:scorer/view/FacilitateFolder/view_responses_Screen.dart';
import 'package:scorer/view/adminside/admin_create_new_session_Screen.dart';
import 'package:scorer/view/adminside/admin_dashboard.dart';
import 'package:scorer/view/adminside/admin_overview_option_screens.dart';
import 'package:scorer/view/adminside/create_new_Session_Screen_admin_side.dart';
import 'package:scorer/view/adminside/game2_Screen.dart';
import 'package:scorer/view/adminside/user_admin_detailed_scree.dart';
import 'package:scorer/view/adminside/user_facilitate_detailed_scree.dart';
import 'package:scorer/view/adminside/user_player_detailed_scree.dart';
import 'package:scorer/view/playerfolder/game_start1_screen.dart';
import 'package:scorer/view/playerfolder/player_dashboard.dart';
import 'package:scorer/view/playerfolder/player_dashboard_Screen2.dart';
import 'package:scorer/view/playerfolder/player_leader_board_Screen2.dart';
import 'package:scorer/view/playerfolder/player_leaderboard_screen.dart';
import 'package:scorer/view/playerfolder/player_login_play_side.dart';
import 'package:scorer/view/playerfolder/submit_response_Screen.dart';
import 'package:scorer/view/playerfolder/submit_response_Screen2.dart';
// import 'package:scorer/view/startscreen/start_screen.dart';
// import 'translation_service.dart';
// import 'app_translations.dart';
// import 'startscreen.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: locale,
      getPages: AppRoutes.getAppRoutes(),
      fallbackLocale: const Locale('en', 'US'),
      home: SplashScreen(),
    );
  }
}
