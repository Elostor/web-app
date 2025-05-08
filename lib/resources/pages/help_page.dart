import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class HelpPage extends NyStatefulWidget {

  static RouteView path = ("/help", (_) => HelpPage());
  
  HelpPage({super.key}) : super(child: () => _HelpPageState());
}

class _HelpPageState extends NyPage<HelpPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
