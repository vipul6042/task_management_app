import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TextFilledWidgets extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final double borderRadius;
  final int? maxLine;
  const TextFilledWidgets({super.key,
    required this.textController,
    required this.hintText,
    required this.borderRadius,
    this.maxLine=1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      controller: textController,
      decoration:  InputDecoration(
          filled: true,
          fillColor: AppColors.textHolder,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                  color:Colors.white,
                  width: 1
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                  color:Colors.white,
                  width: 1
              )
          )
      ),
    );
  }
}
