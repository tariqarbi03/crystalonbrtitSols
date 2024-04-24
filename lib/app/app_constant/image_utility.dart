import 'dart:io';
import 'package:crystalonbritsols/app/app_constant/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
class RefineImage {

  Future<File?> refineImage(File pickedFile) async {
    File toCompress = pickedFile;
    CroppedFile? croppedFile = await ImageCropper.platform.cropImage(
      sourcePath: toCompress.path,compressQuality: 25,
      aspectRatioPresets: Platform.isAndroid
          ? [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ]
          : [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio5x3,
        CropAspectRatioPreset.ratio5x4,
        CropAspectRatioPreset.ratio7x5,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings:[ AndroidUiSettings(
          toolbarTitle: 'Refine Image',
          toolbarColor: AppColors.secondary,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          activeControlsWidgetColor: AppColors.secondary,
          backgroundColor: AppColors.secondary,
          statusBarColor: AppColors.secondary,
          lockAspectRatio: false), IOSUiSettings(
        title: 'Refine Image',

      )],
    );

    if (croppedFile != null) {
      pickedFile = File(croppedFile.path);
      if (pickedFile.readAsBytesSync().lengthInBytes < 10000000) {
        Get.log('${DateTime.now()} [RefineImage.refineImage] "YAHAHHHA');

        return pickedFile;
      } else {
        Get.log('${DateTime.now()} [RefineImage.refineImage] "limit');
        return null;
      }
    }
    return null;
  }
  static Future getImageFromGallery() async {
    // FilePickerResult? file = await FilePicker.platform.pickFiles(
    //     withReadStream: true,
    //     allowCompression: true,
    //     type: FileType.custom,
    //     allowedExtensions: ["jpg", "png", "jpeg", "gif", "bmp"]);
    var file =  await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    if (file != null) {
      File? returnFile = await RefineImage().refineImage(File(file.path));
      Get.log('${DateTime.now()} [RefineImage.getImageFromGallery] $returnFile');
      return returnFile;
    }
  }

  static Future getImageFromCamera() async {
    final pickedFile =
    await ImagePicker.platform.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      File? returnFile = await RefineImage().refineImage(File(pickedFile.path));
      Get.log(
          '${DateTime.now()} [RefineImage.getImageFromGallery] $returnFile');
      return returnFile;
    }
  }
}
