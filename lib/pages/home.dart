import 'package:europa/components/large_menu_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Appy Thyme')),
      body: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    LargeMenuButton(
                      label: 'Add Recipe',
                      icon: Icons.add,
                      highlightColor: Color(0xFF00A800),
                    ),
                    LargeMenuButton(
                      label: 'View',
                      icon: Icons.remove_red_eye,
                      highlightColor: Color(0xFF46078E),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    LargeMenuButton(
                      label: 'Schedule',
                      icon: Icons.calendar_today,
                      highlightColor: Color(0xFFD26C00),
                    ),
                    LargeMenuButton(
                      label: '?',
                      icon: Icons.question_answer,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
