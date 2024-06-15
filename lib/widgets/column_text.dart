import 'package:flutter/material.dart';

class EDKColumnText extends StatelessWidget {
  final String text;
  final double screenWidth;
  final bool hasIndicator;

  const EDKColumnText({
    required this.text,
    required this.screenWidth,
    required this.hasIndicator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          hasIndicator ? Container(width: 10, height: 10, color: Theme.of(context).colorScheme.secondary) : const SizedBox(),
          SizedBox(width: hasIndicator ? 16 : 0),
          SizedBox(
            width: screenWidth > 1400
                ? screenWidth / 4
                : screenWidth > 800
                    ? screenWidth / 6
                    : screenWidth / 10,
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
