import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
// ignore: unused_import
import 'models/login_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc()..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 51.h, vertical: 137.v),
              child: Column(
                children: [
                  _buildEmailSection(context),
                  SizedBox(height: 15.v),
                  _buildPasswordSection(context),
                  SizedBox(height: 36.v),
                  CustomElevatedButton(
                    width: 199.h,
                    text: "lbl_login2".tr,
                    buttonStyle: CustomButtonStyles.fillOrange,
                    buttonTextStyle: CustomTextStyles.titleMediumExtraBold,
                  ),
                  SizedBox(height: 35.v),
                  Text(
                    "msg_do_you_have_account".tr,
                    style: CustomTextStyles.labelLargeBold,
                  ),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                    width: 199.h,
                    text: "lbl_register".tr,
                    buttonStyle: CustomButtonStyles.fillOrange,
                    buttonTextStyle: CustomTextStyles.titleMediumExtraBold,
                  ),
                  SizedBox(height: 15.v),
                  Text(
                    "lbl_login_with".tr,
                    style: CustomTextStyles.labelLargeBold,
                  ),
                  SizedBox(height: 14.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage1550x50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage1750x50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleOne(
        text: "lbl_login2".tr,
        margin: EdgeInsets.only(left: 45.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(horizontal: 42.h, vertical: 15.v),
        ),
      ],
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_email".tr,
              style: CustomTextStyles.labelLargeBold,
            ),
          ),
          SizedBox(height: 5.v),
          BlocSelector<LoginBloc, LoginState, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "msg_input_your_email".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || !isValidEmail(value, isRequired: true)) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_password".tr,
              style: CustomTextStyles.labelLargeBold,
            ),
          ),
          SizedBox(height: 5.v),
          BlocSelector<LoginBloc, LoginState, TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                controller: passwordController,
                hintText: "lbl_input_password".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      !isValidPassword(value, isRequired: true)) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
