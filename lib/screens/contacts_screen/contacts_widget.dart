import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../config/styles/images.dart';

class EDKContactsWidget extends StatelessWidget {
  const EDKContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        );

    return EDKBasePageWidget(
      image: EDKImages.shared.mobitelRuka,
      titleText: 'Kontakt',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(64),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Dražen Krajlah, mag.ing.aedif.", style: textStyle),
                        const SizedBox(height: 12),
                        Text("Učka 1, 31000 Osijek", style: textStyle),
                        const SizedBox(height: 12),
                        Text("GSM: 098 195 44 11", style: textStyle),
                        const SizedBox(height: 12),
                        Text("MAIL: drazen.krajlah@gmail.com", style: textStyle),
                        const SizedBox(height: 12),
                        Text("WEB: www.expertdk.hr", style: textStyle),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Image.asset(
                  EDKImages.shared.kalkucaPlava,
                  height: 250,
                )),
                Expanded(
                  child: Center(
                    child: Text(
                      "EXPERT DK, obrt za tehničko savjetovanje\nvl. Dražen Krajlah",
                      style: textStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
