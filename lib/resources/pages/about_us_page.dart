import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class AboutUsPage extends NyStatefulWidget {

  static RouteView path = ("/about-us", (_) => AboutUsPage());
  
  AboutUsPage({super.key}) : super(child: () => _AboutUsPageState());
}

class _AboutUsPageState extends NyPage<AboutUsPage> {

  @override
  get init => () {

  };

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
