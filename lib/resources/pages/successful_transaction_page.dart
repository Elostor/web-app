import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class SuccessfulTransactionPage extends NyStatefulWidget {

  static RouteView path = ("/successful-transaction", (_) => SuccessfulTransactionPage());
  
  SuccessfulTransactionPage({super.key}) : super(child: () => _SuccessfulTransactionPageState());
}

class _SuccessfulTransactionPageState extends NyPage<SuccessfulTransactionPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Successful Transaction")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
