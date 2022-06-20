import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {

      final count = ref.watch(homeProvider.select((state) {
        return state.count;
      }));
      return Center(
        child: Text(
          '$count',
          style: Theme.of(context).textTheme.headline4,
        ),
      );
    });
  }
}
