import 'package:flutter/material.dart';
import 'package:qrosdeal/common/components/size_reporter.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';

class CustomBottomSheet extends StatefulWidget {
  final String title;
  final double? height;
  final Widget content;
  final Widget? bottomAction;
  final Function()? handleClose;

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.content,
    this.height,
    this.bottomAction,
    this.handleClose,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  double titleHeight = 0;
  double contentHeight = 0;
  double maxHeight = 0;
  bool isOverflow = false;

  final headerHeight = 92;
  final actionHeight = 96;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        maxHeight = MediaQuery.of(context).size.height -
            MediaQueryData.fromView(View.of(context)).padding.top -
            40;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      constraints: BoxConstraints(
        maxHeight: maxHeight,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius:
            BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        color: AppColor.bgPrimary,
      ),
      child: AnimatedSize(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 350),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizeReporter(
              onSizeChanged: (size) {
                setState(() {
                  titleHeight = size.height;
                  isOverflow = calculateOverflow();
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      widget.title,
                      style: AppTextStyle.bold16,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(36),
                        onTap: widget.handleClose ??
                            () {
                              Navigator.pop(context);
                            },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          child: const Icon(
                            Icons.close,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isOverflow == true
                ? Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: SizeReporter(
                          onSizeChanged: (size) {
                            setState(() {
                              contentHeight = size.height + 32;
                              isOverflow = calculateOverflow();
                            });
                          },
                          child: widget.content,
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(16),
                    child: SizeReporter(
                      onSizeChanged: (size) {
                        setState(() {
                          contentHeight = size.height + 32;
                          isOverflow = calculateOverflow();
                        });
                      },
                      child: widget.content,
                    ),
                  ),
            widget.bottomAction != null
                ? Container(
                    height: 96,
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: AppColor.borderPrimary),
                      ),
                    ),
                    child: widget.bottomAction!,
                  )
                : const SizedBox(
                    height: 16,
                  ),
          ],
        ),
      ),
    );
  }

  bool calculateOverflow() {
    return headerHeight +
            titleHeight +
            contentHeight +
            (widget.bottomAction != null ? actionHeight : 18) >
        maxHeight;
  }
}
