// import 'package:flutter/material.dart';

// class GradientBackground extends StatelessWidget {
//   const GradientBackground({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//             colors: [
//               Color(0xFFFFFFFF), // solid white top
//               Color(0x00FFFFFF), // fade to transparent
//             ],
//           ),
//         ),
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               // begin: Alignment.topLeft,
//               // end: Alignment.bottomRight,
//               begin: Alignment.bottomRight,
//               end: Alignment.topLeft,
//               colors: [
//                 Color.fromRGBO(67, 177, 80, 0.2), // subtle green
//                 Color.fromRGBO(168, 209, 236, 0.2), // subtle blue
//               ],
//               transform: GradientRotation(0.97), // ≈ 55.36deg in radians
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child; // screen ka content ayega yahan

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFFFFFFFF), // solid white top
            Color(0x00FFFFFF), // fade to transparent
          ],
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color.fromRGBO(67, 177, 80, 0.2), // subtle green
              Color.fromRGBO(168, 209, 236, 0.2), // subtle blue
            ],
            transform: GradientRotation(0.97), // ≈ 55.36deg in radians
          ),
        ),
        child: child, // 👈 screen ka content yahan inject hoga
      ),
    );
  }
}
