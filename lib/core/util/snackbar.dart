import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void showSnackBar({required String message, required BuildContext context}) {
  showToast(
    message,
    context: context,
    backgroundColor: const Color.fromARGB(68, 135, 0, 254),
    animation: StyledToastAnimation.slideFromTop,
    reverseAnimation: StyledToastAnimation.fade,
    animDuration: const Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
    reverseCurve: Curves.fastOutSlowIn,
    fullWidth: true,
    textStyle: TextStyle(color: CustomColors.black, fontSize: 16, fontWeight: FontWeight.w500),
    position: StyledToastPosition.top,
    toastHorizontalMargin: 0,
  );
}
