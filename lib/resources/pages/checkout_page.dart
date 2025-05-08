import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class CheckoutPage extends NyStatefulWidget {

  static RouteView path = ("/checkout", (_) => CheckoutPage());
  
  CheckoutPage({super.key}) : super(child: () => _CheckoutPageState());
}

class _CheckoutPageState extends NyPage<CheckoutPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
