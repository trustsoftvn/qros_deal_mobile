import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class DDItem<T> {
  final T value;
  final String label;

  DDItem(this.value, this.label);
}

class CustomDropDown<T> extends StatelessWidget {
  final List<DDItem<T>> items;
  final Widget? hint;
  final T? value;
  final String? label;
  final Function(T?) onChanged;

  const CustomDropDown({
    super.key,
    required this.items,
    this.value,
    this.hint,
    this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: AppTextStyle.normal14,
          ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<T>(
                  isExpanded: true,
                  hint: hint,
                  items: items
                      .map((item) => DropdownMenuItem<T>(
                            value: item.value,
                            child: Text(
                              item.label,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: value,
                  onChanged: onChanged,
                  buttonStyleData: ButtonStyleData(
                    height: 50,
                    width: 160,
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColor.borderPrimary,
                      ),
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: WidgetStateProperty.all(6),
                      thumbVisibility: WidgetStateProperty.all(true),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                    padding: EdgeInsets.only(left: 14, right: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
