import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final DisplayControllerProvider = StateProvider((ref) => _displayController);

String _displayController = '0';
String get displayController => _displayController;

class CalcButton extends StatelessWidget {
  final String keyWord;
  const CalcButton(
    this.keyWord, {
    Key? key,
  }) : super(key: key);

  void addDisplayController() {
    _displayController = keyWord;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Center(
        child: Text(
          keyWord,
          style: TextStyle(fontSize: 46.0),
        ),
      ),
      onPressed: () {
        //ボタンが押されたら「displayControllerProvider」に「_keyWord」を追加する。
        addDisplayController();
      },
    );
  }
}
