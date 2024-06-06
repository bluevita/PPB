import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../models/listdoctorname_item_model.dart';

class ListdoctornameItemWidget extends StatelessWidget {
  final ListdoctornameItemModel listdoctornameItemModelObj;

  ListdoctornameItemWidget(this.listdoctornameItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 131,
      child: Column(
        children: [
          CustomImageView(
            imagePath: listdoctornameItemModelObj.doctorImage!,
            height: 132,
            width: 131,
            radius: BorderRadius.circular(10),
          ),
          SizedBox(height: 9),
          Text(
            listdoctornameItemModelObj.doctorName!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 5,
            itemSize: 10,
            // Add any other required properties for CustomRatingBar
          ),
        ],
      ),
    );
  }
}
