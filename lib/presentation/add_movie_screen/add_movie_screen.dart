import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_movie_bloc.dart';
import 'models/add_movie_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMovieScreen extends StatelessWidget {
  AddMovieScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddMovieBloc>(
      create: (context) =>
          AddMovieBloc(AddMovieState(addMovieModelObj: AddMovieModel()))
            ..add(AddMovieInitialEvent()),
      child: AddMovieScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 51.h),
              child: Column(
                children: [
                  _buildNameSection(context),
                  SizedBox(height: 16.v),
                  _buildEmailSection(context),
                  SizedBox(height: 16.v),
                  _buildPasswordSection(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildActionButtons(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleButton(),
    );
  }

  Widget _buildNameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_name".tr,
              style: CustomTextStyles.labelLargeBold,
            ),
          ),
          SizedBox(height: 5.v),
          BlocSelector<AddMovieBloc, AddMovieState, TextEditingController?>(
            selector: (state) => state.nameController,
            builder: (context, nameController) {
              return CustomTextFormField(
                controller: nameController,
                hintText: "msg_lala_hikmatul_maula".tr,
                hintStyle: CustomTextStyles.bodySmallGray5002,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_email".tr,
              style: CustomTextStyles.labelLargeBold,
            ),
          ),
          SizedBox(height: 5.v),
          BlocSelector<AddMovieBloc, AddMovieState, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "msg_lalahikma_gmail_com".tr,
                hintStyle: CustomTextStyles.bodySmallGray5002,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
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
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_password".tr,
              style: CustomTextStyles.labelLargeBold,
            ),
          ),
          SizedBox(height: 5.v),
          BlocSelector<AddMovieBloc, AddMovieState, TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                controller: passwordController,
                hintText: "lbl_lalamaula17".tr,
                hintStyle: CustomTextStyles.bodySmallGray5002,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
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

  Widget _buildActionButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 52.h, right: 52.h, bottom: 32.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 45.v,
            width: 130.h,
            text: "lbl_cancel".tr,
            buttonStyle: CustomButtonStyles.fillTealA,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
          SizedBox(width: 50.h),
          CustomElevatedButton(
            height: 45.v,
            width: 130.h,
            text: "lbl_save".tr,
            buttonStyle: CustomButtonStyles.fillTealA,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
