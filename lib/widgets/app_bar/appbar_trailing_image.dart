import 'package:flutter/material.dart';
import '../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppbarTrailingImage extends StatelessWidget {
  const AppbarTrailingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  final String? imagePath;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 15.v,
          width: 8.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
