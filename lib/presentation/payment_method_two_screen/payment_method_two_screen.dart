// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/payment_method_two_bloc.dart';
import 'models/payment_method_two_model.dart';

class PaymentMethodTwoScreen extends StatelessWidget {
  const PaymentMethodTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodTwoBloc>(
      create: (context) => PaymentMethodTwoBloc(const PaymentMethodTwoState()),
      child: const PaymentMethodTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 6.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPaymentTimerSection(context),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "msg_choose_payment_method".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                margin: EdgeInsets.only(left: 1.h, right: 6.h),
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder13,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage10,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("lbl_dana".tr,
                          style: theme.textTheme.titleSmall),
                    ),
                    const Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 15.v,
                      width: 8.h,
                      margin: EdgeInsets.only(right: 7.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                margin: EdgeInsets.only(left: 1.h, right: 6.h),
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder13,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage11,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("lbl_gopay".tr,
                          style: theme.textTheme.titleSmall),
                    ),
                    const Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 15.v,
                      width: 8.h,
                      margin: EdgeInsets.only(right: 7.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                margin: EdgeInsets.only(left: 1.h, right: 6.h),
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder13,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage12,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      radius: BorderRadius.circular(19.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child:
                          Text("lbl_ovo".tr, style: theme.textTheme.titleSmall),
                    ),
                    const Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 15.v,
                      width: 8.h,
                      margin: EdgeInsets.only(right: 7.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                margin: EdgeInsets.only(left: 1.h, right: 6.h),
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder13,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage13,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      radius: BorderRadius.circular(19.h),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 12.h, top: 11.v, bottom: 8.v),
                      child: Text("lbl_link_aja".tr,
                          style: theme.textTheme.titleSmall),
                    ),
                    const Spacer(),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 11.v, right: 7.h, bottom: 11.v),
                      child: Column(
                        children: [
                          SizedBox(height: 1.v),
                          Divider(color: appTheme.tealA100),
                          SizedBox(height: 5.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: BlocSelector<PaymentMethodTwoBloc, PaymentMethodTwoState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchviewOne(
            hintText: "lbl_payment_method".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  Widget _buildPaymentTimerSection(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_finish_your_payment".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 3.v),
        SizedBox(
          height: 230.v,
          width: 334.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 147.h,
                  margin: EdgeInsets.only(top: 42.v, right: 49.h),
                  child: Text(
                    "msg_blablablablalsa".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
                  decoration: AppDecoration.fillSecondaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle67,
                            height: 102.v,
                            width: 100.h,
                            radius: BorderRadius.circular(10.h),
                            margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_kkn_di_desa_penari".tr,
                                  style: theme.textTheme.titleMedium,
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "lbl_studio_1".tr,
                                  style: CustomTextStyles.bodySmall12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.v),
                      Text("msg_saturday_28_jun".tr,
                          style: theme.textTheme.labelMedium),
                      Text("lbl_14_30".tr, style: theme.textTheme.labelMedium),
                      SizedBox(height: 1.v),
                      Text("lbl_e11_e12_e13".tr,
                          style: theme.textTheme.labelMedium),
                      SizedBox(height: 1.v),
                      Text("lbl_3_ticket".tr, style: theme.textTheme.bodySmall),
                      SizedBox(height: 8.v),
                      GestureDetector(
                        onTap: () {
                          onTapColumntotaltick(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.h, vertical: 8.v),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder13,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 1.v),
                              SizedBox(
                                height: 42.v,
                                width: 279.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text(
                                          "lbl_total_ticket".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, right: 14.h),
                                        child: Text(
                                          "msg_rp_40_000_00_x".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: 14.h, bottom: 3.v),
                                        child: Text(
                                          "lbl_rp_10_000_00".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 10.h, right: 14.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_total_payment".tr,
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryContainerBold,
                                    ),
                                    Text(
                                      "lbl_rp_130_000_00".tr,
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryContainerBold,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.v),
                            ],
                          ),
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
    );
  }

  void onTapColumntotaltick(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.filmPageScreen);
  }
}
