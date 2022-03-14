import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';

import '../../../models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:[
            Image.asset(course.authorImg,width:20),
            SizedBox(width: 5),
            Text(course.author,style: TextStyle(fontWeight: FontWeight.bold, color: kFont, fontSize: 15),),
            Container( margin: EdgeInsets.symmetric(horizontal: 5), width: 5 , height: 5, decoration: BoxDecoration(color: kFontLight , shape: BoxShape.circle),),
            Icon(Icons.access_time_filled,color: kPrimaryAccent, ),
            Text('1h15 min',style: TextStyle(fontWeight: FontWeight.bold, color: kFont, fontSize: 15))
            ]

          ),
          SizedBox(height: 15,),
          Text(course.title,style: TextStyle(fontWeight: FontWeight.bold, color: kFont, fontSize: 35)),
          SizedBox(height: 15,),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac faucibus purus. ', style: TextStyle( color: kFontLight, fontSize: 16, wordSpacing: 2)),



          ]
      
      
      ),
      
    );
  }
}