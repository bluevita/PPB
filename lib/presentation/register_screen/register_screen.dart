import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/register_bloc.dart';
import 'models/register_model.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) =>
          RegisterBloc(const RegisterState(registerModelObj: RegisterModel()))
            ..add(RegisterInitialEvent()),
      child: RegisterScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 51.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildNameInputSection(context),
                    SizedBox(height: 16.v),
                    _buildEmailInputSection(context),
                    SizedBox(height: 15.v),
                    _buildPasswordInputSection(context),
                    SizedBox(height: 36.v),
                    CustomElevatedButton(
                      width: 199.h,
                      text: "lbl_register".tr,
                      buttonStyle: CustomButtonStyles.fillOrange,
                      buttonTextStyle: CustomTextStyles.titleMediumExtraBold,
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      "lbl_register_with".tr,
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
                            imagePath: ImageConstant.imgImage15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage17,
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
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleOne(
        text: "lbl_registrasi".tr,
        margin: EdgeInsets.only(left: 45.h),
      ),
    );
  }

  Widget _buildNameInputSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "lbl_name".tr,
            style: CustomTextStyles.labelLargeBold,
          ),
        ),
        SizedBox(height: 5.v),
        BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
          selector: (state) => state.nameController,
          builder: (context, nameController) {
            return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_input_your_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildEmailInputSection(BuildContext context) {
    return Column(
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
        BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
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
    );
  }

  Widget _buildPasswordInputSection(BuildContext context) {
    return Column(
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
        BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
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
    );
  }
}
