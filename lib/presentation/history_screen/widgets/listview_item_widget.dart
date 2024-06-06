import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listview_item_model.dart';

class ListviewItemWidget extends StatelessWidget {
  final ListviewItemModel listviewItemModelObj;

  const ListviewItemWidget(this.listviewItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: listviewItemModelObj.image!,
            height: 137.v,
            width: 308.h,
            radius: BorderRadius.circular(9.h),
          ),
          SizedBox(height: 14.v),
          Text(
            listviewItemModelObj.text!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
