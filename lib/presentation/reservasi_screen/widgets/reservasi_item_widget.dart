import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/reservasi_item_model.dart';

// ignore: must_be_immutable
class ReservasiItemWidget extends StatelessWidget {
  final ReservasiItemModel reservasiItemModelObj;

  const ReservasiItemWidget(this.reservasiItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 61.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            reservasiItemModelObj.time!,
            style: CustomTextStyles.labelLargeGray5002,
          ),
        ),
      ),
    );
  }
}
