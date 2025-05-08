import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MaterialsPage extends NyStatefulWidget {

  static RouteView path = ("/materials", (_) => MaterialsPage());
  
  MaterialsPage({super.key}) : super(child: () => _MaterialsPageState());
}

class _MaterialsPageState extends NyPage<MaterialsPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materials")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
