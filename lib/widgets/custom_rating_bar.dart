import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomRatingBar extends StatelessWidget {
  CustomRatingBar({
    Key? key,
    this.alignment,
    this.ignoreGestures,
    this.initialRating,
    this.itemSize,
    this.itemCount,
    this.color,
    this.unselectedColor,
    this.onRatingUpdate,
  }) : super(key: key);

  final Alignment? alignment;
  final bool? ignoreGestures;
  final double? initialRating;
  final double? itemSize;
  final int? itemCount;
  final Color? color;
  final Color? unselectedColor;
  final Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: ratingBarWidget)
        : ratingBarWidget;
  }

  Widget get ratingBarWidget => RatingBar.builder(
        ignoreGestures: ignoreGestures ?? false,
        initialRating: initialRating ?? 0,
        minRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemSize: itemSize ?? 9.0, // Use a default value for itemSize
        unratedColor: unselectedColor ??
            Theme.of(context as BuildContext)
                .colorScheme
                .onPrimary
                .withOpacity(0.5),
        itemCount: itemCount ?? 5,
        updateOnDrag: true,
        itemBuilder: (context, _) {
          return Icon(
            Icons.star,
            color: color ?? appTheme.yellowA200,
          );
        },
        onRatingUpdate: (rating) {
          if (onRatingUpdate != null) {
            onRatingUpdate!(rating);
          }
        },
      );
}
