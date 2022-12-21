import 'package:flutter/material.dart';

class MainDisplay extends StatefulWidget {
  _MainDisplayState createState() => _MainDisplayState();
}

class _MainDisplayState extends State<MainDisplay> {
  String _expression = '1+1';
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            _expression,
            style: TextStyle(
              fontSize: 64.0,
            ),
          ),
        ));
  }
}
