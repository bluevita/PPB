import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/history_bloc.dart';
import 'models/history_model.dart';
import 'models/listview_item_model.dart';
import 'widgets/listview_item_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
      create: (context) => HistoryBloc(
        const HistoryState(historyModelObj: HistoryModel()),
      )..add(const HistoryInitialEvent()),
      child: const HistoryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 43.h,
            vertical: 27.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.v),
              _buildListView(context),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                  right: 48.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOutlineGeneralHome,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                    ),
                    const Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgTicket,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                      onTap: () {
                        onTapImgTicketone(context);
                      },
                    ),
                    CustomElevatedButton(
                      height: 38.v,
                      width: 85.h,
                      text: "lbl_history2".tr,
                      margin: EdgeInsets.only(left: 28.h),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 3.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgOutlineGeneralClock,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.only(
                        left: 12.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 65.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_history".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  Widget _buildListView(BuildContext context) {
    return BlocSelector<HistoryBloc, HistoryState, HistoryModel?>(
      selector: (state) => state.historyModelObj,
      builder: (context, historyModelObj) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 17.v);
          },
          itemCount: historyModelObj?.listviewItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListviewItemModel model =
                historyModelObj?.listviewItemList[index] ?? ListviewItemModel();
            return ListviewItemWidget(model);
          },
        );
      },
    );
  }

  void onTapImgTicketone(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.tiketScreen);
  }
}
