import 'package:crystalonbritsols/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/department.dart';
import '../controllers/department_controller.dart';

class DepartmentView extends GetView<DepartmentController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DepartmentController>(
        init: DepartmentController(),
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Departments'),
              centerTitle: true,
            ),
            body: controller.loading.isTrue
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : controller.departments.isEmpty
                    ? const Center(
                        child: Text("No Department available"),
                      )
                    : ListView.builder(
                        itemCount: controller.departments.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Department department = Department.fromJson(
                                  controller.departments[index]);
                              Get.toNamed(Routes.USERS, arguments: department);
                            },
                            child: ListTile(
                              title: Text(controller.departments[index]["name"]
                                  .toString()),
                            ),
                          );
                        },
                      ),
          );
        });
  }
}
