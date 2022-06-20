import 'package:flutter/cupertino.dart';

@immutable
class HomeState {

  const HomeState({
    this.count = 0,
    this.isLoading = false
  });

  final int count;
  final bool isLoading;

  HomeState copyWith({int? count, bool? isLoading}) {
    return HomeState(count: count ?? this.count, isLoading: isLoading ?? this.isLoading);
  }
}