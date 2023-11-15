import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_page/iphone_messagerie_page.dart';
import 'package:ronan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:ronan_s_application2/widgets/custom_outlined_button.dart';
import 'package:ronan_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IphoneMessagerieTwoScreen extends StatelessWidget {
  IphoneMessagerieTwoScreen({Key? key}) : super(key: key);

  TextEditingController editTextTwoController = TextEditingController();

  TextEditingController editTextThreeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 28.v),
                                child: Column(children: [
                                  Text("G4HUB",
                                      style: theme.textTheme.displaySmall),
                                  SizedBox(height: 4.v),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 19.h, right: 13.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 3.h, vertical: 8.v),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryToRedA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder48),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtParis(context);
                                                },
                                                child: Text("Paris",
                                                    style: CustomTextStyles
                                                        .labelMediumPrimary)),
                                            SizedBox(height: 9.v),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtAll(context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 8.v,
                                                                  bottom: 11.v),
                                                          child: Text("All",
                                                              style: CustomTextStyles
                                                                  .labelMediumPrimary))),
                                                  _buildCanalButton(context),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtLyon(context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 4.h,
                                                                  top: 8.v,
                                                                  bottom: 10.v),
                                                          child: Text("Lyon",
                                                              style: CustomTextStyles
                                                                  .labelMediumPrimary)))
                                                ]),
                                            SizedBox(height: 9.v),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtMarseille(context);
                                                },
                                                child: Text("Marseille",
                                                    style: CustomTextStyles
                                                        .labelMediumPrimary))
                                          ]))
                                ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse9,
                                height: 129.v,
                                width: 79.h,
                                margin:
                                    EdgeInsets.only(left: 55.h, bottom: 45.v))
                          ]),
                      SizedBox(height: 228.v),
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildFiftyOne(context,
                                    userName: "Texte",
                                    userText: "nom d’utilisateur"),
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 8.h, top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple500,
                                            width: 1.h)))
                              ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildFiftyOne(context,
                                    userName: "Texte",
                                    userText: "nom d’utilisateur"),
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 8.h, top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple500,
                                            width: 1.h)))
                              ])),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Row(children: [
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple500,
                                            width: 1.h))),
                                Container(
                                    height: 42.v,
                                    width: 243.h,
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          _buildEditTextTwo(context),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h),
                                                  child: Text(
                                                      "nom d’utilisateur",
                                                      style: theme.textTheme
                                                          .labelMedium)))
                                        ]))
                              ]))),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Row(children: [
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple500,
                                            width: 1.h))),
                                Container(
                                    height: 42.v,
                                    width: 243.h,
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          _buildEditTextThree(context),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h),
                                                  child: Text(
                                                      "nom d’utilisateur",
                                                      style: theme.textTheme
                                                          .labelMedium)))
                                        ]))
                              ]))),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildFiftyOne(context,
                                    userName: "Texte",
                                    userText: "nom d’utilisateur"),
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 8.h, top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple500,
                                            width: 1.h)))
                              ])),
                      SizedBox(height: 53.v),
                      _buildEnvoyerElevenRow(context),
                      SizedBox(height: 38.v),
                      Container(
                          height: 72.v,
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: theme.colorScheme.onPrimary))
                    ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildCanalButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 33.v,
        width: 33.h,
        text: "Canal",
        margin: EdgeInsets.only(left: 10.h),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.labelSmall!,
        onPressed: () {
          onTapCanalButton(context);
        });
  }

  /// Section Widget
  Widget _buildEditTextTwo(BuildContext context) {
    return CustomTextFormField(
        width: 243.h,
        controller: editTextTwoController,
        hintText: "Texte",
        hintStyle: CustomTextStyles.labelLargeDeeppurple500,
        alignment: Alignment.bottomCenter,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v));
  }

  /// Section Widget
  Widget _buildEditTextThree(BuildContext context) {
    return CustomTextFormField(
        width: 243.h,
        controller: editTextThreeController,
        hintText: "Texte",
        hintStyle: CustomTextStyles.labelLargeDeeppurple500,
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v));
  }

  /// Section Widget
  Widget _buildWriteMessageButton(BuildContext context) {
    return Expanded(child: CustomOutlinedButton(text: "écrivez votre message"));
  }

  /// Section Widget
  Widget _buildEnvoyerElevenRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 31.h, right: 24.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildWriteMessageButton(context),
              CustomImageView(
                  imagePath: ImageConstant.imgEnvoyer11,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 4.v))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFiftyOne(
    BuildContext context, {
    required String userName,
    required String userText,
  }) {
    return SizedBox(
        height: 42.v,
        width: 243.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: 243.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 5.v),
                  decoration: AppDecoration.outlineDeepPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Text(userName,
                      style: theme.textTheme.labelLarge!
                          .copyWith(color: theme.colorScheme.primary)))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 14.h),
                  child: Text(userText,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: appTheme.deepPurple500))))
        ]));
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

  /// Navigates to the iphoneMessagerieContainerScreen when the action is triggered.
  onTapTxtParis(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieContainerScreen);
  }

  /// Navigates to the iphoneMessagerieContainerScreen when the action is triggered.
  onTapTxtAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieContainerScreen);
  }

  /// Navigates to the iphoneMessagerieContainerScreen when the action is triggered.
  onTapCanalButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieContainerScreen);
  }

  /// Navigates to the iphoneMessagerieContainerScreen when the action is triggered.
  onTapTxtLyon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieContainerScreen);
  }

  /// Navigates to the iphoneMessagerieContainerScreen when the action is triggered.
  onTapTxtMarseille(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieContainerScreen);
  }
}
