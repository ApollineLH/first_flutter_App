
import 'package:flutter/cupertino.dart';
import 'package:test_1/constants/colors.dart';

class EmojiText extends StatelessWidget{
  const EmojiText({Key? key}) : super(key: key);

  @override 
    Widget build(BuildContext context){
      return Container(
        padding: const EdgeInsets.only(left: 25),
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text:'Let\'s boost your brain power',
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 27, color: kFont)
                ),
                 TextSpan(text:'✨',
                 style: TextStyle(
                   fontSize: 26
                 ))
              ]
             
          ),
        ),
      );
    }
}