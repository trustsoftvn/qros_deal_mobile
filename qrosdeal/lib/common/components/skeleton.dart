import 'package:flutter/material.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double? width;
  final double? height;
  final double borderRadius;

  const Skeleton({super.key, this.width, this.height, this.borderRadius = 8});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.skeletonBase,
      highlightColor: AppColor.skeletonHighlight,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          height: height != null ? height! - 2 : null,
          width: width != null ? width! - 2 : null,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
        ),
      ),
    );
  }
}
