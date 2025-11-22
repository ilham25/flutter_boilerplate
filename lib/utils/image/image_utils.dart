
import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageUtils {
  static final ImageUtils _instance = ImageUtils._internal();

  // Private constructor
  ImageUtils._internal();

  // Public getter for accessing the instance
  static ImageUtils get instance => _instance;

  /// Function to get image from image source
  Future<File?>? getImage({required ImageSource source, CameraDevice? cameraDevice}) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source, preferredCameraDevice: cameraDevice ?? CameraDevice.rear);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  Future<List<File>>? getMultipleImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickMultiImage();
    return pickedFile.map((file) => File(file.path)).toList();
  }

  String getBase64FormateFile(String path) {
    File file = File(path);
    List<int> fileInByte = file.readAsBytesSync();
    String fileInBase64 = base64Encode(fileInByte);
    return fileInBase64;
  }

  Future<String> convertFilesToBase64(File file) async {
    var bytes = await file.readAsBytes();
    var base64img = base64Encode(bytes);
    return "data:image/jpeg;base64,$base64img";
  }
}