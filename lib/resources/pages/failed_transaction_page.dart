import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class FailedTransactionPage extends NyStatefulWidget {

  static RouteView path = ("/failed-transaction", (_) => FailedTransactionPage());
  
  FailedTransactionPage({super.key}) : super(child: () => _FailedTransactionPageState());
}

class _FailedTransactionPageState extends NyPage<FailedTransactionPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Failed Transaction")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
