import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/tampilan_awal_bloc.dart';
import 'models/tampilan_awal_model.dart';

class TampilanAwalScreen extends StatelessWidget {
  const TampilanAwalScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TampilanAwalBloc>(
      create: (context) => TampilanAwalBloc(
        const TampilanAwalState(
          tampilanAwalModelObj: TampilanAwalModel(),
        ),
      )..add(TampilanAwalInitialEvent()),
      child: const TampilanAwalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TampilanAwalBloc, TampilanAwalState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 31.v),
                  SizedBox(
                    height: 865.v,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: 865.v,
                          width: 414.h,
                          alignment: Alignment.center,
                        ),
                        CustomElevatedButton(
                          height: 61.v,
                          width: 255.h,
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(bottom: 94.v),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallOnPrimary,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
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
}
