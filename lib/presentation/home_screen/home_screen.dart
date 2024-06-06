// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/listdoctorname_item_model.dart';
import 'models/listtitle_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/listdoctorname_item_widget.dart';
import 'widgets/listtitle_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
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
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            children: [
              BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    width: 282.h,
                    controller: searchController,
                    hintText: "lbl_seacrh_film".tr,
                    contentPadding:
                        EdgeInsets.only(top: 11.v, right: 30.h, bottom: 11.v),
                    borderDecoration: SearchViewStyleHelper.fillPrimary,
                    fillColor: theme.colorScheme.primary,
                  );
                },
              ),
              SizedBox(height: 27.v),
              _buildGenreSection(context),
              SizedBox(height: 30.v),
              _buildNowPlayingSection(context),
              SizedBox(height: 31.v),
              _buildPopularSection(context),
              SizedBox(height: 28.v),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 80.h,
      leading: Container(
        height: 40.adaptSize,
        width: 40.adaptSize,
        margin: EdgeInsets.only(left: 40.h, top: 7.v, bottom: 8.v),
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
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
                text: "lbl_hi".tr, margin: EdgeInsets.only(right: 121.h)),
            AppbarSubtitle(text: "msg_lala_hikmatul_maula".tr),
          ],
        ),
      ),
    );
  }

  Widget _buildGenreSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_genre".tr,
            style: CustomTextStyles.titleSmallPoppins,
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 81.v,
              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                selector: (state) => state.homeModelObj,
                builder: (context, homeModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 13.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 20.h),
                    itemCount: homeModelObj?.userprofileItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      UserprofileItemModel model =
                          homeModelObj?.userprofileItemList[index] ??
                              UserprofileItemModel();
                      return UserprofileItemWidget(model);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNowPlayingSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40.h),
          child: Text(
            "lbl_now_playing".tr,
            style: CustomTextStyles.titleSmallPoppins,
          ),
        ),
        SizedBox(height: 15.v),
        SizedBox(
          height: 172.v,
          child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 28.h),
                itemCount: homeModelObj?.listdoctornameItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListdoctornameItemModel model =
                      homeModelObj?.listdoctornameItemList[index] ??
                          ListdoctornameItemModel();
                  return ListdoctornameItemWidget(model);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPopularSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 41.h),
          child: Text(
            "lbl_populer".tr,
            style: CustomTextStyles.titleSmallPoppins,
          ),
        ),
        SizedBox(height: 25.v),
        SizedBox(
          height: 172.v,
          child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 35.h),
                itemCount: homeModelObj?.listtitleItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListtitleItemModel model =
                      homeModelObj?.listtitleItemList[index] ??
                          ListtitleItemModel();
                  return ListtitleItemWidget(model);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  void onTapStack(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.kategoriRomanceScreen);
  }

  void onTapImgTicketone(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.tiketScreen);
  }
}
