import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class SearchField extends StatefulWidget {
  final String? initialValue;
  final String hintText;
  final void Function(String) onTextInput;

  const SearchField({
    super.key,
    required this.hintText,
    required this.onTextInput,
    this.initialValue,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Timer? _searchDebounce;
  final _textFieldController = TextEditingController();

  @override
  void initState() {
    _textFieldController.text = widget.initialValue ?? '';
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SearchField oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) {
      _textFieldController.text = widget.initialValue ?? '';
    }

    super.didUpdateWidget(oldWidget);
  }

  void _onInputChange(String value) {
    if (_searchDebounce?.isActive ?? false) _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 500), () {
      widget.onTextInput(value);
    });
  }

  void _resetInput() {
    _textFieldController.clear();
    _onInputChange("");
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textFieldController,
      onChanged: _onInputChange,
      decoration: InputDecoration(
        suffixIcon: _textFieldController.text.isEmpty
            ? const Icon(Icons.search)
            : GestureDetector(
                child: const Icon(Icons.close),
                onTap: () {
                  _resetInput();
                },
              ),
        hintText: widget.hintText,
        hintStyle: AppTextStyle.normal14.copyWith(
          color: AppColor.borderPrimary,
        ),
        contentPadding: const EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColor.borderPrimary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColor.borderPrimary,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColor.primary,
            width: 1,
          ),
        ),
      ),
    );
  }
}
