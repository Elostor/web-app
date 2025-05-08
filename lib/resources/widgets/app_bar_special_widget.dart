import 'package:flutter/material.dart';
import 'package:flutter_app/bootstrap/extensions.dart';
import 'package:nylo_framework/nylo_framework.dart';

class AppBarSpecial extends AppBar{
  static String state = "AppBarSpecial";

  AppBarSpecial({
    super.key,
    super.leading,
    super.automaticallyImplyLeading = true,
    super.title,
    super.actions,
    super.flexibleSpace,
    super.bottom,
    super.elevation,
    super.scrolledUnderElevation,
    super.notificationPredicate = defaultScrollNotificationPredicate,
    super.shadowColor,
    super.surfaceTintColor,
    super.shape,
    super.foregroundColor,
    super.iconTheme,
    super.actionsIconTheme,
    super.primary = true,
    super.centerTitle,
    super.excludeHeaderSemantics = false,
    super.titleSpacing,
    super.toolbarOpacity = 1.0,
    super.bottomOpacity = 1.0,
    super.toolbarHeight,
    super.leadingWidth,
    super.toolbarTextStyle,
    super.titleTextStyle,
    super.systemOverlayStyle,
    super.forceMaterialTransparency = false,
    super.clipBehavior,
  }) : super(backgroundColor: Colors.transparent);

  @override
  _AppBarSpecialState createState() => _AppBarSpecialState();
}

class _AppBarSpecialState extends NyState<AppBarSpecial> {
  Color _appBarColor = Colors.red;

  _AppBarSpecialState() {
    stateName = AppBarSpecial.state;
  }

  @override
  get init => () {
    super.init();
  };

  @override
  stateUpdated(data) {
    if (_appBarColor == Colors.transparent) {
      _appBarColor = context.color.appBarBackground;
    } else {
      _appBarColor = Colors.transparent;
    }
  }

  @override
  Widget view(BuildContext context) {
    return AppBar(
      key: widget.key,
      backgroundColor: _appBarColor,
      actions: widget.actions,
      actionsIconTheme: widget.actionsIconTheme,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      bottom: widget.bottom,
      bottomOpacity: widget.bottomOpacity,
      centerTitle: widget.centerTitle,
      clipBehavior: widget.clipBehavior,
      elevation: widget.elevation,
      excludeHeaderSemantics: widget.excludeHeaderSemantics,
      flexibleSpace: widget.flexibleSpace,
      forceMaterialTransparency: widget.forceMaterialTransparency,
      foregroundColor: widget.foregroundColor,
      iconTheme: widget.iconTheme,
      leading: widget.leading,
      leadingWidth: widget.leadingWidth,
      notificationPredicate: widget.notificationPredicate,
      primary: widget.primary,
      scrolledUnderElevation: widget.scrolledUnderElevation,
      shadowColor: widget.shadowColor,
      shape: widget.shape,
      surfaceTintColor: widget.surfaceTintColor,
      systemOverlayStyle: widget.systemOverlayStyle,
      title: widget.title,
      titleSpacing: widget.titleSpacing,
      titleTextStyle: widget.titleTextStyle,
      toolbarHeight: widget.toolbarHeight,
      toolbarOpacity: widget.toolbarOpacity,
      toolbarTextStyle: widget.toolbarTextStyle,
    );
  }
}
