// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';
import  'package:test_1/models/course.dart';
import 'package:test_1/screens/detail/widget/detail.dart';

class CourseItem extends StatelessWidget{
  final Course course ;
  // ignore: use_key_in_widget_constructors
  const CourseItem(this.course);
  
  @override 
  Widget build(BuildContext context){
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
            child:Column(children:  [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                    child: Image.asset(course.imageUrl, fit: BoxFit.cover,),
                ),
              ),
              Expanded(
             
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row( 
                        children: [
                         Image.asset(course.authorImg,width:20 ),
                         SizedBox(width: 5),
                         Text(course.author,
                         style: TextStyle(fontWeight: FontWeight.bold),) 
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(course.title,
                          style: TextStyle(fontWeight: FontWeight.bold, color: kFont, fontSize: 18),),
                          Container( margin: EdgeInsets.symmetric(horizontal: 5), width: 5 , height: 5, decoration: BoxDecoration(color: kFontLight , shape: BoxShape.circle),)
                          ,
                          Text('2h22min',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: kFontLight),)
                        ],
                      )
                    ],
                  ),
                ),
                
              )
            ]
            ) ,
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryAccent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            onPressed: () { 
             },
            child:Text('Start') ,)
            )
        ],
      )
    );
  }
}