import 'package:expert_dk/config/styles/images.dart';
import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/badge.dart';
import '../../widgets/column_text.dart';
import '../../widgets/container.dart';
import '../../widgets/divider.dart';

class EDKMainWidget extends StatelessWidget {
  const EDKMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Widget lawRow() {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Text(
              "Zakonom o procjeni vrijednosti nekretnina (NN  78/2015) uređen je način procjena vrijednosti nekretnina u Republici Hrvatskoj, kojeg provode stalni sudski vještaci za procjenu nekretnina i stalni sudski procjenitelji, čije ovlasti proizlaze iz posebnih propisa kojima se uređuje rad sudova i postupci izvlaštenja.",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary)),
        ),
        const SizedBox(width: 32),
        Expanded(
          child: Text("Pravilnikom o metodama procjene vrijednosti nekretnina (NN 105/2015) propisane su metode procjene vrijednosti nekretnina, izvođenje nužnih podataka, odabir metode za procjenu vrijednosti nekretnina, elementi te oblik i sadržaj procjembenog elaborata.",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary)),
        ),
      ]);
    }

    Widget lawColumn() {
      return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          "Zakonom o procjeni vrijednosti nekretnina (NN  78/2015) uređen je način procjena vrijednosti nekretnina u Republici Hrvatskoj, kojeg provode stalni sudski vještaci za procjenu nekretnina i stalni sudski procjenitelji, čije ovlasti proizlaze iz posebnih propisa kojima se uređuje rad sudova i postupci izvlaštenja.",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        EDKDivider.horizontalDivider(color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 32),
        Text(
          "Pravilnikom o metodama procjene vrijednosti nekretnina (NN 105/2015) propisane su metode procjene vrijednosti nekretnina, izvođenje nužnih podataka, odabir metode za procjenu vrijednosti nekretnina, elementi te oblik i sadržaj procjembenog elaborata.",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary),
          textAlign: TextAlign.center,
        ),
      ]);
    }

    return EDKBasePageWidget(
      image: EDKImages.shared.ulicaKuce,
      titleText: 'EXPERT DK, vl. Dražen Krajlah',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EDKContainer.secondaryContainer(
            context: context,
            text: "VAŠ PROCJENITELJ VRIJEDNOSTI NEKRETNINA!\nNAZOVITE NA",
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
            text: "PROCJENE NEKRETNINA\n",
            textStyle: Theme.of(context).textTheme.headlineSmall!,
            child: const Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 16,
              spacing: 32,
              children: [
                EDKBadge(text: "STANOVI"),
                EDKBadge(text: "OBITELJSKE KUĆE"),
                EDKBadge(text: "VIŠESTAMBENE ZGRADE"),
                EDKBadge(text: "STAMBENO-POSLOVNE ZGRADE"),
                EDKBadge(text: "APARTMANI"),
                EDKBadge(text: "GRAĐEVINSKA ZEMLJIŠTA"),
                EDKBadge(text: "POLJOPRIVREDNA ZEMLJIŠTA"),
                EDKBadge(text: "POLJOPRIVREDNI KOMPLEKSI"),
                EDKBadge(text: "POSLOVNI PROSTORI"),
                EDKBadge(text: "POSLOVNE ZGRADE"),
                EDKBadge(text: "TVORNIČKI KOMPLEKSI"),
                EDKBadge(text: "UGOSTITELJSKI OBJEKTI"),
                EDKBadge(text: "HOSTELI"),
                EDKBadge(text: "HOTELI"),
                EDKBadge(text: "TRGOVAČKI CENTRI"),
                EDKBadge(text: "JAVNE ZGRADE"),
                EDKBadge(text: "SPECIJALNE NEKRETNINE"),
              ],
            ),
          ),
          EDKContainer.primaryContainer(
            text: "Više od 20 godina iskustva u izradi procjembenih elaborata na području Republike Hrvatske\n\nZnanje, iskustvo, visoki profesionalni standardi garancija su kvalitete naših usluga.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
            context: context,
          ),
          EDKContainer.secondaryContainer(
              context: context,
              text: "PROCJENA I POTREBNA DOKUMENTACIJA\n",
              textStyle: Theme.of(context).textTheme.headlineSmall!,
              subtext:
                  "Procjena tržišne vrijednosti nekretnine uz samo utvrđivanje tržišne vrijednosti iste podrazumijeva i provjeru pravnog statusa, odnosno uspoređivanje podataka u vlasničkoj i prostornoj dokumentaciji sa stanjem u naravi tj. identifikaciju objekta.\nPregled nekretnine podrazumijeva izmjeru i fotografiranje nekretnine uz pregled dokumentacije.\nPotrebna dokumentacija koju trebate osigurati, ovisi o vrsti nekretnine, uobičajeno sadrži građevinsku dokumentaciju kojom se dokazuje legalitet nekretnine: uporabna i građevinska dozvola, projektna dokumentacija (isto nije većinom potrebno za stanove i ostale etažne cjeline).\nIzrada procjembenog elaborata je od 1 do 8 dana, ovisno o vrsti nekretnine i ispravnosti dostavljene dokumentacije.",
              subtextStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary)),
          EDKDivider.horizontalDivider(color: Theme.of(context).colorScheme.primary),
          EDKContainer.secondaryContainer(context: context, child: MediaQuery.of(context).size.width > 1000 ? lawRow() : lawColumn()),
        ],
      ),
    );
  }
}
