import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MyCartPage extends NyStatefulWidget {

  static RouteView path = ("/my-cart", (_) => MyCartPage());
  
  MyCartPage({super.key}) : super(child: () => _MyCartPageState());
}

class _MyCartPageState extends NyPage<MyCartPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
