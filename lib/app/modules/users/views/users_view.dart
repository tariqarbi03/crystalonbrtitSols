import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/users_controller.dart';

class UsersView extends GetView<UsersController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
        init: UsersController(),
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Users'),
              centerTitle: true,
            ),
            body: controller.loading.isTrue
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : controller.users.isEmpty
                    ? const Center(
                        child: Text("No User available"),
                      )
                    : ListView.builder(
                        itemCount: controller.users.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                "${controller.users[index].lastName!}, ${controller.users[index].firstName!}"
                                ),
                          );
                        },
                      ),
          );
        });
  }
}
