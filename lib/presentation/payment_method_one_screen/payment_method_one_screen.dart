import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/payment_method_one_bloc.dart';
import 'models/payment_method_one_model.dart';

class PaymentMethodOneScreen extends StatelessWidget {
  const PaymentMethodOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodOneBloc>(
      create: (context) => PaymentMethodOneBloc(
        const PaymentMethodOneState(
          paymentMethodOneModelObj: PaymentMethodOneModel(),
        ),
      )..add(PaymentMethodOneInitialEvent()),
      child: const PaymentMethodOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodOneBloc, PaymentMethodOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 19.v),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.h, vertical: 5.v),
                    decoration: AppDecoration.fillSecondaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 15.v,
                          width: 8.h,
                          margin: EdgeInsets.only(top: 4.v, bottom: 7.v),
                          onTap: () {
                            onTapImgArrowleftone(context);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 67.h, top: 3.v),
                          child: Text(
                            "lbl_confirm_payment".tr,
                            style: CustomTextStyles.titleMediumGray600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 35),
                  _buildStackPaymentDetails(context),
                  SizedBox(height: 21.v),
                  Text(
                    "lbl_payment_with".tr,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 18.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMobile,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 12.h, top: 10.v, bottom: 9.v),
                        child: Text(
                          "lbl_dana".tr,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 64),
                ],
              ),
            ),
            bottomNavigationBar: _buildConfirmButton(context),
          ),
        );
      },
    );
  }

  Widget _buildStackPaymentDetails(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 147.h,
              margin: EdgeInsets.only(top: 78.v, right: 49.h),
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
              padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 16.v),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_payment_detail".tr,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Row(
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
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "lbl_studio_1".tr,
                                  style: CustomTextStyles.bodySmall12,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "msg_saturday_28_jun".tr,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  "lbl_14_30".tr,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "lbl_e11_e12_e13".tr,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "lbl_3_ticket".tr,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  GestureDetector(
                    onTap: () {
                      onTapColumnlinefifty(context);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.h, vertical: 8.v),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder13,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h, right: 14.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_total_ticket".tr,
                                        style: CustomTextStyles
                                            .bodySmallOnPrimaryContainer,
                                      ),
                                      Text(
                                        "lbl_convenience_fee".tr,
                                        style: CustomTextStyles
                                            .bodySmallOnPrimaryContainer,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "msg_rp_40_000_00_x".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer,
                                    ),
                                    Text(
                                      "lbl_rp_10_000_00".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Divider(color: appTheme.black900),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h, right: 14.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  Widget _buildConfirmButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      width: 191.h,
      text: "lbl_confirm".tr,
      margin: EdgeInsets.only(left: 111.h, right: 112.h, bottom: 32.v),
      buttonStyle: CustomButtonStyles.fillTealA,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
    );
  }

  void onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  void onTapColumnlinefifty(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.filmPageScreen);
  }
}
