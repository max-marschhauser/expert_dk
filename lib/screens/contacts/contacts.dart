import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../config/styles/images.dart';

class EDKContactsWidget extends StatelessWidget {
  const EDKContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.mobitelRuka,
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    Text("kontakt"),
                    Text("Dražen Krajlah, mag.ing.aedif.\nUčka 1, 31000 Osijek\nGSM: 098 195 44 11\nMAIL: drazen.krajlah@gmail.com\nWEB: www.expertdk.hr"),
                  ],
                ),
              ),
              Expanded(child: Image.asset(EDKImages.shared.kalkucaPlava)),
              const Expanded(child: Text("EXPERT DK, obrt za tehničko savjetovanje\nvl. Dražen Krajlah")),
            ],
          ),
        ],
      ),
    );
  }
}
