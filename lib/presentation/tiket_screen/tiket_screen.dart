// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/tiket_bloc.dart';
import 'models/tiket_model.dart';

class TiketScreen extends StatelessWidget {
  const TiketScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TiketBloc>(
      create: (context) =>
          TiketBloc(const TiketState(tiketModelObj: TiketModel()))
            ..add(TiketInitialEvent()),
      child: const TiketScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TiketBloc, TiketState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppbar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 27.v),
              child: Column(
                children: [
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 617.v, bottom: 7.v),
                          child: Text(
                            "lbl_river_ran".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        const Spacer(flex: 60),
                        Padding(
                          padding: EdgeInsets.only(top: 617.v, bottom: 7.v),
                          child: Text(
                            "lbl_river_ran".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        const Spacer(flex: 39),
                        SizedBox(
                          height: 642.v,
                          width: 387.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 642.v,
                                  width: 360.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 21.h, vertical: 24.v),
                                          decoration:
                                              AppDecoration.fillGray.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder13,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 3.v),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 1.h),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      height: 28.v,
                                                      width: 105.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          21.h),
                                                              child: Text(
                                                                "lbl_lunas".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgSend,
                                                            height:
                                                                18.adaptSize,
                                                            width: 18.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        5.v),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 11.v),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text(
                                                        "msg_kkn_di_desa_penari"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .headlineSmall,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text(
                                                        "msg_show_this_ticket"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallBluegray200,
                                                      ),
                                                    ),
                                                    SizedBox(height: 15.v),
                                                    const Divider(),
                                                    SizedBox(height: 17.v),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Row(
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "lbl_bioskop"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBluegray200,
                                                              ),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Text(
                                                                "lbl_rajawali_cinema"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnErrorContainer,
                                                              ),
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "lbl_studio".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBluegray200,
                                                              ),
                                                              Text(
                                                                "lbl_1".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnErrorContainer,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 15.v),
                                                    Container(
                                                      width: 197.h,
                                                      margin: EdgeInsets.only(
                                                          left: 2.h,
                                                          right: 87.h),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "lbl_date".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBluegray200,
                                                              ),
                                                              SizedBox(
                                                                  height: 2.v),
                                                              Text(
                                                                "lbl_28_06_2024"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnErrorContainer,
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                "lbl_time".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBluegray200,
                                                              ),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Text(
                                                                "lbl_14_30".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnErrorContainer,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 17.v),
                                                    Container(
                                                      width: 227.h,
                                                      margin: EdgeInsets.only(
                                                          left: 2.h,
                                                          right: 57.h),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "lbl_name".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBluegray200,
                                                              ),
                                                              SizedBox(
                                                                  height: 2.v),
                                                              Text(
                                                                "lbl_lala_hikmatul_m"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnErrorContainer,
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "lbl_seat".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBluegray200,
                                                              ),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Text(
                                                                "lbl_e10_e11_e12"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeOnErrorContainer,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 17.v),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h,
                                                          right: 29.h),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "lbl_total_payment"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .labelLargeBluegray200,
                                                          ),
                                                          Text(
                                                            "lbl_rp_130_000".tr,
                                                            style: CustomTextStyles
                                                                .labelLargeOnErrorContainer,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 17.v),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h,
                                                          right: 31.h),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "lbl_booking_code"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .labelLargeBluegray200,
                                                          ),
                                                          Text(
                                                            "lbl_02973872819"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .labelLargeOnErrorContainer,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 28.v),
                                                    _buildDownloadTicket(
                                                        context),
                                                    SizedBox(height: 38.v),
                                                    Divider(
                                                      indent: 2.h,
                                                    ),
                                                    SizedBox(height: 17.v),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBarcode146261,
                                                      height: 110.v,
                                                      width: 275.h,
                                                      margin: EdgeInsets.only(
                                                          left: 8.h),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: 35.adaptSize,
                                                  width: 35.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 135.v),
                                                  decoration: BoxDecoration(
                                                    color: theme.colorScheme
                                                        .onPrimaryContainer,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            17.h),
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 44.v),
                  Padding(
                    padding: EdgeInsets.only(left: 74.h, right: 91.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgOutlineGeneralHome,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 5.v),
                        ),
                        _buildTicketButton(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgOutlineGeneralClock,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.only(
                              left: 12.h, top: 5.v, bottom: 5.v),
                        ),
                        const Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 5.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 65.v,
      centerTitle: true,
      title: AppbarTitle(text: "lbl_ticket".tr),
      styleType: Style.bgFill,
    );
  }

  Widget _buildDownloadTicket(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_download_ticket".tr,
      margin: EdgeInsets.only(left: 2.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
      buttonTextStyle: CustomTextStyles.titleSmallPoppins,
    );
  }

  Widget _buildTicketButton(BuildContext context) {
    return CustomElevatedButton(
      height: 38.v,
      width: 85.h,
      text: "lbl_ticket2".tr,
      margin: EdgeInsets.only(left: 28.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgTicket,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
    );
  }
}

Widget _buildRowView(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: 360.h,
      margin: EdgeInsets.only(top: 472.v, bottom: 135.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(17.h),
            ),
          ),
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(17.h),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildConfirmedButton(BuildContext context) {
  return CustomElevatedButton(
    height: 28.v,
    width: 105.h,
    text: "lbl_confirmed".tr,
    buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
    buttonTextStyle: theme.textTheme.labelLarge!,
  );
}

Widget _buildConfirmed(BuildContext context) {
  return CustomElevatedButton(
    height: 28.v,
    width: 105.h,
    text: "lbl_confirmed".tr,
    buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
    buttonTextStyle: theme.textTheme.labelLarge!,
  );
}
