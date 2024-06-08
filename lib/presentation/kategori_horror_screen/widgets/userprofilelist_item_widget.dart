import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../models/userprofilelist_item_model.dart';

class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
    this.onTapDynamicButton,
  }) : super(key: key);

  final UserprofilelistItemModel userprofilelistItemModelObj;
  final VoidCallback? onTapDynamicButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 147.h,
              margin: EdgeInsets.only(top: 47.v, right: 49.h),
              child: Text(
                userprofilelistItemModelObj.dynamicText!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: userprofilelistItemModelObj.dynamicImage!,
                          height: 102.v,
                          width: 100.h,
                          radius: BorderRadius.circular(10.h),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: const CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 17.h),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 4.v, bottom: 13.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userprofilelistItemModelObj.dynamicText1!,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 145.h,
                            child: Text(
                              userprofilelistItemModelObj.dynamicText2!,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          CustomElevatedButton(
                            height: 26.v,
                            width: 112.h,
                            text: "lbl_pay_ticket".tr,
                            margin: EdgeInsets.only(left: 10.h),
                            buttonTextStyle: CustomTextStyles
                                .labelLargeOnPrimaryContainerBold,
                            onPressed: onTapDynamicButton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
