import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ProductionPage extends NyStatefulWidget {

  static RouteView path = ("/production", (_) => ProductionPage());
  
  ProductionPage({super.key}) : super(child: () => _ProductionPageState());
}

class _ProductionPageState extends NyPage<ProductionPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Production")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
