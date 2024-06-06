import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/kategori_horror_bloc.dart';
import 'models/kategori_horror_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'widgets/userprofilelist_item_widget.dart';

class KategoriHorrorScreen extends StatelessWidget {
  const KategoriHorrorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<KategoriHorrorBloc>(
      create: (context) => KategoriHorrorBloc(KategoriHorrorState(
        kategoriHorrorModelObj:
            KategoriHorrorModel(userprofilelistItemList: []),
      ))
        ..add(KategoriHorrorInitialEvent()),
      child: KategoriHorrorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 36.v),
          child: BlocSelector<KategoriHorrorBloc, KategoriHorrorState,
              KategoriHorrorModel?>(
            selector: (state) => state.kategoriHorrorModelObj,
            builder: (context, kategoriHorrorModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 20.v),
                itemCount:
                    kategoriHorrorModelObj?.userprofilelistItemList.length ?? 0,
                itemBuilder: (context, index) {
                  UserprofilelistItemModel model =
                      kategoriHorrorModelObj?.userprofilelistItemList[index] ??
                          UserprofilelistItemModel();
                  return UserprofilelistItemWidget(model,
                      onTapDynamicButton: () {
                    onTapDynamicButton(context);
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 38.v,
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 62.h, top: 11.v, bottom: 12.v),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_horror".tr,
      ),
    );
  }

  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  void onTapDynamicButton(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.filmPageScreen);
  }
}
