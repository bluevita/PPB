import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../models/userprofilelist2_item_model.dart';

class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(this.userprofilelist2ItemModelObj, {Key? key})
      : super(key: key);

  final Userprofilelist2ItemModel userprofilelist2ItemModelObj;

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
                userprofilelist2ItemModelObj.blablablablalsa!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.v),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: userprofilelist2ItemModelObj.userImage!,
                          height: 102.v,
                          width: 100.h,
                          radius: BorderRadius.circular(10.h),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v, bottom: 13.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userprofilelist2ItemModelObj.movieTitle!,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: 147.h,
                          child: Text(
                            userprofilelist2ItemModelObj.movieDescriptio!,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        CustomElevatedButton(
                          height: 26.v,
                          width: 112.h,
                          text: "lbl_pay_ticket".tr,
                          margin: EdgeInsets.only(left: 10.h),
                          buttonTextStyle:
                              CustomTextStyles.labelLargeOnPrimaryContainerBold,
                        ),
                      ],
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
