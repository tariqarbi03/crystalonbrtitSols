import 'package:crystalonbritsols/app/app_constant/utils.dart';
import 'package:crystalonbritsols/app/data/repositories/auth_repository.dart';
import 'package:get/get.dart';

class DepartmentController extends GetxController {
  final AuthRepository _repository = AuthRepository();
  List<dynamic> departments = <dynamic>[];
  RxBool loading = true.obs;

  @override
  void onInit() async {
    await getDepartment();
    super.onInit();
  }

  Future<void> getDepartment() async {
    List<dynamic>? resp;
    try {
      resp = await _repository.getDepartment();
    } on Exception catch (e) {
      Get.log('Department ${e.toString()}');
    }
    if (resp!.isNotEmpty) {
      departments.addAll(resp);
      loading.value = false;
      update();
    } else if(resp.isEmpty) {
      loading.value = false;
      update();
    }else {
      Utils.showToast(
        message: "Please try again later",
      );
    }
    loading.value = false;
    update();
  }
}
