import 'package:flutter/material.dart';

class EDKBadge extends StatelessWidget {
  final String text;

  const EDKBadge({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: Text(text, style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
