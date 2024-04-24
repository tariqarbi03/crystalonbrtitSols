import 'package:get/get.dart';
import '../provider/network/api_endpoint.dart';
import '../provider/network/api_provider.dart';

class AuthRepository {
  late APIProvider apiClient;

  AuthRepository() {
    apiClient = APIProvider();
  }


  Future signIn({required String email,required String password}) async {
    Map<String, dynamic>? data = await apiClient.loginData(
        APIEndpoint.signInUrl,
        email,
        false,
        Get.context,
        loading: true);
    return data;
  }

  Future getDepartment() async {
    List<dynamic> data = await apiClient.baseGetAPI(
      APIEndpoint.department,
      true,
      Get.context,
      loading: true,
    );
    return data;
  }

  Future getUsers({required int id}) async {
    List<dynamic> data = await apiClient.baseGetAPI(
      "${APIEndpoint.department}/$id/users",
      true,
      Get.context,
      loading: true,
    );
    return data;
  }

}