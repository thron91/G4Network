import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_page/iphone_messagerie_page.dart';
import 'package:ronan_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class IphoneMessagerieContainerScreen extends StatelessWidget {
  IphoneMessagerieContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphoneMessageriePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Chatbulle1:
        return AppRoutes.iphoneMessageriePage;
      case BottomBarEnum.Ordredujour1:
        return "/";
      case BottomBarEnum.Etiquette1:
        return "/";
      case BottomBarEnum.Fildactualite1:
        return "/";
      case BottomBarEnum.Annuaire1:
        return "/";
      case BottomBarEnum.Livre2:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphoneMessageriePage:
        return IphoneMessageriePage();
      default:
        return DefaultWidget();
    }
  }
}
