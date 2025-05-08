import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class UploadPage extends NyStatefulWidget {

  static RouteView path = ("/upload", (_) => UploadPage());
  
  UploadPage({super.key}) : super(child: () => _UploadPageState());
}

class _UploadPageState extends NyPage<UploadPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
