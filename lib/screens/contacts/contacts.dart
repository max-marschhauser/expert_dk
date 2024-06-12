import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../config/styles/images.dart';

class EDKContactsWidget extends StatelessWidget {
  const EDKContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.mobitelRuka,
      child: const Column(
        children: [
          Text("contacts screen"),
        ],
      ),
    );
  }
}
