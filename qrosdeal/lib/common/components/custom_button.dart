import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isDisabled;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(isDisabled ? AppColor.textSecondary : AppColor.primary),
        fixedSize: WidgetStateProperty.all(const Size(1000, 48)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: isDisabled ? null : onPressed,
      child: Text(
        text,
        style: AppTextStyle.bold16.copyWith(
          color: AppColor.bgPrimary,
        ),
      ),
    );
  }
}
