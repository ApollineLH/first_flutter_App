import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1/main.dart';
import 'package:test_1/models/course.dart';
import 'package:test_1/screens/detail/widget/course_description.dart';
import 'package:test_1/screens/detail/widget/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
         CustomAppBar(course),
         CouseDescription(course)

        ]),
      )
      
    );
  }
}