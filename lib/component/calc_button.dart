import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:msym_calc/provider/display_contoroller_provider.dart';

class CalcButton extends ConsumerWidget {
  final String keyWord;
  const CalcButton(
    this.keyWord, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      child: Center(
        child: Text(
          keyWord,
          style: TextStyle(fontSize: 46.0),
        ),
      ),
      onPressed: () {
        //ボタンが押されたら「displayControllerProvider」に「_keyWord」を追加する。
        ref.read(displayControllerProvider.notifier).update((ref) => keyWord);
      },
    );
  }
}
