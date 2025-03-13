import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgPrimary,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _menuItem(Icons.store, 'Store', 0),
          _menuItem(Icons.discount, 'Deals', 1),
          _menuItem(Icons.settings, 'Settings', 2),
        ],
      ),
    );
  }

  Widget _menuItem(IconData icon, String label, int index) {
    final color = index == currentIndex ? AppColor.primary : AppColor.textSecondary;
    return GestureDetector(
      onTap: () {
        onTabSelected(index);
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            label,
            style: AppTextStyle.normal14.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
