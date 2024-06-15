import 'package:flutter/material.dart';

class EDKContainer {
  static Widget primaryContainer({required String text, required TextStyle textStyle, String? subtext, TextStyle? subtextStyle, required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: MediaQuery.of(context).size.width > 1000 ? 64 : 16),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
          subtext == null
              ? const SizedBox()
              : Text(
                  subtext,
                  textAlign: TextAlign.center,
                  style: subtextStyle,
                ),
        ],
      ),
    );
  }

  static Widget secondaryContainer({Widget? child, String? text, TextStyle? textStyle, String? subtext, TextStyle? subtextStyle, required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: MediaQuery.of(context).size.width > 1000 ? 64 : 16),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
      child: Column(
        children: [
          text == null
              ? const SizedBox()
              : Text(
                  text,
                  textAlign: TextAlign.center,
                  style: textStyle?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
          subtext == null
              ? const SizedBox()
              : Text(
                  subtext,
                  textAlign: TextAlign.center,
                  style: subtextStyle,
                ),
          child ?? const SizedBox(),
        ],
      ),
    );
  }
}
