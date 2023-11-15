import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_page/iphone_messagerie_page.dart';
import 'package:ronan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:ronan_s_application2/widgets/custom_text_form_field.dart';

class IphoneBonPlansScreen extends StatelessWidget {
  IphoneBonPlansScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

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
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse9,
                    height: 177.v,
                    width: 225.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse10Onprimary,
                    height: 379.v,
                    width: 314.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 29.v),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 27.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillDeepPurple.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder24,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 1.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 23.h,
                                    right: 11.h,
                                  ),
                                  child: _buildUser(
                                    context,
                                    pseudo: "Pseudo",
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 179.h,
                                    margin: EdgeInsets.only(left: 53.h),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 53.h,
                                      right: 10.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 8.v),
                                          child: Text(
                                            "Voir les réponses",
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgBoutonCommentaire,
                                          height: 12.v,
                                          width: 16.h,
                                          margin: EdgeInsets.only(top: 4.v),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFrame,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 9.h,
                                            top: 4.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHeartBroken,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 8.h,
                                            top: 4.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Divider(),
                                SizedBox(height: 8.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 22.h,
                                    right: 11.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                        height: 27.v,
                                        width: 33.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10.h,
                                          top: 6.v,
                                          bottom: 5.v,
                                        ),
                                        child: Text(
                                          "Pseudo",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgBoutonShare,
                                        height: 13.v,
                                        width: 14.h,
                                        margin: EdgeInsets.only(
                                          top: 8.v,
                                          bottom: 5.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 53.h,
                                      right: 10.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 41.v,
                                          width: 181.h,
                                          margin: EdgeInsets.only(bottom: 5.v),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: SizedBox(
                                                  width: 179.h,
                                                  child: Text(
                                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  "Voir les réponses",
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgBoutonCommentaire,
                                          height: 12.v,
                                          width: 16.h,
                                          margin: EdgeInsets.only(
                                            left: 7.h,
                                            top: 33.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFrame,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 9.h,
                                            top: 33.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHeartBroken,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 8.h,
                                            top: 33.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Divider(),
                                SizedBox(height: 13.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 23.h,
                                    right: 11.h,
                                  ),
                                  child: _buildUser(
                                    context,
                                    pseudo: "Pseudo",
                                  ),
                                ),
                                SizedBox(height: 33.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 53.h,
                                      right: 10.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 163.h,
                                          margin: EdgeInsets.only(bottom: 2.v),
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                            maxLines: 5,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgBoutonCommentaire,
                                          height: 12.v,
                                          width: 16.h,
                                          margin: EdgeInsets.only(
                                            left: 23.h,
                                            top: 65.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFrame,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 9.h,
                                            top: 65.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHeartBroken,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 8.h,
                                            top: 65.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Divider(),
                                SizedBox(height: 17.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 23.h,
                                    right: 11.h,
                                  ),
                                  child: _buildUser(
                                    context,
                                    pseudo: "Pseudo",
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 59.h,
                                      right: 10.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 163.h,
                                          margin: EdgeInsets.only(bottom: 3.v),
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                            maxLines: 7,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgBoutonCommentaire,
                                          height: 14.v,
                                          width: 16.h,
                                          margin: EdgeInsets.only(
                                            left: 19.h,
                                            top: 94.v,
                                            bottom: 2.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFrame,
                                          height: 16.v,
                                          width: 14.h,
                                          margin: EdgeInsets.only(
                                            left: 9.h,
                                            top: 94.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgHeartBroken,
                                          height: 16.v,
                                          width: 14.h,
                                          margin: EdgeInsets.only(
                                            left: 8.h,
                                            top: 94.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 72.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 28.h,
                      bottom: 84.v,
                    ),
                    child: CustomTextFormField(
                      width: 297.h,
                      controller: messageController,
                      hintText: "écrivez votre message",
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEnvoyer11,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 27.h,
                      bottom: 88.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.v),
                      child: Text(
                        "G4HUB",
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 70.v),
                      child: Text(
                        "Bons plans",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 44.h),
          child: _buildBottomBar(context),
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

  /// Common widget
  Widget _buildUser(
    BuildContext context, {
    required String pseudo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 27.v,
          width: 33.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 6.v,
            bottom: 5.v,
          ),
          child: Text(
            pseudo,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgBoutonShare,
          height: 13.v,
          width: 14.h,
          margin: EdgeInsets.only(top: 14.v),
        ),
      ],
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
