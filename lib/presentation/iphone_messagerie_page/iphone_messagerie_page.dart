import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/widgets/custom_outlined_button.dart';
import 'package:ronan_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IphoneMessageriePage extends StatelessWidget {
  IphoneMessageriePage({Key? key}) : super(key: key);

  TextEditingController twentyOneController = TextEditingController();

  TextEditingController twentyTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
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
                                  SizedBox(height: 36.v),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 51.h, right: 45.h),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryToRedA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtCanal(context);
                                          },
                                          child: Container(
                                              width: 33.adaptSize,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.h,
                                                  vertical: 10.v),
                                              decoration: AppDecoration
                                                  .outlineOnPrimary
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                              child: Text("Canal",
                                                  style: theme
                                                      .textTheme.labelSmall))))
                                ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse9,
                                height: 129.v,
                                width: 79.h,
                                margin:
                                    EdgeInsets.only(left: 55.h, bottom: 13.v))
                          ]),
                      SizedBox(height: 260.v),
                      Padding(
                          padding: EdgeInsets.only(right: 48.h),
                          child: _buildTwentyFour(context,
                              userName: "Texte",
                              userImage: "nom d’utilisateur")),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildTwentyFour(context,
                                    userName: "Texte",
                                    userImage: "nom d’utilisateur"),
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 8.h, top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: theme.colorScheme.onPrimary,
                                            width: 1.h)))
                              ])),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 23.h),
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
                                          CustomTextFormField(
                                              width: 243.h,
                                              controller: twentyOneController,
                                              hintText: "Texte",
                                              hintStyle: CustomTextStyles
                                                  .labelLargeDeeppurple500,
                                              alignment: Alignment.bottomCenter,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 14.h,
                                                      vertical: 7.v)),
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
                              padding: EdgeInsets.only(left: 23.h),
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
                                          CustomTextFormField(
                                              width: 243.h,
                                              controller: twentyTwoController,
                                              hintText: "Texte",
                                              hintStyle: CustomTextStyles
                                                  .labelLargeDeeppurple500,
                                              textInputAction:
                                                  TextInputAction.done,
                                              alignment: Alignment.bottomCenter,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 14.h,
                                                      vertical: 7.v)),
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
                          padding: EdgeInsets.only(right: 24.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildTwentyFour(context,
                                    userName: "Texte",
                                    userImage: "nom d’utilisateur"),
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 8.h, top: 26.v),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.h),
                                        border: Border.all(
                                            color: theme.colorScheme.onPrimary,
                                            width: 1.h)))
                              ])),
                      SizedBox(height: 53.v),
                      _buildCrivezVotreMessage(context),
                      SizedBox(height: 38.v),
                      Container(
                          height: 72.v,
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: theme.colorScheme.onPrimary))
                    ])))));
  }

  /// Section Widget
  Widget _buildCrivezVotreMessage(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: CustomOutlinedButton(text: "écrivez votre message")),
              CustomImageView(
                  imagePath: ImageConstant.imgEnvoyer11,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 17.h, top: 4.v, bottom: 4.v))
            ])));
  }

  /// Common widget
  Widget _buildTwentyFour(
    BuildContext context, {
    required String userName,
    required String userImage,
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
                  child: Text(userImage,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: appTheme.deepPurple500))))
        ]));
  }

  /// Navigates to the iphoneMessagerieTwoScreen when the action is triggered.
  onTapTxtCanal(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieTwoScreen);
  }
}
