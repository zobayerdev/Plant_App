import 'package:flutter/material.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';

Widget customButton({
  required String name,
  required VoidCallback? onCallBack,
  double? height,
  double? minWidth,
  double? borderRadius,
  Color? color,
  padding,
  TextStyle? textStyle,
  required BuildContext context,
  Color? borderColor,
  elevation,
}) {
  return GestureDetector(
    onTap: onCallBack ?? () {},
    child: Container(
      height: height ?? 62,
      width: minWidth ?? double.infinity,
      padding: padding ?? const EdgeInsets.all(0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color ?? AppColors.c6940C9,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        border: Border.all(
          color: borderColor ?? AppColors.c0A5B55,
        ),
      ),
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: textStyle ??
            TextFontStyle.textStyle16w700Poppins
                .copyWith(color: AppColors.cFFFFFF),
      ),
    ),
  );
}
