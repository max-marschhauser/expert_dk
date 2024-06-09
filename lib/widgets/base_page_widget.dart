import 'package:expert_dk/config/styles/images.dart';
import 'package:flutter/material.dart';

class EDKBasePageWidget extends StatelessWidget {
  final Widget child;

  const EDKBasePageWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  EDKImages.shared.logo,
                  width: 50,
                  height: 50,
                ),
                const Text("Expert DK - procjene nekretnina"),
                const Spacer(),
                Text("menu")
              ],
            ),
          ),
          const Text("main screen image"),
          Expanded(child: child),
        ],
      ),
    );
  }
}
