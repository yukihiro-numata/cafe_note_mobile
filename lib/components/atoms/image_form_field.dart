import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageFormField extends StatelessWidget {
  final void Function(List<XFile>) onTap;
  final List<File> images;

  const ImageFormField({
    Key? key,
    required this.onTap,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: DottedBorder(
            color: Colors.black38,
            radius: const Radius.circular(4),
            borderType: BorderType.RRect,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              child: InkWell(
                onTap: _handleFormPressed,
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: images.isNotEmpty,
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: images
                .map((i) => SizedBox(
                      width: 105,
                      height: 105,
                      child: Image.file(i),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }

  Future<void> _handleFormPressed() async {
    final status = await Permission.photos.request();
    if (!status.isGranted) {
      openAppSettings();
      return;
    }
    final pickedFiles = await ImagePicker().pickMultiImage();
    if (pickedFiles.isNotEmpty) {
      onTap(pickedFiles);
    }
  }
}
