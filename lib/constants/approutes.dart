import 'package:get/get_navigation/get_navigation.dart';
import 'package:scorer/constants/routename.dart';
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
import 'package:scorer/view/FacilitateFolder/start_Screen1.dart';
import 'package:scorer/view/FacilitateFolder/start_Screen2.dart';
import 'package:scorer/view/FacilitateFolder/start_Screen3.dart';
import 'package:scorer/view/FacilitateFolder/start_screen.dart';
import 'package:scorer/view/FacilitateFolder/view_Score_Screen.dart';
import 'package:scorer/view/FacilitateFolder/view_responses_Screen.dart';
// import 'package:scorer/view/startscreen/evaluate_response_Screen2.dart';
// import 'package:scorer/view/startscreen/start_Screen1.dart';
// import 'package:scorer/view/startscreen/start_screen.dart';


class AppRoutes {

static getAppRoutes()=>[

GetPage(name:RouteName.splashScreen, page:()=> SplashScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.startScreen, page:()=> StartScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.startScreen1, page:()=> StartScreen1(),
transition: Transition.cupertino
),
GetPage(name:RouteName.adminLoginScreen, page:()=> AdminLoginScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.chooseYourRoleScreen, page:()=> ChooseYourRoleScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.createNewSessionScreen, page:()=> CreateNewSessionScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.endSessionScreen, page:()=> EndSessionScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.evaluateResponseScreen, page:()=> EvaluateResponseScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.evaluateResponseScreen2, page:()=> EvaluateResponseScreen2(),
transition: Transition.cupertino
),GetPage(name:RouteName.facilLoginScreen, page:()=> FacilLoginScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.facilitatorDashboard, page:()=> FacilitatorDashboard(),
transition: Transition.cupertino
),GetPage(name:RouteName.overViewOptionScreen, page:()=> OverViewOptionScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.playerLoginScreen, page:()=> PlayerLoginScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.startScreen2, page:()=> StartScreen2(),
transition: Transition.cupertino
),GetPage(name:RouteName.startScreen3, page:()=> StartScreen3(),
transition: Transition.cupertino
),GetPage(name:RouteName.viewResponsesScreen, page:()=> ViewResponsesScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.viewScoreScreen, page:()=> ViewScoreScreen(),
transition: Transition.cupertino
)
];

}