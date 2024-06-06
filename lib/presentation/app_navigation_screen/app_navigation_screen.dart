import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'bloc/app_navigation_event.dart';
import 'bloc/app_navigation_state.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(
          AppNavigationState(appNavigationModelObj: AppNavigationModel()))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(
                          children: [
                            _buildScreenTitle(context,
                                screenTitle: "lbl_tampilan_awal".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.tampilanAwalScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_register".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.registerScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_login2".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.loginScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_home".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.homeScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_tiket".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.tiketScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_history2".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.historyScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_profil".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.profilScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_add_movie".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.addMovieScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_kategori_horror".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.kategoriHorrorScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "msg_kategori_romance".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.kategoriRomanceScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_kategori_family".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.kategoriFamilyScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_kategori_action".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.kategoriActionScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_film_page".tr,
                                onTapScreenTitle: () =>
                                    onTapScreenTitle(AppRoutes.filmPageScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_reservasi".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.reservasiScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "lbl_payment_method2".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.paymentMethodScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "msg_payment_method_one".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.paymentMethodOneScreen)),
                            _buildScreenTitle(context,
                                screenTitle: "msg_payment_method_two".tr,
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.paymentMethodTwoScreen)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.black900,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenTitle(BuildContext context,
      {required String screenTitle, Function? onTapScreenTitle}) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            ),
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
