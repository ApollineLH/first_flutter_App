// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';
import 'package:test_1/screens/home/widget/active_course.dart';
import 'package:test_1/screens/home/widget/course_item.dart';
import 'package:test_1/screens/home/widget/emoji_text.dart';
import 'package:test_1/screens/home/widget/feature_course.dart';
import 'package:test_1/screens/home/widget/search_input.dart';

import '../../models/course.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // ignore: prefer_const_constructors
            EmojiText(),
            // ignore: prefer_const_constructors
            SearchInput(),
            // ignore: prefer_const_constructors
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kPrimaryAccent, width: 2))),
                child: Text('Home', style: TextStyle(fontWeight: FontWeight.bold),),
              )),
          BottomNavigationBarItem(
              label: 'calendar',
              icon: Image.asset('assets/icons/calendar.png', width: 20)),
          BottomNavigationBarItem(
              label: 'bookmark',
              icon: Image.asset('assets/icons/bookmark.png', width: 20)),
          BottomNavigationBarItem(
              label: 'user',
              icon: Image.asset('assets/icons/user.png', width: 20)),
        ]);
  }
}

class _buildAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const _buildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Hello Apolline!',
            style: TextStyle(
              fontSize: 16,
              color: kFontLight,
            ),
          )),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                        color: kPrimaryAccent, shape: BoxShape.circle)))
          ],
        )
      ],
    );
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
