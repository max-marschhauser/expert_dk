import 'package:flutter/material.dart';

class EDKDivider {
  static horizontalDivider({
    required Color color,
  }) {
    return Divider(
      height: 0,
      thickness: 4,
      indent: 64,
      endIndent: 64,
      color: color,
    );
  }

  static verticalDivider({required double screenWidth, required BuildContext context}) {
    return Container(
      width: 2,
      height: screenWidth > 1000 ? 250 : 500,
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}
