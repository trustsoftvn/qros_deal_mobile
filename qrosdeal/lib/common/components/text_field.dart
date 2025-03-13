import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextInputType? inputType;
  final bool obscureText;
  final Function(String? value)? onSaved;
  final ValueChanged<String>? onChanged;
  final String? error;
  final String? hintText;
  final double? horizontalPadding;
  final String? initialValue;
  final bool disabled;
  final int? maxLength;
  final Function()? onTap;

  const CustomTextField({
    super.key,
    required this.label,
    this.inputType,
    this.onSaved,
    this.obscureText = false,
    this.onChanged,
    this.error,
    this.hintText,
    this.horizontalPadding,
    this.initialValue,
    this.disabled = false,
    this.maxLength,
    this.onTap,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void didUpdateWidget(covariant CustomTextField oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) {
      _controller.text = widget.initialValue ?? '';
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTextStyle.normal14,
        ),
        const SizedBox(height: 8),
        TextFormField(
          enabled: !widget.disabled,
          controller: _controller,
          style: AppTextStyle.normal14.copyWith(
            color: AppColor.textSecondary,
          ),
          maxLength: widget.maxLength,
          keyboardType: widget.inputType,
          onTap: widget.onTap,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppTextStyle.normal14.copyWith(
              color: AppColor.borderPrimary,
            ),
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColor.borderPrimary,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColor.borderPrimary,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColor.primary,
                width: 1,
              ),
            ),
          ),
          obscureText: widget.obscureText,
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
        if (widget.error != null) ...[
          const SizedBox(height: 8),
          Text(
            widget.error!,
            style: AppTextStyle.normal14.copyWith(
              color: AppColor.error,
            ),
          ),
        ],
      ],
    );
  }
}
