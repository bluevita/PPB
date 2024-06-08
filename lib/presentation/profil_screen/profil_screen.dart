import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/profil_bloc.dart';
import 'models/profil_model.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilBloc>(
      create: (context) =>
          ProfilBloc(const ProfilState(profilModelObj: ProfilModel()))
            ..add(ProfilInitialEvent()),
      child: const ProfilScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilBloc, ProfilState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 27.v),
              child: Column(
                children: [
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(top: 1.v),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                radius: BorderRadius.circular(20.h),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                radius: BorderRadius.circular(20.h),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_lala_hikmatul_maula".tr,
                                style: CustomTextStyles.titleSmallPoppins,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "msg_lalahikma_gmail_com".tr,
                                style: CustomTextStyles.bodySmallOnPrimary11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Container(
                    margin: EdgeInsets.only(right: 3.h),
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    decoration: AppDecoration.fillTealA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUpload,
                          height: 87.v,
                          width: 64.h,
                          margin: EdgeInsets.only(top: 12.v),
                        ),
                        Container(
                          width: 214.h,
                          margin: EdgeInsets.only(left: 11.h),
                          // Add your child widget here
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 46.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_account".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    margin: EdgeInsets.only(right: 3.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                    decoration: AppDecoration.outlineBlack9001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.fillCyan.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLockOnerror,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 11.v, bottom: 8.v),
                          child: Text(
                            "lbl_update_profile".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        const Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 15.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                              top: 10.v, right: 7.h, bottom: 12.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildGeneralSection(context),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.h, right: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgOutlineGeneralHome,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 5.v),
                          ),
                          const Spacer(flex: 50),
                          CustomImageView(
                            imagePath: ImageConstant.imgTicket,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 5.v),
                            onTap: () {
                              onTapImgTicketone(context);
                            },
                          ),
                          const Spacer(flex: 50),
                          CustomImageView(
                            imagePath: ImageConstant.imgOutlineGeneralClock,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 5.v),
                          ),
                          CustomElevatedButton(
                            height: 38.v,
                            width: 85.h,
                            text: "lbl_profile2".tr,
                            margin: EdgeInsets.only(left: 28.h),
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.fillBlueGray,
                          ),
                        ],
                      ),
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 65.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_profile".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  Widget _buildGeneralSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_ganeral".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            margin: EdgeInsets.only(right: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.fillCyan.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearchGray800,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 11.v, bottom: 8.v),
                  child: Text(
                    "lbl_log_out".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                const Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightTealA100,
                  height: 15.v,
                  width: 8.h,
                  margin: EdgeInsets.only(top: 10.v, right: 7.h, bottom: 12.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapImgTicketone(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.tiketScreen);
  }
}
