// ignore_for_file: unused_import

import 'package:bioskop/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/reservasi_bloc.dart';
import 'models/reservasi_item_model.dart';
import 'models/reservasi_model.dart';
import 'widgets/reservasi_item_widget.dart';

class ReservasiScreen extends StatelessWidget {
  const ReservasiScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReservasiBloc>(
      create: (context) =>
          ReservasiBloc(ReservasiState(reservasiModelObj: ReservasiModel()))
            ..add(ReservasiInitialEvent()),
      child: ReservasiScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: SizedBox(
              height: 790.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  _buildMainStack(context),
                  _buildPopulationColumn(context),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 139.v),
                      child: Text(
                        "lbl_river_ran".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
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
      height: 57.v,
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 62.h, top: 10.v, bottom: 13.v),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "lbl_reservation".tr),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTicket,
          margin: EdgeInsets.fromLTRB(67.h, 10.v, 67.h, 9.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  Widget _buildTimeAndDateSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 148.h),
            child: Text(
              "lbl_time_and_date".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          SizedBox(height: 136.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildTimeCard("lbl_14_302".tr),
                _buildTimeCard("lbl_13_30".tr, leftMargin: 95.h),
                _buildTimeCard("lbl_14_302".tr,
                    leftMargin: 17.h, isSelected: true),
                _buildTimeCard("lbl_17_30".tr, leftMargin: 161.h),
              ],
            ),
          ),
          SizedBox(height: 37.v),
          Padding(
            padding: EdgeInsets.only(left: 102.h, right: 41.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      "lbl_total_payment".tr,
                      style: CustomTextStyles.labelMediumGray600,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_rp_120_000".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                  ],
                ),
                SizedBox(width: 63.h),
                CustomElevatedButton(
                  height: 53.v,
                  width: 181.h,
                  text: "lbl_payment".tr,
                  buttonStyle: CustomButtonStyles.fillTealATL26,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumOnPrimaryContainer,
                  onPressed: () {
                    onTapPayment(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeCard(String text,
      {double leftMargin = 0, bool isSelected = false}) {
    return Container(
      width: 61.h,
      margin: EdgeInsets.only(left: leftMargin),
      padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
      decoration: isSelected
          ? AppDecoration.outlineCyanA
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5)
          : AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
      child: Text(
        text,
        style: CustomTextStyles.labelLargeGray5002,
      ),
    );
  }

  Widget _buildMainStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 395.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 96.v),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle64132x131,
                      height: 132.v,
                      width: 131.h,
                      radius: BorderRadius.circular(10.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle65,
                      height: 132.v,
                      width: 131.h,
                      radius: BorderRadius.circular(10.h),
                      margin: EdgeInsets.only(left: 28.h),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 395.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 139.v),
                        child: Text(
                          "lbl_river_ran".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 395.v,
                        width: 472.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 395.v,
                                width: 413.h,
                                margin: EdgeInsets.only(right: 1.h),
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray90002,
                                  borderRadius: BorderRadius.circular(51.h),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          appTheme.black900.withOpacity(0.34),
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(0, 1.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 291.v,
                                width: double.maxFinite,
                                margin: EdgeInsets.only(top: 36.v),
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: BlocBuilder<ReservasiBloc,
                                          ReservasiState>(
                                        builder: (context, state) {
                                          return Container(
                                            height: 70.v,
                                            width: 444.h,
                                            margin: EdgeInsets.only(top: 57.v),
                                            child: EasyDateTimeLine(
                                              initialDate: state
                                                      .selectedDatesFromCalendar ??
                                                  DateTime.now(),
                                              locale: 'en_US',
                                              headerProps: EasyHeaderProps(
                                                  selectedDateFormat:
                                                      SelectedDateFormat
                                                          .fullDateDMY,
                                                  monthPickerType:
                                                      MonthPickerType.switcher,
                                                  showHeader: false),
                                              dayProps: EasyDayProps(
                                                width: 48.h,
                                                height: 70.v,
                                              ),
                                              onDateChange: (selectedDate) {
                                                state.selectedDatesFromCalendar =
                                                    selectedDate;
                                              },
                                              itemBuilder: (context,
                                                  dayNumber,
                                                  dayName,
                                                  monthName,
                                                  fullDate,
                                                  isSelected) {
                                                return isSelected
                                                    ? Container(
                                                        width: 48.h,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 8.h,
                                                                vertical: 7.v),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              appTheme.tealA100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.h),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              dayName
                                                                  .toString(),
                                                              style: CustomTextStyles
                                                                  .labelLargeOnPrimaryContainer
                                                                  .copyWith(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                              ),
                                                            ),
                                                            Container(
                                                              width:
                                                                  31.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 1.v,
                                                                      bottom:
                                                                          2.v),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          7.h,
                                                                      vertical:
                                                                          4.v),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: appTheme
                                                                    .gray50,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15.h),
                                                              ),
                                                              child: Text(
                                                                dayNumber
                                                                    .toString(),
                                                                style: CustomTextStyles
                                                                    .labelLargeOnPrimaryContainer
                                                                    .copyWith(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    : Container(
                                                        width: 48.h,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    11.h,
                                                                vertical: 7.v),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .blueGray90001,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.h),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              dayName
                                                                  .toString(),
                                                              style: CustomTextStyles
                                                                  .labelLargeGray100
                                                                  .copyWith(
                                                                color: appTheme
                                                                    .gray100,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 7.v,
                                                                      right:
                                                                          4.h,
                                                                      bottom:
                                                                          7.v),
                                                              child: Text(
                                                                dayNumber
                                                                    .toString(),
                                                                style: CustomTextStyles
                                                                    .labelLargeGray100
                                                                    .copyWith(
                                                                  color: appTheme
                                                                      .gray100,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                              },
                                            ),
                                          );
                                        },
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopulationColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup26,
              height: 45.v,
              width: 331.h,
            ),
            SizedBox(height: 19.v),
            CustomImageView(
              imagePath: ImageConstant.imgPenduduk,
              height: 255.v,
              width: 353.h,
            ),
            SizedBox(height: 21.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 54.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLegendItem(appTheme.gray80001, "lbl_empty".tr),
                  Spacer(),
                  _buildLegendItem(appTheme.tealA100, "lbl_choose".tr),
                  SizedBox(width: 29.h),
                  _buildLegendItem(theme.colorScheme.onPrimary.withOpacity(1),
                      "lbl_filled".tr),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          height: 17.adaptSize,
          width: 17.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.h),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h, bottom: 1.v),
          child: Text(
            text,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
        ),
      ],
    );
  }

  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  void onTapPayment(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.tiketScreen);
  }
}
