import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/main_text.dart';

class PlayersRow extends StatelessWidget {
    final bool isTeamSelected; 
   PlayersRow({super.key, required this.isTeamSelected});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(
                      isTeamSelected?Appimages.win2:
                      Appimages.play2,),fit: BoxFit.cover,),
                    border: Border.all(color: AppColors.newggrey,width: 5)
                      ),
                      
                    ),
                     Positioned(
  // top: 85,
  bottom: -18,
  left: 25,
  child: Container(
  height: 30,
  width: 30,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.newggrey,
    border: Border.all(color: AppColors.newborder, width: 3), // thoda patla border rakho
  ),
  child: Center(
    child: MainText(
      text: "2",
      fontSize: 14, // 30 ke circle ke liye best fit
    ),
  ),
)


),
                  ],
                ),
                SizedBox(height: 20,),

                 BoldText(text:isTeamSelected?"Team Rock": "Sarah J.",selectionColor: AppColors.blueColor,fontSize: 16,),
    BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

              ],
            ),
            // SizedBox(width: 10,),

            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
     
                    Container(
                      height: 125,
                      width: 125,
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(
                      isTeamSelected?Appimages.win1:
                      Appimages.bg,),fit: BoxFit.cover,)
                    
                      ),
                    ),
                    
    Positioned(
  // top: 105,
  bottom: -16,
  left: 48,
  child: Container(
  height: 30,
  width: 30,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.yellowColor,
    border: Border.all(color: AppColors.newborder, width: 3), // thoda patla border rakho
  ),
  child: Center(
    child: MainText(
      text: "1",
      fontSize: 14, // 30 ke circle ke liye best fit
    ),
  ),
)


),
 Positioned(
  top:-75,
  left: 15,
  child: SvgPicture.asset(Appimages.Crown)),
                   


                  ],
                ),
                SizedBox(height: 20,),
                 BoldText(text:isTeamSelected?"Team Rock": "Alex J.",selectionColor: AppColors.blueColor,fontSize: 16,),
    BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

                
              ],
            ),
            // SizedBox(width: 10),
             Column(
               children: [
                 Stack(
                  clipBehavior: Clip.none,
                   children: [
                     Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                     image: DecorationImage(image: AssetImage(
                      isTeamSelected?Appimages.win3:
                      Appimages.profile,),fit: BoxFit.cover,)
                      ),
                      
                                 ),
                                 
  Positioned(
  // top: 10,
  bottom: -18,
  left: 25,
  child: Container(
  height: 30,
  width: 30,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.orangeColor,
    border: Border.all(color: AppColors.newborder, width: 3), // thoda patla border rakho
  ),
  child: Center(
    child: MainText(
      text: "3",
      fontSize: 14, // 30 ke circle ke liye best fit
    ),
  ),
)


),
                   ],
                 ),
                SizedBox(height: 20,),

                              BoldText(text:isTeamSelected?"Team Rock": "Sarah J.",selectionColor: AppColors.blueColor,fontSize: 16,),
    BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

               ],
             ),
          ],
        ),
       

// Positioned(
//   top: 125,
//   child: Column(
//   children: [
//     BoldText(text:isTeamSelected?"Team Rock": "Sarah J.",selectionColor: AppColors.blueColor,fontSize: 16,),
//     BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

//   ],
// )),
// Positioned(
//   top: 145,
//   left: 110,
//   child: Column(
//   children: [
//     BoldText(text:isTeamSelected?"Team Alpha": "Alex M.",selectionColor: AppColors.blueColor,fontSize: 16,),
//     BoldText(text: "2,890 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

//   ],
// )),
// Positioned(
//   top: 125,
//   left: 220,
//   child: Column(
//   children: [
//     BoldText(text:isTeamSelected?"Team Beta": "Mike C.",selectionColor: AppColors.blueColor,fontSize: 16,),
//     BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

//   ],
// )),


      ],
    );
  }
}