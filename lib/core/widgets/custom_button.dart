import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height,
    required this.label,
    this.icon,
    this.image,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.width,
    this.lableColor,
    this.lableStyle,
    this.iconColor,
  });

  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? lableColor;
  final Color? iconColor;
  final double? height;
  final IconData? icon;
  final String? image;
  final String label;
  final double? width;
  final TextStyle? lableStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: borderColor == null ? null : BorderSide(color: borderColor!,width: 0.4),
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AutoSizeText(
                label,
                style: lableStyle ?? AppStyles.s16.copyWith(color: lableColor),
                textAlign: TextAlign.center,
                minFontSize: 4,
                maxLines: 1,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 5),
              Icon(
                icon,
                size: 18,
                color: iconColor??AppColors.white,
              ),
            ],
            if (image != null) ...[
              const SizedBox(width: 5),
              Image.asset(image.toString(),
                height: 18,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
