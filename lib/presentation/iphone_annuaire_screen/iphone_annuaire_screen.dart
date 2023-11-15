import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_page/iphone_messagerie_page.dart';
import 'package:ronan_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class IphoneAnnuaireScreen extends StatelessWidget {
  IphoneAnnuaireScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 15.v),
                  Text("G4HUB", style: theme.textTheme.displaySmall),
                  SizedBox(height: 7.v),
                  Text("Annuaire", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 32.v),
                  _buildNProfilSection(context),
                  SizedBox(height: 34.v),
                  _buildEricPotterSection(context)
                ])),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildNProfilSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 345.v,
            width: 343.h,
            child: Stack(alignment: Alignment.centerRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse9,
                  height: 198.v,
                  width: 140.h,
                  alignment: Alignment.topLeft),
              Align(
                  alignment: Alignment.centerRight,
                  child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                          left: 4.h, top: 4.v, right: 4.h, bottom: 4.v),
                      strokeWidth: 4.h,
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            theme.colorScheme.onPrimary,
                            appTheme.red400
                          ]),
                      corners: Corners(
                          topLeft: Radius.circular(23),
                          topRight: Radius.circular(23),
                          bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23)),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 2.v),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 8.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("N° profil :",
                                        style: CustomTextStyles.titleSmall15)),
                                SizedBox(height: 3.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: _buildG(context, g: "G405",
                                        onTapUnsplashJmURdhtmNg: () {
                                      onTapUnsplashJmURdhtmNg(context);
                                    })),
                                SizedBox(height: 9.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Phillipe Dupont",
                                        style: theme.textTheme.headlineSmall)),
                                SizedBox(height: 1.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Coordinateur pédagogique",
                                        style: theme.textTheme.bodyMedium)),
                                SizedBox(height: 17.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 52.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgCall,
                                          height: 38.v,
                                          width: 40.h),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 13.h,
                                              top: 16.v,
                                              bottom: 4.v),
                                          child: Text("07 81 76 83 06",
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ])),
                                SizedBox(height: 13.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUserRed400,
                                              height: 36.adaptSize,
                                              width: 36.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 6.v)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgInstitutG4Couleur2,
                                              height: 30.v,
                                              width: 99.h,
                                              margin: EdgeInsets.only(
                                                  left: 147.h, top: 12.v))
                                        ]))
                              ]))))
            ])));
  }

  /// Section Widget
  Widget _buildEricPotterSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 336.v,
            width: 361.h,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse10,
                  height: 225.v,
                  width: 154.h,
                  alignment: Alignment.topRight),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                          left: 4.h, top: 4.v, right: 4.h, bottom: 4.v),
                      strokeWidth: 4.h,
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            theme.colorScheme.onPrimary,
                            appTheme.red400
                          ]),
                      corners: Corners(
                          topLeft: Radius.circular(23),
                          topRight: Radius.circular(23),
                          bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23)),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 13.v),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("N° profil :",
                                    style: CustomTextStyles.titleSmall15),
                                SizedBox(height: 3.v),
                                _buildG(context, g: "G498"),
                                SizedBox(height: 6.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Eric Potter",
                                        style: theme.textTheme.headlineSmall)),
                                SizedBox(height: 10.v)
                              ]))))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildG(
    BuildContext context, {
    required String g,
    Function? onTapUnsplashJmURdhtmNg,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 118.v),
          child: Text(g,
              style: CustomTextStyles.titleSmallRed400
                  .copyWith(color: appTheme.red400))),
      CustomImageView(
          imagePath: ImageConstant.imgUnsplashJmurdhtm7ng122x122,
          height: 122.adaptSize,
          width: 122.adaptSize,
          radius: BorderRadius.circular(61.h),
          margin: EdgeInsets.only(left: 43.h, top: 13.v),
          onTap: () {
            onTapUnsplashJmURdhtmNg!.call();
          })
    ]);
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

  /// Navigates to the iphoneProfilScreen when the action is triggered.
  onTapUnsplashJmURdhtmNg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneProfilScreen);
  }
}
