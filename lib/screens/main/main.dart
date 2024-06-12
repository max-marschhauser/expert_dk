import 'package:expert_dk/config/styles/images.dart';
import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

class EDKMainWidget extends StatelessWidget {
  const EDKMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.ulicaKuce,
      child: Text("main screen"),
    );
  }
}
