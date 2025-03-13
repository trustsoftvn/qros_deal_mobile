import 'package:flutter/material.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class NotificationDialog extends StatelessWidget {
  final String message;

  const NotificationDialog({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: AppColor.bgPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Text(
              'Error',
              style: AppTextStyle.bold16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              message,
              style: AppTextStyle.normal14,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: CustomButton(
              text: 'Understand',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
