import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/widgets/custom_outlined_button.dart';
import 'package:ronan_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IphoneConnexionScreen extends StatelessWidget {
  IphoneConnexionScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse9Onprimary,
                          height: 167.v,
                          width: 91.h,
                          alignment: Alignment.centerLeft),
                      SizedBox(height: 87.v),
                      Text("Connexion", style: theme.textTheme.displaySmall),
                      SizedBox(height: 30.v),
                      SizedBox(
                          height: 259.v,
                          width: 289.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.h, vertical: 12.v),
                                    decoration: AppDecoration.outlineOnPrimary1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder61),
                                    child: Container(
                                        height: 227.v,
                                        width: 253.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius:
                                                BorderRadius.circular(61.h),
                                            border: Border.all(
                                                color:
                                                    theme.colorScheme.onPrimary,
                                                width: 3.h))))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 29.h, top: 21.v, right: 29.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgInstitutG4Couleur2,
                                              height: 35.v,
                                              width: 116.h),
                                          SizedBox(height: 4.v),
                                          CustomTextFormField(
                                              width: 231.h,
                                              controller: emailController,
                                              hintText: "Email",
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.emailAddress),
                                          SizedBox(height: 15.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 14.h,
                                                  vertical: 4.v),
                                              decoration: AppDecoration
                                                  .outlineRedA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h),
                                                        child: Text(
                                                            "Mot de passe",
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)),
                                                    SizedBox(height: 4.v),
                                                    SizedBox(
                                                        width: 195.h,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
                                                            indent: 4.h))
                                                  ])),
                                          SizedBox(height: 30.v),
                                          CustomOutlinedButton(
                                              height: 27.v,
                                              width: 118.h,
                                              text: "Se connecter",
                                              buttonStyle: CustomButtonStyles
                                                  .outlineRedA,
                                              buttonTextStyle: CustomTextStyles
                                                  .labelMediumPrimary,
                                              onPressed: () {
                                                onTapSeConnecter(context);
                                              })
                                        ])))
                          ])),
                      SizedBox(height: 97.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse10,
                          height: 225.v,
                          width: 156.h,
                          alignment: Alignment.centerRight)
                    ]))))));
  }

  /// Navigates to the iphoneMessagerieContainerScreen when the action is triggered.
  onTapSeConnecter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneMessagerieContainerScreen);
  }
}
