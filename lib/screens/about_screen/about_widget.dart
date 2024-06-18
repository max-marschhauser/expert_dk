import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:expert_dk/widgets/container.dart';
import 'package:flutter/material.dart';

import '../../config/styles/images.dart';

class EDKAboutWidget extends StatelessWidget {
  const EDKAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.tlocrt,
      titleText: 'Kvalifikacije',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EDKContainer.secondaryContainer(
              text:
                  "Dražen Krajlah, magistar inženjer građevinarstva\n\nStalni sudski vještak za građevinarstvo i procjenitelj vrijednosti nekretnina\n\nČlan Hrvatskog društva sudskih vještaka i procjenitelja\n\nViše od 20 godina iskustva na procjenama nekretnina\n\nIskustvo stečeno u financijskom sektoru te stjecanje znanja procjenjivanja poslovih nekretnina kroz ekonomski aspekt",
              textStyle: Theme.of(context).textTheme.bodyLarge!,
              context: context),
          EDKContainer.primaryContainer(text: "Misija", textStyle: Theme.of(context).textTheme.headlineLarge!, context: context),
          EDKContainer.secondaryContainer(
            text: "Zadovoljstvo svakog klijenta pružanjem kvalitetne profesionalne usluge uz poštivanje zakonskih propisa u području procjena vrijednosti nekretnina",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
            context: context,
          ),
        ],
      ),
    );
  }
}
