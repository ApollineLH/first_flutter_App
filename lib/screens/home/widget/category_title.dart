import 'package:flutter/widgets.dart';
import 'package:test_1/constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  

  final String leftText;
  final String rightText;
  // ignore: use_key_in_widget_constructors
  const CategoryTitle(this.leftText, this.rightText);

  
  @override 
   Widget build(BuildContext context){
     return Container(
       padding: const EdgeInsets.symmetric(horizontal:25),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text(leftText,
           style: const TextStyle(
             fontWeight: FontWeight.bold,
             color: kFont,
             fontSize: 20
           ),),
           Text(rightText,
           style: const TextStyle(
             fontWeight: FontWeight.bold,
             color: kFontLight,
             fontSize: 16
           ) )
         ],
       )
     );
   }
}