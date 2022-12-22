import 'package:flutter/material.dart';
import 'package:msym_calc/main_display.dart';

class CalcButton extends StatelessWidget {
  final String _keyWord;
  const CalcButton(
    this._keyWord, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Center(
        child: Text(
          _keyWord,
          style: TextStyle(fontSize: 46.0),
        ),
      ),
      onPressed: () {
        //ボタンが押されたら「main_display.dart」に「_keyWord」を追加する。
        MainDisplayState();
      },
    );
  }
}
