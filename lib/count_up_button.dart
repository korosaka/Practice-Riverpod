import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class CountUpButton extends StatelessWidget {
  const CountUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final notifier = ref.read(homeProvider.notifier);
      return ElevatedButton(
          onPressed: () {
            notifier.increment();
          },
          child: const Icon(Icons.add));
    });
  }
}
