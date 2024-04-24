import 'package:crystalonbritsols/app/app_constant/App_colors.dart';
import 'package:crystalonbritsols/app/app_constant/app_fonts.dart';
import 'package:crystalonbritsols/app/shared_widgets/button.dart';
import 'package:crystalonbritsols/app/shared_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;
  const CustomDialog({super.key,required this.title,required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.kWhite,
      surfaceTintColor: AppColors.kWhite,
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
        ),
        content: SizedBox(
          width: 327,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyText(title: title,
                family: AppFonts.helveticaBold,size: 16,clr: AppColors.primaryColor,letterSpacing: 0.5).paddingOnly(top: 12),
              MyText(title: message,
                family: AppFonts.helveticaRegular,size: 14,clr: AppColors.primaryColor,letterSpacing: 0.5,weight: '',).paddingOnly(top: 12),
              CustomButton(
                height: 36,
                width: 90,
                text: "OK",
                radius: 6,
                textStyle: AppTextStyle.helveticaRegular.copyWith(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w400),
                color: AppColors.secondary,
                textColor: AppColors.kWhite,
                borderColor: Colors.transparent,
                onPressed: () async {
                 Get.back();
                },
              ).paddingOnly(top: 15),
            ],
          ),
        ));
  }
}
