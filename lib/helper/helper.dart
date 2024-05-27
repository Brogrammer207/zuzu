import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../screens/widgets/apptheme.dart';

extension MakeLoaderWidget on BuildContext {
  OverlayEntry showLoader() {
    OverlayEntry loader = OverlayEntry(builder: (c) {
      final size = MediaQuery.of(this).size;
      return Positioned(
        height: size.height,
        width: size.width,
        top: 0,
        left: 0,
        child: Material(
            color: Colors.black.withOpacity(.08),
            child: SizedBox(
                height: 35,
                width: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingAnimationWidget.fourRotatingDots(
                      size: 32,
                      color: AppTheme.secondaryColor,
                    ).animate().scale().fade()
                  ],
                ))),
      );
    });
    Overlay.of(this).insert(loader);
    return loader;
  }
  hideLoader(OverlayEntry loader) {
    loader.remove();
  }
}

class Helper {
  static Future<List<File>?> addMultiImagePicker({int imageQuality = 30}) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'jpeg', 'heic', 'mp4', 'mov', 'hevc'],
      );

      if (result == null) {
        return null;
      } else {
        List<File> files = result.files.map((file) => File(file.path.toString())).toList();
        return files;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future addImagePicker({ImageSource imageSource = ImageSource.gallery, int imageQuality = 30}) async {
    try {
      final item = await ImagePicker().pickImage(source: imageSource, imageQuality: imageQuality);
      if (item == null) {
        return null;
      } else {
        return File(item.path);
      }
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }

  static Future addFilePicker() async {
    try {
      final item = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'jpeg'],
      );
      if (item == null) {
        return null;
      } else {
        // print(item.files.first.bytes!);
        return kIsWeb ? item.files.first.bytes! : File(item.files.first.path!);
      }
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }

  static Future<File?> addFilePickerMedia() async {
    try {
      final item = await FilePicker.platform.pickFiles(
        type: FileType.media,
      );
      if (item != null && item.files.isNotEmpty) {
        return File(item.files.first.path ?? "");
      } else {
        return null;
      }
      // if (item == null) {
      //   return null;
      // } else {
      //   print(item.files.first.bytes!);
      // return kIsWeb ? item.files.first.bytes! : File(item.files.first.path!);
      // }
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }

  static OverlayEntry overlayLoader(context) {
    OverlayEntry loader = OverlayEntry(builder: (context) {
      final size = MediaQuery.of(context).size;
      return Positioned(
        height: size.height,
        width: size.width,
        top: 0,
        left: 0,
        child: Material(
            color: Colors.black.withOpacity(.08),
            child: SizedBox(
                height: 35,
                width: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingAnimationWidget.fourRotatingDots(
                      size: 32,
                      color: AppTheme.secondaryColor,
                    ).animate().scale().fade()
                  ],
                ))),
      );
    });
    return loader;
  }

  static hideLoader(OverlayEntry loader) {
    Timer(const Duration(milliseconds: 250), () {
      try {
        loader.remove();
        // ignore: empty_catches
      } catch (e) {}
    });
  }

  static showImagePickerSheet({
    required Function(File image) gotImage,
    Function(bool image)? removeImage,
    required BuildContext context,
    String? title,
    bool? removeOption,
    bool? filePicker,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(
          title ?? 'Select Image',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, color: AppTheme.primaryColor),
        ),
        cancelButton: CupertinoActionSheetAction(
          child: Text(
            'Cancel',
            style: GoogleFonts.poppins(),
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop("Cancel");
          },
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: Text(
              'Gallery',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppTheme.secondaryColor),
            ),
            onPressed: () {
              // pickImage(
              //     ImageSource.gallery);
              addImagePicker(imageSource: ImageSource.gallery).then((value) async {
                if (value == null) return;
                Navigator.pop(context);
                gotImage(await FlutterExifRotation.rotateImage(path: value.path));
              });
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              'Camera',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppTheme.secondaryColor),
            ),
            onPressed: () {
              addImagePicker(imageSource: ImageSource.camera).then((value) async {
                if (value == null) return;
                Navigator.pop(context);
                gotImage(await FlutterExifRotation.rotateImage(path: value.path));
              });
            },
          ),
          if (filePicker == true)
            CupertinoActionSheetAction(
              child: Text(
                'Files',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppTheme.secondaryColor),
              ),
              onPressed: () {
                addFilePickerMedia().then((value) {
                  if (value == null) return;
                  Navigator.pop(context);
                  gotImage(value);
                });
              },
            ),
          if (removeOption == true)
            CupertinoActionSheetAction(
              child: Text(
                'Remove',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppTheme.secondaryColor),
              ),
              onPressed: () {
                Get.back();
                if (removeImage != null) {
                  removeImage(true);
                }
              },
            ),
        ],
      ),
    );
  }
}

showToast(message) {
  if (kReleaseMode && message == null) return;
  Fluttertoast.cancel();
  Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
      backgroundColor: Colors.black,
      textColor: AppTheme.secondaryColor,
      fontSize: 14);
}

loading() {
  return Center(
      child: LoadingAnimationWidget.fourRotatingDots(
    color: AppTheme.secondaryColor,
    size: 40,
  ));
}

extension DateOnlyCompare on DateTime {
  bool isSmallerThen(DateTime other) {
    return (year == other.year && month == other.month && day < other.day) ||
        (year == other.year && month < other.month) ||
        (year < other.year);
  }

  bool get isPreviousDay {
    DateTime now = DateTime.now();
    return DateTime(year, month, day).difference(DateTime(now.year, now.month, now.day)).inDays == -1;
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension ManageHeroes on Widget {
  Widget makeHero(String tag) {
    return Hero(
        tag: tag,
        transitionOnUserGestures: true,
        child: Material(
          color: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          child: this,
        ));
  }
}
