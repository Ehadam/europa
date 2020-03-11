import 'package:flutter/material.dart';

class LargeMenuButton extends StatelessWidget {
  LargeMenuButton({
    this.label,
    this.icon,
    this.highlightColor = const Color(0xFF46078E),
  });

  final String label;
  final IconData icon;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 125,
      height: 125,
      child: RaisedButton(
        onPressed: () {},
        elevation: 5,
        splashColor: highlightColor.withAlpha(55),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: highlightColor, size: 35),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
