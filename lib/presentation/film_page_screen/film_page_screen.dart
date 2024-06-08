import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/film_page_bloc.dart';
import 'models/film_page_model.dart';

class FilmPageScreen extends StatelessWidget {
  const FilmPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FilmPageBloc>(
      create: (context) =>
          FilmPageBloc(FilmPageState(filmPageModelObj: const FilmPageModel()))
            ..add(FilmPageInitialEvent()),
      child: const FilmPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 852.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildRiverAndRanSection(context),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 41.h, top: 18.v, right: 44.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 37.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle86355x194,
                            height: 355.v,
                            width: 194.h,
                            radius: BorderRadius.circular(20.h),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35.h, vertical: 9.v),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder24,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVideoCamera,
                                      height: 44.adaptSize,
                                      width: 44.adaptSize,
                                    ),
                                    Text(
                                      "lbl_genre".tr,
                                      style: CustomTextStyles
                                          .labelLargePrimaryContainer,
                                    ),
                                    Text(
                                      "lbl_horor".tr,
                                      style: CustomTextStyles
                                          .titleSmallPoppinsGray5001,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 17.v),
                              buildRatingColumn(
                                context,
                                starImage: ImageConstant.imgSearchBlueGray100,
                                ratingText: "lbl_duration".tr,
                                scoreText: "lbl_1j_30m".tr,
                              ),
                              SizedBox(height: 17.v),
                              buildRatingColumn(
                                context,
                                starImage: ImageConstant.imgStar,
                                ratingText: "lbl_rating".tr,
                                scoreText: "lbl_8_6_10".tr,
                              ),
                              SizedBox(height: 26.v),
                              BlocSelector<FilmPageBloc, FilmPageState,
                                  TextEditingController?>(
                                selector: (state) =>
                                    state.synopsisvalueController,
                                builder: (context, synopsisvalueController) {
                                  return CustomTextFormField(
                                    controller: synopsisvalueController,
                                    hintText: "msg_kkn_di_desa_penari3".tr,
                                    hintStyle:
                                        CustomTextStyles.titleMediumWhiteA700,
                                    textInputAction: TextInputAction.done,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 4.h),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .underLineSecondaryContainer,
                                    filled: false,
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 116.v),
                          child: Text(
                            "lbl_river_ran".tr,
                            style: Theme.of(context).textTheme.labelLarge,
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
    );
  }

  /// Section Widget
  Widget _buildRiverAndRanSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 337.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 61.v),
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
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 203.v, bottom: 116.v),
                      child: Text(
                        "lbl_river_ran".tr,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    Container(
                      height: 337.v,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 28.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 45.h),
                              child: Text(
                                "lbl_synopsis".tr,
                                style:
                                    CustomTextStyles.titleSmallPoppinsWhiteA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 321.h,
                              margin: EdgeInsets.only(top: 30.v),
                              child: Text(
                                "msg_kkn_di_desa_penari2".tr,
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 111.h, vertical: 70.v),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup60),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 129.v),
                                  CustomElevatedButton(
                                    height: 48.v,
                                    text: "lbl_reservation".tr,
                                    margin: EdgeInsets.only(left: 1.h),
                                    buttonStyle: CustomButtonStyles.fillTealA,
                                    buttonTextStyle: CustomTextStyles
                                        .titleSmallPoppinsOnPrimaryContainer,
                                    onPressed: () {
                                      onTapReservation(context);
                                    },
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
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 38.v,
      centerTitle: true,
      title: BlocSelector<FilmPageBloc, FilmPageState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            hintText: "lbl_movie_detail".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Common widget
  Widget buildRatingColumn(
    BuildContext context, {
    required String starImage,
    required String ratingText,
    required String scoreText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 11.v),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: starImage,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 10.v),
          Text(
            ratingText,
            style: CustomTextStyles.labelLargePrimaryContainer.copyWith(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          Text(
            scoreText,
            style: CustomTextStyles.titleSmallPoppinsGray5001.copyWith(
              color: appTheme.gray5001,
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the reservasiScreen when the action is triggered.
  void onTapReservation(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.reservasiScreen);
  }
}
