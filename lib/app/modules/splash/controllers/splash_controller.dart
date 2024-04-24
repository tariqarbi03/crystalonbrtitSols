import 'package:crystalonbritsols/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {


  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.offAndToNamed(Routes.LOGIN_SCREEN);
    });
    super.onInit();
  }


}
