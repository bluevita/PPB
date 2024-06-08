import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_search_view.dart'; // ignore: must_be_immutable

class AppbarTitleSearchview extends StatelessWidget {
  const AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 324.h,
        controller: controller,
        hintText: hintText ?? "lbl_movie_detail".tr,
      ),
    );
  }
}
