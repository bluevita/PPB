import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/kategori_action_bloc.dart';
import 'models/kategori_action_model.dart';
import 'models/userprofilelist3_item_model.dart';
import 'widgets/userprofilelist3_item_widget.dart';

class KategoriActionScreen extends StatelessWidget {
  const KategoriActionScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<KategoriActionBloc>(
      create: (context) => KategoriActionBloc(
        KategoriActionState(
          kategoriActionModelObj: KategoriActionModel(),
        ),
      )..add(const KategoriActionInitialEvent()),
      child: const KategoriActionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 40.h,
            top: 36.v,
            right: 40.h,
          ),
          child: BlocSelector<KategoriActionBloc, KategoriActionState,
              KategoriActionModel?>(
            selector: (state) => state.kategoriActionModelObj,
            builder: (context, kategoriActionModelObj) {
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20.v,
                  );
                },
                itemCount:
                    kategoriActionModelObj?.userprofilelist3ItemList.length ??
                        0,
                itemBuilder: (context, index) {
                  Userprofilelist3ItemModel model =
                      kategoriActionModelObj?.userprofilelist3ItemList[index] ??
                          Userprofilelist3ItemModel();
                  return Userprofilelist3ItemWidget(model);
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
      height: 65.v, // Assuming 65.v is the correct height value
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
        text: "lbl_action".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
