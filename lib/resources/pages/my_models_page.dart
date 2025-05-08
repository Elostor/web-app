import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MyModelsPage extends NyStatefulWidget {

  static RouteView path = ("/my-models", (_) => MyModelsPage());
  
  MyModelsPage({super.key}) : super(child: () => _MyModelsPageState());
}

class _MyModelsPageState extends NyPage<MyModelsPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Models")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
