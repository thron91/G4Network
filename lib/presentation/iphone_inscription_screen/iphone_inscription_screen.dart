import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';
import 'package:ronan_s_application2/widgets/custom_outlined_button.dart';
import 'package:ronan_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IphoneInscriptionScreen extends StatelessWidget {
  IphoneInscriptionScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

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
                      SizedBox(height: 77.v),
                      Text("Inscription", style: theme.textTheme.displaySmall),
                      SizedBox(height: 28.v),
                      SizedBox(
                          height: 293.v,
                          width: 289.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineOnPrimary1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder61),
                                    child: Container(
                                        height: 257.v,
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
                                          SizedBox(height: 16.v),
                                          CustomTextFormField(
                                              width: 231.h,
                                              controller: userNameController,
                                              hintText: "Username",
                                              textInputAction:
                                                  TextInputAction.done),
                                          SizedBox(height: 25.v),
                                          CustomOutlinedButton(
                                              height: 27.v,
                                              width: 118.h,
                                              text: "S’inscrire",
                                              buttonStyle: CustomButtonStyles
                                                  .outlineRedA,
                                              buttonTextStyle: CustomTextStyles
                                                  .labelMediumPrimary,
                                              onPressed: () {
                                                onTapSinscrire(context);
                                              })
                                        ])))
                          ])),
                      SizedBox(height: 75.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse10,
                          height: 225.v,
                          width: 156.h,
                          alignment: Alignment.centerRight)
                    ]))))));
  }

  /// Navigates to the iphoneConnexionScreen when the action is triggered.
  onTapSinscrire(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphoneConnexionScreen);
  }
}
