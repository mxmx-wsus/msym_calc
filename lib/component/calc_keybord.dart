import 'package:flutter/material.dart';
import 'package:msym_calc/component/calc_button.dart';

class CalcKeyboard extends StatelessWidget {
  const CalcKeyboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          children: [
            '7',
            '8',
            '9',
            '÷',
            '4',
            '5',
            '6',
            '×',
            '1',
            '2',
            '3',
            '-',
            'C',
            '0',
            '=',
            '+',
          ].map((keyWord) {
            return GridTile(
              child: CalcButton(keyWord),
            );
          }).toList(),
        ));
  }
}
