import 'package:commons/commons.dart';
import 'package:commons/helper/safe_colors.dart';
import 'package:flutter/material.dart';

class SafeSecondaryButtonWidget extends StatelessWidget {
  final String text;
  final Function? onTap;
  final double? height;
  final double? width;

  const SafeSecondaryButtonWidget({required this.text, required this.onTap, this.height, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: height ?? SafeDimens.forty,
        decoration: BoxDecoration(color: SafeColors.darkBlue, borderRadius: BorderRadius.circular(SafeDimens.ten)),
        child: MaterialButton(
            splashColor: SafeColors.transparent,
            focusColor: SafeColors.transparent,
            hoverColor: SafeColors.transparent,
            highlightColor: SafeColors.transparent,
            onPressed: () => onTap!(),
            child: Center(
                child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700, color: SafeColors.white)))));
  }
}
