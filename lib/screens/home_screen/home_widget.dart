import 'package:expert_dk/config/styles/images.dart';
import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/column_text.dart';
import '../../widgets/container.dart';
import '../../widgets/divider.dart';

class EDKMainWidget extends StatelessWidget {
  const EDKMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return EDKBasePageWidget(
      image: EDKImages.shared.ulicaKuce,
      titleText: 'EXPERT DK, vl. Dražen Krajlah',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EDKContainer.secondaryContainer(
            context: context,
            text: "VAŠ PROCJENITELJ VRIJEDNOSTI NEKRETNINA! NAZOVITE NA",
            textStyle: Theme.of(context).textTheme.headlineLarge!,
            subtext: "+385 98 195 44 11",
            subtextStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EDKColumnText(screenWidth: screenWidth, text: "Izrada elaborata procjene vrijednosti nekretnine od strane ovlaštenog stalnog sudskog vještaka građevinske struke prema važećim zakonskim propisima i standardima."),
                      EDKColumnText(screenWidth: screenWidth, text: "Pregled nekretnine, kontrola dokumentacije i utvrđivanje legalnog statusa"),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                EDKDivider.verticalDivider(context: context, screenWidth: screenWidth),
                const SizedBox(width: 32),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EDKColumnText(screenWidth: screenWidth, text: "Izrada elaborata za:"),
                      EDKColumnText(screenWidth: screenWidth, text: "potrebe hipotekarnih kredita svih banaka"),
                      EDKColumnText(screenWidth: screenWidth, text: "knjigovodstvene svrhe, unos nekretnine u temeljni kapital tvrtke"),
                      EDKColumnText(screenWidth: screenWidth, text: "sudske postupke"),
                      EDKColumnText(screenWidth: screenWidth, text: "kupoprodaju nekretnine"),
                      EDKColumnText(screenWidth: screenWidth, text: "suvlasničke nagodbe"),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                EDKDivider.verticalDivider(context: context, screenWidth: screenWidth),
                const SizedBox(width: 32),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EDKColumnText(screenWidth: screenWidth, text: "Financijski nadzor izgradnje"),
                      EDKColumnText(screenWidth: screenWidth, text: "Kontrola dokumentacije nekretnine i utvrđivanje legalnog statusa."),
                      EDKColumnText(screenWidth: screenWidth, text: "Izrada izjava o vremenu izgradnje,"),
                      EDKColumnText(screenWidth: screenWidth, text: "Izrada diobnih planova"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          EDKContainer.secondaryContainer(
            context: context,
            text:
                "PROCJENE NEKRETNINA:\nSTANOVI, OBITELJSKE KUĆE, VIŠESTAMBENE ZGRADE, STAMBENO-POSLOVNE ZGRADE, APARTMANI, GRAĐEVINSKA ZEMLJIŠTA, POLJOPRIVREDNA ZEMLJIŠTA, POLJOPRIVREDNI KOMPLEKSI, POSLOVNI PROSTORI, POSLOVNE ZGRADE, TVORNIČKI KOMPLEKSI, UGOSTITELJSKI OBJEKTI, HOSTELI, HOTELI, TRGOVAČKI CENTRI, JAVNE ZGRADE, SPECIJALNE NEKRETNINE.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          EDKContainer.primaryContainer(
            text: "Više od 20 godina iskustva u izradi procjembenih elaborata na području Republike Hrvatske\nZnanje, iskustvo, visoki profesionalni standardi garancija su kvalitete naših usluga.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
            context: context,
          ),
          EDKContainer.secondaryContainer(
            context: context,
            text:
                "PROCJENA I POTREBNA DOKUMENTACIJA:\nProcjena tržišne vrijednosti nekretnine uz samo utvrđivanje tržišne vrijednosti iste podrazumijeva i provjeru pravnog statusa, odnosno uspoređivanje podataka u vlasničkoj i prostornoj dokumentaciji sa stanjem u naravi tj. identifikaciju objekta. Pregled nekretnine podrazumijeva izmjeru i fotografiranje nekretnine uz pregled dokumentacije.Potrebna dokumentacija koju trebate osigurati, ovisi o vrsti nekretnine, uobičajeno sadrži građevinsku dokumentaciju kojom se dokazuje legalitet nekretnine: uporabna i građevinska dozvola, projektna dokumentacija (isto nije većinom potrebno za stanove i ostale etažne cjeline). Izrada procjembenog elaborata je od 1 do 8 dana, ovisno o vrsti nekretnine i ispravnosti dostavljene dokumentacije.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          EDKDivider.horizontalDivider(color: Theme.of(context).colorScheme.primary),
          EDKContainer.secondaryContainer(
            context: context,
            text:
                "Zakonom o procjeni vrijednosti nekretnina (NN  78/2015) uređen je način procjena vrijednosti nekretnina u Republici Hrvatskoj, kojeg provode stalni sudski vještaci za procjenu nekretnina i stalni sudski procjenitelji, čije ovlasti proizlaze iz posebnih propisa kojima se uređuje rad sudova i postupci izvlaštenja.\nPravilnikom o metodama procjene vrijednosti nekretnina (NN 105/2015) propisane su metode procjene vrijednosti nekretnina, izvođenje nužnih podataka, odabir metode za procjenu vrijednosti nekretnina, elementi te oblik i sadržaj procjembenog elaborata.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
        ],
      ),
    );
  }
}
