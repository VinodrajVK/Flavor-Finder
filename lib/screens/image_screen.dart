import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageScreen extends ConsumerStatefulWidget {
  const ImageScreen({super.key});

  @override
  ConsumerState<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends ConsumerState<ImageScreen> {
  final key = GlobalKey<FormState>();
  String? foodimage;

  final imgPicker = ImagePicker();

  Future<File?> _getImageFromCamera() async {
    final pickedFile = await imgPicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  Future<File?> _getImageFromGallery() async {
    final pickedFile = await imgPicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  Future<String?> _uploadImage(File? image) async {
    return null;
  }

  Future<void> _getImage() async {
    await Get.bottomSheet<File>(
      Container(
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    final image = await _getImageFromCamera();
                    if (image != null) {
                      final imageUrl = await _uploadImage(image);
                      if (imageUrl != null) {
                        setState(() {
                          foodimage = imageUrl;
                        });
                      }
                    }
                    Get.back();
                  },
                  icon: const Icon(Icons.camera_alt),
                ),
                const Text('Camera'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    final image = await _getImageFromGallery();
                    if (image != null) {
                      final imageUrl = await _uploadImage(image);
                      if (imageUrl != null) {
                        setState(() {
                          foodimage = imageUrl;
                        });
                      }
                    }
                    Get.back();
                  },
                  icon: const Icon(Icons.photo),
                ),
                const Text('Gallery'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Upload Image',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    child: foodimage != null
                        ? Image.network(
                            foodimage!,
                            fit: BoxFit.fill,
                          )
                        : IconButton(
                            onPressed: () async {
                              await _getImage();
                            },
                            icon: const Icon(Icons.add_a_photo),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
