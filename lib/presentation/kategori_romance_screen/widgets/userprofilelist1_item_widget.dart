import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../models/userprofilelist1_item_model.dart';

class Userprofilelist1ItemWidget extends StatelessWidget {
  final Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  Userprofilelist1ItemWidget(this.userprofilelist1ItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 152,
      width: 334,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 147,
              margin: EdgeInsets.only(top: 47, right: 49),
              child: Text(
                userprofilelist1ItemModelObj.blablablablalsa!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: userprofilelist1ItemModelObj.userImage!,
                            height: 102,
                            width: 100,
                            radius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: CustomRatingBar(
                              ignoreGestures: true,
                              initialRating: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 17, top: 4, bottom: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userprofilelist1ItemModelObj.subheading!,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 1),
                          SizedBox(width: 151),
                          Text(
                            userprofilelist1ItemModelObj.description!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 15),
                          CustomElevatedButton(
                            height: 26,
                            text: "lbl_beli_tiket".tr,
                            margin: EdgeInsets.only(left: 10, right: 29),
                            buttonTextStyle: CustomTextStyles
                                .labelLargeOnPrimaryContainerBold,
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
