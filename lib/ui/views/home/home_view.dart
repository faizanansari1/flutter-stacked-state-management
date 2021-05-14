import 'package:flutter/material.dart';
import 'package:flutter_stacked_state_management/ui/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(model.appTitle),
        ),
        body: Center(
          child: Text(model.appTitle),
        ),
      ),
    );
  }
}
