import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
// ignore: unused_import
import '../../widgets/custom_text_form_field.dart';
import 'bloc/payment_method_bloc.dart';
import 'models/payment_method_model.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodBloc>(
      create: (context) => PaymentMethodBloc(
        const PaymentMethodState(paymentMethodModelObj: PaymentMethodModel()),
      )..add(PaymentMethodInitialEvent()),
      child: const PaymentMethodScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 34.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPaymentSummary(context),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "msg_choose_payment_method".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 11.v),
              _buildPaymentMethodOption(
                context,
                imagePath: ImageConstant.imgMobile,
                label: "lbl_dana".tr,
              ),
              SizedBox(height: 14.v),
              _buildPaymentMethodOption(
                context,
                imagePath: ImageConstant.imgImage11,
                label: "lbl_gopay".tr,
              ),
              SizedBox(height: 14.v),
              _buildPaymentMethodOption(
                context,
                imagePath: ImageConstant.imgImage12,
                label: "lbl_ovo".tr,
              ),
              SizedBox(height: 14.v),
              _buildPaymentMethodOption(
                context,
                imagePath: ImageConstant.imgImage13,
                label: "lbl_link_aja".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: BlocSelector<PaymentMethodBloc, PaymentMethodState,
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

  Widget _buildPaymentSummary(BuildContext context) {
    return SizedBox(
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
              padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
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
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_byr_pramudya".tr,
                                style: CustomTextStyles.bodySmall10,
                              ),
                              SizedBox(height: 12.v),
                              Text(
                                "msg_1h_59m_2022_thriller".tr,
                                style: CustomTextStyles.bodySmall10,
                              ),
                              SizedBox(height: 12.v),
                              Text(
                                "lbl_2_tickets".tr,
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_total_payment".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "lbl_rp_100_000".tr,
                          style: theme.textTheme.titleSmall,
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
    );
  }

  Widget _buildPaymentMethodOption(BuildContext context,
      {required String imagePath, required String label}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow,
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 24.v,
            width: 24.h,
            margin: EdgeInsets.only(right: 12.h),
          ),
          Text(
            label,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
