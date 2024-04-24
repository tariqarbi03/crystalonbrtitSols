import 'package:crystalonbritsols/app/app_constant/global_var.dart';
import 'package:crystalonbritsols/app/app_constant/utils.dart';
import 'package:crystalonbritsols/app/data/provider/local_storage/local_db.dart';
import 'package:crystalonbritsols/app/data/repositories/auth_repository.dart';
import 'package:crystalonbritsols/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_constant/local_keys.dart';

class LoginScreenController extends GetxController {

  final AuthRepository _repository = AuthRepository();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  GlobalKey<FormState> formKeySignIn = GlobalKey<FormState>();
  RxBool passWordVisibility = true.obs,isLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
  }

  Future<void> signIn({email,pass}) async {
    Map<String, dynamic>? resp;
    try {
      resp = await _repository.signIn(email: email, password: pass,);
    } on Exception catch (e) {
      Get.log('AuthenticationController.signUp ${e.toString()}');
    }
    if (resp != null) {
       await LocalDB.setData(LocalDataKey.authToken.name, resp["access_token"]);
      Globals.authToken=resp["access_token"];
      Get.toNamed(Routes.DEPARTMENT);
    }else {
      Utils.showToast(message: "Please try again later",);
    }
  }
}

