import 'package:crystalonbritsols/app/data/provider/local_storage/local_db.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'app/routes/app_pages.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(LocalDB());
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crystal Sols",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }));
}
