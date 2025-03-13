import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class OtpInput extends StatelessWidget {
  final int length;
  final Function(String)? onCompleted;
  final Function(String)? onChanged;

  OtpInput({
    super.key,
    this.length = 6,
    this.onCompleted,
    this.onChanged,
  });

  final defaultPinTheme = PinTheme(
    width: 42,
    height: 48,
    textStyle: AppTextStyle.normal24.copyWith(color: AppColor.textPrimary),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: AppColor.textSecondary,
          width: 2,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: length,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.textPrimary,
              width: 2,
            ),
          ),
        ),
      ),
      onChanged: onChanged,
      onCompleted: onCompleted,
    );
  }
}
