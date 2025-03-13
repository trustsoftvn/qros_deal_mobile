import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/utils/string_utils.dart';

class TextFieldCountryWidget extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onTextChanged;
  final String? errorMes;
  final int maxLength;
  final bool autoFocus;
  final String? hint;
  final bool hasSelectedCountry;
  final String? flag;
  final String? dialCode;
  final dynamic onClickPrefix;

  const TextFieldCountryWidget({
    super.key,
    required this.controller,
    this.onTextChanged,
    this.errorMes,
    this.maxLength = 256,
    this.hint,
    this.autoFocus = false,
    this.hasSelectedCountry = true,
    this.flag,
    this.dialCode,
    this.onClickPrefix,
  });

  @override
  State<TextFieldCountryWidget> createState() => _TextFieldCountryWidgetState();
}

class _TextFieldCountryWidgetState extends State<TextFieldCountryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.hint ?? "", style: AppTextStyle.normal14),
        TextField(
          controller: widget.controller,
          autofocus: widget.autoFocus,
          onChanged: (value) {
            widget.onTextChanged?.call(value);
          },
          maxLength: widget.maxLength,
          keyboardType: TextInputType.number,
          cursorColor: AppColor.primary,
          decoration: InputDecoration(
            isDense: true,
            errorText: widget.errorMes,
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            // prefixIcon:  widget.hasSelectedCountry ? _getSelectedCountryView() : _getDialingCode(),
            prefixIcon: GestureDetector(
                onTap: () {
                  widget.onClickPrefix?.call();
                },
                child: widget.hasSelectedCountry ? _getSelectedCountryView() : _getDialingCode()),
            prefixIconConstraints: const BoxConstraints(maxHeight: 30),
            counterText: "",
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.textSecondary, width: 1)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.textSecondary, width: 1)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.primary, width: 2)),
            errorBorder:
                const UnderlineInputBorder(borderSide: BorderSide(color: AppColor.error, width: 2)),
          ),
          style: AppTextStyle.normal24,
        ),
      ],
    );
  }

  Widget _getSelectedCountryView() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("ic_flag_sg.png".getAssetsPath()),
        const SizedBox(
          width: 14,
        ),
        Image.asset("ic_arrow_down_black.png".getAssetsPath()),
        const SizedBox(
          width: 16,
        ),
        Text(
          widget.dialCode != null ? widget.dialCode! : "+65",
          style: AppTextStyle.normal20,
        ),
        const SizedBox(
          width: 4,
        ),
      ],
    );
  }

  Widget _getDialingCode() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.dialCode != null ? widget.dialCode! : "+65",
          style: AppTextStyle.normal20,
        ),
        const SizedBox(
          width: 4,
        ),
      ],
    );
  }
}
