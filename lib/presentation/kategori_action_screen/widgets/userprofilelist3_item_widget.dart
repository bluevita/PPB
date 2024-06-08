import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../models/userprofilelist3_item_model.dart';

// ignore: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  Userprofilelist3ItemWidget(this.userprofilelist3ItemModelObj, {Key? key})
      : super(key: key);

  Userprofilelist3ItemModel userprofilelist3ItemModelObj;

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
                userprofilelist3ItemModelObj.dynamicText!,
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
                borderRadius: BorderRadiusStyle.roundedBorder30,
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
                          imagePath: userprofilelist3ItemModelObj.dynamicImage!,
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
                  Padding(
                    padding:
                        EdgeInsets.only(left: 17.h, top: 5.v, bottom: 13.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userprofilelist3ItemModelObj.dynamicText1!,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 1.v),
                        SizedBox(
                          width: 141.h,
                          child: Text(
                            userprofilelist3ItemModelObj.dynamicText2!,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
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
