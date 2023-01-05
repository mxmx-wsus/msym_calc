import 'package:flutter/material.dart';
import 'package:msym_calc/view/calc_keybord.dart';
import 'package:msym_calc/view/main_display.dart';
import '../constant/text_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(TextData.appTitle),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [MainDisplay(), CalcKeyboard()],
            )));
  }
}
