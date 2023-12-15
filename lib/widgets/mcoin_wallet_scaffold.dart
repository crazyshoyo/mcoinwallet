import 'package:flutter/material.dart';
import 'package:mcoin_wallet/constants/appcolors.dart';

class McoinWalletScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Color? backgroundColor;
  final Color? safeAreaColor;
  final PreferredSizeWidget? appBar;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final bool extendBodyBehindAppBar;
  final bool isLoading;
  final Widget? floatingActionButton;
  final bool bottom;
  final bool extendBody;
  final bool top;
  final Color? safeArea;

  const McoinWalletScaffold(
      {Key? key,
      required this.body,
      this.backgroundColor,
      this.bottomNavigationBar,
      this.drawer,
      this.appBar,
      this.safeAreaColor,
      this.endDrawer,
      this.scaffoldKey,
      this.extendBodyBehindAppBar = false,
      this.isLoading = false,
      this.floatingActionButton,
      this.bottom = true,
      this.top = true,
      this.extendBody = true,
      this.safeArea})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: safeArea ?? AppColors.scaffold,
      child: SafeArea(
        top: top,
        bottom: bottom,
        child: Scaffold(
          endDrawerEnableOpenDragGesture: false,
          drawerEnableOpenDragGesture: false,
          endDrawer: endDrawer,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          resizeToAvoidBottomInset: true,
          appBar: appBar,
          body: body,
          key: scaffoldKey,
          bottomNavigationBar: bottomNavigationBar,
          drawer: drawer,
          backgroundColor: backgroundColor ?? AppColors.scaffold,
          extendBody: extendBody,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
