import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_page/iphone_messagerie_page.dart';
import 'package:ronan_s_application2/widgets/custom_bottom_bar.dart';

class IphoneProfilScreen extends StatelessWidget {
  IphoneProfilScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 15.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "G4HUB",
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 34.v),
                      child: Text(
                        "N° profil : ",
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 76.h,
                        bottom: 16.v,
                      ),
                      child: Text(
                        "Profil",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2.v,
                        bottom: 102.v,
                      ),
                      child: Text(
                        "G405",
                        style: CustomTextStyles.titleSmallRed400,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUnsplashJmurdhtm7ng,
                      height: 122.adaptSize,
                      width: 122.adaptSize,
                      radius: BorderRadius.circular(
                        61.h,
                      ),
                      margin: EdgeInsets.only(left: 81.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Phillipe Dupont",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Coordinateur pédagogique",
                  style: CustomTextStyles.titleSmallRed400,
                ),
              ),
              SizedBox(height: 53.v),
              Padding(
                padding: EdgeInsets.only(left: 51.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMail,
                      height: 36.v,
                      width: 35.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 13.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "P.Dupont@gmail.com",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              _buildRecentCalls(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentCalls(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 46.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 38.v,
                bottom: 194.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCall,
                    height: 38.v,
                    width: 40.h,
                  ),
                  SizedBox(height: 45.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgTrash,
                    height: 38.v,
                    width: 43.h,
                  ),
                ],
              ),
            ),
            Container(
              height: 353.v,
              width: 293.h,
              margin: EdgeInsets.only(left: 11.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 54.v),
                      child: Text(
                        "07 81 76 83 06",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 136.v),
                      child: Text(
                        "Paris",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFill25,
                    height: 353.v,
                    width: 226.h,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
