import 'package:flutter/material.dart';

Future<T?> showAppBottomSheet<T>(
  BuildContext context,
  Widget child, {
  AnimationController? animation,
  TickerProvider? vsync,
  bool enableDrag = true,
  Color backgroundColor = Colors.white,
  double borderRadius = 8,
  VoidCallback? onComplete,
}) async {
  final response = await showModalBottomSheet<T>(
    backgroundColor: backgroundColor,
    context: context,
    builder: (context) => child,
    isScrollControlled: true,
    useRootNavigator: true,
    enableDrag: enableDrag,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius),
        topRight: Radius.circular(borderRadius),
      ),
    ),
  );
  return response;
}
