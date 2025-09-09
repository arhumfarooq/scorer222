// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: GradientBackground(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween, // 👈 Important
//           children: [
//             const SizedBox(height: 50), // Top spacing (optional)

//             /// Center wali image
//             Center(
//               child: SvgPicture.asset(
//                 Appimages.splash,
//                 height: 184,
//                 width: 212,
//               ),
//             ),

//             /// Bottom wali image
//             Padding(
//               padding: const EdgeInsets.only(bottom: 30), // thoda margin bottom
//               child: SvgPicture.asset(
//                 Appimages.bottom,
//                 width: 104,
//                 height: 32,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart'; 
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/view/FacilitateFolder/start_screen.dart'; 
// import 'package:scorer/view/home/home_screen.dart'; // 👈 apni dusri screen import karo

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    /// 3 second baad HomeScreen pe bhej do
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() =>  StartScreen()); 
      
      // Agar GetX use nahi karna to:
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GradientBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),

            /// Center wali image
            Center(
              child: SvgPicture.asset(
                Appimages.splash,
                height: 184,
                width: 212,
              ),
            ),

            /// Bottom wali image
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SvgPicture.asset(
                Appimages.bottom,
                width: 104,
                height: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
