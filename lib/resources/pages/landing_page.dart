import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/app_bar_special_widget.dart';
import 'package:flutter_app/resources/widgets/buttons/partials/icon_only_button_widget.dart';
import 'package:flutter_app/resources/widgets/buttons/partials/icon_text_button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LandingPage extends NyStatefulWidget {

  static RouteView path = ("/landing", (_) => LandingPage());
  
  LandingPage({super.key}) : super(child: () => _LandingPageState());
}

class _LandingPageState extends NyPage<LandingPage> {
  ScrollController _scrollController = ScrollController();

  @override
  get init => () {
    _scrollController.addListener(_scrollListener);
  };

  @override
  LoadingStyle get loadingStyle => LoadingStyle.normal();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset == 100) {
      updateState(AppBarSpecial.state);
    }
  }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBarSpecial(
        toolbarHeight: 60,
        leading: ResponsiveValue<bool>(
            context,
            defaultValue: true,
            conditionalValues: const [Condition.largerThan(name: TABLET)]
        ).value ?  MouseRegion() : MouseRegion(), //TODO First region PC Logo, second is for non-PC
        actions: <Widget>[
          ResponsiveVisibility(
            visible: true,
            child: Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconTextButton(
                  text: "upload".tr(),
                  icon: Icons.cloud_upload_outlined,
                  color: Colors.black,
                  hoverColor: Colors.blue,
                ),
                IconTextButton(
                  text: "myModels".tr(),
                  icon: Icons.dashboard_customize_outlined,
                  color: Colors.black,
                  hoverColor: Colors.blue,
                ),
                IconTextButton(
                  text: "myCart".tr(),
                  icon: Icons.shopping_cart_outlined,
                  color: Colors.black,
                  hoverColor: Colors.blue,
                ),
                IconTextButton(
                  text: "logIn".tr(), // TODO change this when logged in.
                  icon: Icons.login_outlined,
                  color: Colors.black,
                  hoverColor: Colors.blue,
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
