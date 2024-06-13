import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../config/styles/images.dart';

class EDKAboutWidget extends StatelessWidget {
  const EDKAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.tlocrt,
      child: const Column(
        children: [
          Text("KVALIFIKACIJE"),
          Text(
              "Dražen Krajlah, magistar inženjer građevinarstva\nStalni sudski vještak za građevinarstvo i procjenitelj vrijednosti nekretnina\nčlan Hrvatskog društva sudskih vještaka i procjenitelja\nviše od 20 godina iskustva na procjenama nekretnina\niskustvo stečeno u financijskom sektoru te stjecanje znanja procjenjivanja proslovih nekretnina kroz ekonomski aspekt"),
          Text("MISIJA"),
          Text("Zadovoljstvo svakog klijenta pružanjem kvalitetne profesionalnu usluge uz poštivanje zakonskih propisa u području procjena vrijednosti nekretnina"),
        ],
      ),
    );
  }
}
