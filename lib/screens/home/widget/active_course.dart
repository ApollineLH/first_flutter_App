import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../constants/colors.dart';
import 'category_title.dart';

class ActiveCourse extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Column(
        children:  [
       CategoryTitle('Currently active', 'View All'),
       Container(
         padding: EdgeInsets.all(10),
         margin: EdgeInsets.all(20),
         decoration: BoxDecoration(
           color: kPrimaryLight,
           border: Border.all(color: kPrimary, width: 1),
           borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/images/progress.png', width: 60,),
                 
                ),
                SizedBox(width: 20,),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                    Text('Symetry theory',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: kFont),),
                    Text('2 lesson left',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: kFontLight),),

                   ],
                 )
              ],
            ),
             CircularPercentIndicator(
               radius: 28.0,
               lineWidth: 5.0,
               percent: 0.61,
               center:const Text('61%', style: TextStyle( fontWeight: FontWeight.bold)),
               progressColor: kPrimaryAccent,
             )
          ],
        ),
        
       )
      ]),
    );
  }
}