import 'package:crystalonbritsols/app/app_constant/App_colors.dart';
import 'package:crystalonbritsols/app/app_constant/app_fonts.dart';
import 'package:dio_log/http_log_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final BoxDecoration? boxDecoration;
  final double? fontSize;
  final double? radius;
  final FontWeight? weight;
  final bool showShadow;
  final TextStyle? textStyle;

  CustomButton({
    required this.text,
    required this.onPressed,
    this.color,
    this.height,
    this.weight,
    this.width,
    this.fontSize,
    this.textColor,
    this.radius,
    this.borderColor,
    this.boxDecoration,
    this.showShadow = false, this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Get.to(() => HttpLogListWidget());
      },
      onTap: onPressed,
      child: Container(
        width: width ?? Get.width * 0.87,
        height: height ?? 56,
        decoration: boxDecoration ??
            BoxDecoration(
              color: color ?? AppColors.secondary,
              border: Border.all(color: borderColor ?? AppColors.black),
              borderRadius: BorderRadius.circular(radius ?? 5),
              boxShadow: showShadow
                  ? [
                      BoxShadow(
                        color: AppColors.darkColor.withOpacity(0.24),
                        blurRadius: 30.0,
                        offset: const Offset(0, 10),
                        spreadRadius: 0,
                      ),
                    ]
                  : [],
            ),
        child: Center(
          child: Text(
            text,
            style:textStyle ?? AppTextStyle.helveticaRegular.copyWith(
              fontSize: fontSize ?? 15.sp,
              color: textColor,
              fontWeight: weight,
            ),
          ),
        ),
      ),
    );
  }
}
