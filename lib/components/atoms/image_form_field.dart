import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ImageFormField extends StatelessWidget {
  final VoidCallback onTap;

  const ImageFormField({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DottedBorder(
        color: Colors.black38,
        radius: const Radius.circular(4),
        borderType: BorderType.RRect,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          child: InkWell(
            onTap: onTap,
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
    );
  }
}
