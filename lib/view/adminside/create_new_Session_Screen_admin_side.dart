// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/widgets/bold_text.dart';

// class CreateNewSessionScreenAminSide extends StatelessWidget {
//   const CreateNewSessionScreenAminSide({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 50,
//                   child: Row(
//                     children: [
//                       /// Back arrow (left side)
//                       SvgPicture.asset(
//                         Appimages.arrowback,
//                         colorFilter: ColorFilter.mode(
//                             AppColors.forwardColor, BlendMode.srcIn),
//                         width: 24,
//                         height: 20,
//                       ),

//                       /// Center wali cheez (Add New + Player)
//                       Flexible(
//                         child: Center(
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             alignment: Alignment.centerLeft,
//                             children: [
//                                Positioned(
//                                 left: 70, // 👈 is value ko adjust karke overlap perfect banao
//                                 child: Container(
//                                   width: 100,
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 4),
//                                   decoration: BoxDecoration(
//                                     color: AppColors.forwardColor,
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Center(
//                                     child: BoldText(
//                                       text: "Player",
//                                       fontSize: 20,
//                                       selectionColor: AppColors.whiteColor,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               /// "Add New" text
//                               BoldText(
//                                 text: "Add New",
//                                 selectionColor: AppColors.blueColor,
//                               ),
                      
//                               /// Overlapping Player container
                             
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/view/FacilitateFolder/aa.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/login_textfield.dart';

// Assuming these are defined in your project
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/bold_text.dart';

class CreateNewSessionHeader extends StatelessWidget {
  const CreateNewSessionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // These are placeholder values since the original constants were not provided
    const Color blueColor = Color(0xFF142B6A);
    const Color forwardColor = Color(0xFF65AC37);
    const Color whiteColor = Colors.white;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              
              children: [
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Back arrow
                    SvgPicture.asset(
                          Appimages.arrowback,
                          colorFilter: ColorFilter.mode(
                              AppColors.forwardColor, BlendMode.srcIn),
                          width: 24,
                          height: 20,
                        ),
                      Expanded(
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none, // Allows children to render outside of the stack's bounds
                            children: [
                               Positioned(
                                left: 145, // Adjust this value to control the overlap
                                child: Container(
                                  width: 90,
                                  height: 37,
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: AppColors.forwardColor
                                    ,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: BoldText(text: "Player",selectionColor: AppColors.whiteColor,fontSize: 20,))
                                ),
                              ),
                              /// "Add New" text - this is the base layer
                              Positioned(
                                left: 65,
                                child:BoldText(text: "Add New",fontSize: 24,selectionColor: AppColors.blueColor,)
                              ),
                
                              /// "Player" button - placed on top and shifted left
                             
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                Image.asset(Appimages.group,width: 208,height: 181,),
                SizedBox(height: 47,),
                LoginTextfield(text: "Enter Player Name",fontsize: 18,),
                SizedBox(height: 9,),
                LoginTextfield(text: "Enter Player Email Address",fontsize: 18,),
                SizedBox(height: 9,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 ),
        height: 70 ,
        width: 337 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25 ),
          border: Border.all(color: AppColors.selectLangugaeColor.withOpacity(0.1), width: 2 ),
        ),
             child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BoldText(text: "Role",fontSize: 18,),
          Row(
            children: [
              BoldText(text: "Facilitator",selectionColor: AppColors.blueColor,fontSize: 16,),
              Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.forwardColor,size: 30,)
            ],
          )
        ],
             ),
            ),
            SizedBox(height: 33,),
            LoginButton(text: "Save",ishow: true,image: Appimages.save,),
            SizedBox(height: 13,),
            LoginButton(text: "Cancel",color: AppColors.forwardColor,),
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}