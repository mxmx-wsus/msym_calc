import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:msym_calc/provider/display_contoroller_provider.dart';

class MainDisplay extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayState = ref.watch(displayControllerProvider);

    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            displayState.toString(),
            style: TextStyle(
              fontSize: 64.0,
            ),
          ),
        ));
  }
}
