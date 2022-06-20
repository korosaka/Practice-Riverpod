import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_river_pod/count_up_button.dart';
import 'package:test_river_pod/home_state.dart';
import 'package:test_river_pod/home_state_notifier.dart';
import 'package:test_river_pod/message_widget.dart';
import 'package:test_river_pod/number_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: const [NumberWidget(), MessageWidget(), CountUpButton()],
      ),
    ));
  }
}

final homeProvider = StateNotifierProvider<HomeStateNotifier, HomeState>((ref) {
  return HomeStateNotifier();
});
