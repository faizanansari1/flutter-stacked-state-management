import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_stacked_state_management/ui/views/partial_builds/partial_builds_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //nonReactive cunstructor only once build
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      viewModelBuilder: () => PartialBuildsViewModel(),
      builder: (context, model, child) {
        print('PartialBuildsView Re-Buld');
        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _StringForm(),
              _TitleAndValue(),
            ],
          ),
        );
      },
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildsViewModel model) {
    print("_StringForm Re-Builds");
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    print('_TitleAndValue Red-build');
    return Column(
      children: [
        Text(
          model.title ?? '',
          style: TextStyle(
            fontSize: 40,
          ),
        )
      ],
    );
  }
}
