import 'package:flutter/material.dart';
import 'package:msym_calc/component/calc_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainDisplay extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayControllerProvider = ref.watch(DisplayControllerProvider);
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            displayControllerProvider.toString(),
            style: TextStyle(
              fontSize: 64.0,
            ),
          ),
        ));
  }
}
