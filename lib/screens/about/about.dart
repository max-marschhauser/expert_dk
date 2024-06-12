import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../config/styles/images.dart';

class EDKAboutWidget extends StatelessWidget {
  const EDKAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.tlocrt,
      child: Text("about screen"),
    );
  }
}
