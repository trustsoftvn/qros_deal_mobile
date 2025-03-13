import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeReporter extends SingleChildRenderObjectWidget {
  final Function(Size size) onSizeChanged;

  const SizeReporter({
    super.key,
    required super.child,
    required this.onSizeChanged,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderSizeReporter(onSizeChanged: onSizeChanged);
  }

  @override
  void updateRenderObject(
    BuildContext context,
    RenderSizeReporter renderObject,
  ) {
    /// Update any additional properties added later.
  }
}

class RenderSizeReporter extends RenderProxyBox {
  final Function(Size size) onSizeChanged;

  RenderSizeReporter({
    RenderBox? child,
    required this.onSizeChanged,
  }) : super(child);

  /// The previous size of the child.
  Size? _oldSize;

  @override
  void performLayout() {
    /// Takes care of laying out the child and making sure its size is usable.
    super.performLayout();

    final newSize = child!.size;

    /// Only dispatch the notification if the size has changed.
    if (_oldSize != newSize) {
      _oldSize = newSize;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        onSizeChanged(newSize);
      });
    }
  }
}
