import 'package:flutter/material.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../models/listtitle_item_model.dart';

class ListtitleItemWidget extends StatelessWidget {
  final ListtitleItemModel listtitleItemModelObj;

  const ListtitleItemWidget(this.listtitleItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 116,
      child: Padding(
        padding: const EdgeInsets.only(top: 141),
        child: Column(
          children: [
            Text(
              listtitleItemModelObj.title!,
              style: theme.textTheme.labelLarge,
            ),
            const SizedBox(height: 2),
            const CustomRatingBar(
              ignoreGestures: true,
              initialRating: 5,
              itemSize: 10,
              // Add any other required properties for CustomRatingBar
            ),
          ],
        ),
      ),
    );
  }
}
