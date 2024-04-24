import 'package:crystalonbritsols/app/app_constant/utils.dart';
import 'package:crystalonbritsols/app/data/models/department.dart';
import 'package:crystalonbritsols/app/data/models/users.dart';
import 'package:crystalonbritsols/app/data/repositories/auth_repository.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {

  final AuthRepository _repository = AuthRepository();
  List<User> users = <User>[];
  RxBool loading = true.obs;
  int? departmentId;
  Department? department;

  @override
  void onInit()async {
    department=Get.arguments;
    departmentId=department?.id;
    await getUsers();
    super.onInit();
  }

  Future<void> getUsers() async {
    List<dynamic>? resp;
    try {
      resp = await _repository.getUsers(id: departmentId!);
    } on Exception catch (e) {
      Get.log('Users ${e.toString()}');
    }
    if (resp!.isNotEmpty) {
      users.addAll(resp.map<User>((x) => User.fromJson(x)));
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
