import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  const AppbarTrailingButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 25.v,
          width: 102.h,
          text: "lbl_administrator".tr,
          buttonStyle: CustomButtonStyles.fillPrimary,
          buttonTextStyle: CustomTextStyles.labelLargeBold,
        ),
      ),
    );
  }
}
