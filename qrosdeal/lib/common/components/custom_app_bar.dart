import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String stringTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({
    super.key,
    required this.stringTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        iconSize: 24,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          stringTitle,
          style: AppTextStyle.bold16,
        ),
      ),
    );
  }
}
