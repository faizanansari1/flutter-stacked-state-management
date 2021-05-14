import 'package:flutter/material.dart';
import 'package:flutter_stacked_state_management/ui/views/home/home_view.dart';
import 'package:flutter_stacked_state_management/ui/views/partial_builds/partial_builds_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stacked State Managemanet",
      home: PartialBuildsView(),
    );
  }
}
