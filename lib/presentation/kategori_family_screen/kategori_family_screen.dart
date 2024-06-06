import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/kategori_family_bloc.dart';
import 'models/kategori_family_model.dart';
import 'models/userprofilelist2_item_model.dart';
import 'widgets/userprofilelist2_item_widget.dart';

class KategoriFamilyScreen extends StatelessWidget {
  const KategoriFamilyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<KategoriFamilyBloc>(
      create: (context) => KategoriFamilyBloc(
          KategoriFamilyState(kategoriFamilyModelObj: KategoriFamilyModel()))
        ..add(KategoriFamilyInitialEvent()),
      child: KategoriFamilyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 36.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserProfileList(context),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 124.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle64132x131,
                      height: 132.v,
                      width: 131.h,
                      radius: BorderRadius.circular(10.h),
                    ),
                    SizedBox(width: 28.h),
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
              Spacer(flex: 40),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 62.h, top: 11.v, bottom: 12.v),
        onTap: () {
          onTapArrowLeftOne(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "lbl_family".tr),
    );
  }

  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.h),
        child: BlocSelector<KategoriFamilyBloc, KategoriFamilyState,
            KategoriFamilyModel?>(
          selector: (state) => state.kategoriFamilyModelObj,
          builder: (context, kategoriFamilyModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(height: 20.v),
              itemCount:
                  kategoriFamilyModelObj?.userprofilelist2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofilelist2ItemModel model =
                    kategoriFamilyModelObj?.userprofilelist2ItemList[index] ??
                        Userprofilelist2ItemModel();
                return Userprofilelist2ItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }

  void onTapArrowLeftOne(BuildContext context) {
    NavigatorService.goBack();
  }
}
