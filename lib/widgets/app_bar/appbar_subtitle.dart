import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore: must_be_immutable

class AppbarSubtitle extends StatelessWidget {
  const AppbarSubtitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  final String text;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!.call();
        }
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodyMediumPoppinsOnPrimary.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(0.88),
          ),
        ),
      ),
    );
  }
}
