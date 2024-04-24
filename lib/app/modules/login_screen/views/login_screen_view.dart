import 'package:crystalonbritsols/app/app_constant/App_colors.dart';
import 'package:crystalonbritsols/app/app_constant/app_fonts.dart';
import 'package:crystalonbritsols/app/app_constant/utils.dart';
import 'package:crystalonbritsols/app/shared_widgets/button.dart';
import 'package:crystalonbritsols/app/shared_widgets/text.dart';
import 'package:crystalonbritsols/app/shared_widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginScreenController>(
      init: LoginScreenController(),
      builder: (context) {
        return Scaffold(
            backgroundColor: AppColors.kWhite,
            body: Form(
              key: controller.formKeySignIn,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyText(
                    title: "Crystal Sols",
                    family: AppFonts.helveticaRegular,
                    weight: '',
                    size: 32,
                    clr: AppColors.darkColor,
                  ).paddingOnly(bottom: 80,),
                  UnderLineTextField(
                    width: 91.w,
                    borderColor: AppColors.textfieldGrey,
                    prefixIcons: Image.asset(Utils.getIconPath("email_icon"), color: AppColors.textfieldGrey,),
                    hintText: "User Name or Email",
                    validator: (v) => v!.isNotEmpty ? null  : "Enter a valid email",
                    controller: controller.emailController,
                    hintTextColor: AppColors.textfieldGrey,
                    height: 48,
                    borderDecoration: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.hintColor),
                    ),
                  ).paddingOnly(top: 20),
                  UnderLineTextField(
                    width: 91.w,
                    validator: (v) => v!.isNotEmpty ? null : "Enter your password",
                    borderColor: AppColors.textfieldGrey,
                    obs: controller.passWordVisibility.value,
                    prefixIcons: Image.asset(Utils.getIconPath("password"), color: AppColors.textfieldGrey,),
                    suffixIcons: Theme(
                      data: Theme.of(Get.context!).copyWith(splashColor: Colors.transparent,),
                      child: SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.passWordVisibility.value = !controller.passWordVisibility.value;
                              },
                              child: controller.passWordVisibility.value == true
                                  ? const Icon(Icons.remove_red_eye, color: AppColors.greyColor,)
                                  : const Icon(Icons.visibility_off, color: AppColors.secondary,),
                            ).paddingOnly(right: 12)
                          ],
                        ),
                      ),
                    ),
                    hintText: "Password",
                    controller: controller.passwordController,
                    hintTextColor: AppColors.textfieldGrey,
                    height: 48,
                    borderDecoration: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.hintColor),
                    ),
                  ).paddingOnly(top: 20),
                  CustomButton(
                    height: 56,
                    width: 91.w,
                    text: "Login",
                    color: AppColors.black,
                    fontSize: 16,
                    textColor: AppColors.kWhite,
                    weight: FontWeight.w700,
                    onPressed: () async {
                     // controller.makePostRequest();
                      if (controller.formKeySignIn.currentState!.validate()) {
                        controller.signIn(
                          email: controller.emailController.text,
                          pass: controller.passwordController.text,
                        );
                      }
                    },
                    showShadow: true,
                  ).paddingOnly(top: 20),
                ],
              ).paddingOnly(left: 20, right: 20),
            ),
          );
      }
    );
  }
}
