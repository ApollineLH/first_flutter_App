import 'package:flutter/cupertino.dart';
import 'package:test_1/models/course.dart';
import 'package:test_1/screens/home/widget/course_item.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  final courselist = Course.generateCourses();


  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children:  [
         CategoryTitle('Top of week', 'View All'),
         Container(
           height: 300,
           child: ListView.separated(
             padding: EdgeInsets.all(20),
             scrollDirection: Axis.horizontal,
             itemCount: courselist.length,
             itemBuilder: (context,index)=>
             CourseItem(courselist[index]),
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 15,),
             ),
         ),

        ]),
    );

  }
  
}