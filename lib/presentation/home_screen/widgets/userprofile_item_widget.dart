import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/userprofile_item_model.dart';

class UserprofileItemWidget extends StatelessWidget {
  final UserprofileItemModel userprofileItemModelObj;
  final VoidCallback? onTapStack;

  const UserprofileItemWidget(this.userprofileItemModelObj,
      {Key? key, this.onTapStack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                onTapStack?.call();
              },
              child: Container(
                height: 62,
                width: 62,
                padding: const EdgeInsets.all(11),
                decoration: AppDecoration.fillSecondaryContainer.copyWith(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CustomImageView(
                  imagePath: userprofileItemModelObj.romanceImage!,
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  // Add any other required properties for CustomImageView
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              userprofileItemModelObj.romanceText!,
              style: CustomTextStyles.labelMediumOnPrimary,
              // Add any other required properties for Text
            ),
          ],
        ),
      ),
    );
  }
}
