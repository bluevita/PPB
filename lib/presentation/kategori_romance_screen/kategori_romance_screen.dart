import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/kategori_romance_bloc.dart';
import 'models/kategori_romance_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'widgets/userprofilelist1_item_widget.dart';

class KategoriRomanceScreen extends StatelessWidget {
  const KategoriRomanceScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<KategoriRomanceBloc>(
      create: (context) => KategoriRomanceBloc(const KategoriRomanceState(
          kategoriRomanceModelObj: KategoriRomanceModel()))
        ..add(KategoriRomanceInitialEvent()),
      child: const KategoriRomanceScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserProfileList(context),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "lbl_river_ran".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 83),
                    child: Text(
                      "lbl_river_ran".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcon,
          margin: const EdgeInsets.symmetric(horizontal: 39, vertical: 16),
        ),
      ],
    );
  }

  Widget _buildUserProfileList(BuildContext context) {
    return BlocSelector<KategoriRomanceBloc, KategoriRomanceState,
        KategoriRomanceModel?>(
      selector: (state) => state.kategoriRomanceModelObj,
      builder: (context, kategoriRomanceModelObj) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemCount:
              kategoriRomanceModelObj?.userprofilelist1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofilelist1ItemModel model =
                kategoriRomanceModelObj?.userprofilelist1ItemList[index] ??
                    Userprofilelist1ItemModel();
            return Userprofilelist1ItemWidget(model);
          },
        );
      },
    );
  }
}
