

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_river_pod/home_state.dart';

class HomeStateNotifier extends StateNotifier<HomeState>{
  HomeStateNotifier() : super(const HomeState());

  void increment() {
    state = state.copyWith(isLoading: true);
    Future.delayed(const Duration(seconds: 1)).then((_) {
      state = state.copyWith(count: state.count + 1);
    }).whenComplete(() {
      state = state.copyWith(isLoading: false);
    });
  }

}