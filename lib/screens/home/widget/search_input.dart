import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  
  @override 
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(color: kPrimary, width: 2 ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: const TextField(
            cursorColor: kFontLight,
            decoration: InputDecoration(
              fillColor: kPrimaryLight,
              filled: true,
              contentPadding: EdgeInsets.all(18),
              border: InputBorder.none,
              hintText: 'serch for history, classes,...',
              hintStyle: TextStyle(color: kFontLight)
            
            ),
          ),
        ),
        Positioned(
          right: 45,
          top: 35,
          child: Container(
             padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: kPrimaryAccent,
              borderRadius: BorderRadius.circular(8)
             ),
            child: Image.asset('assets/icons/search.png',
              scale:3
            )
            ,)
        )
      ],
    ); 

  }
  
}
