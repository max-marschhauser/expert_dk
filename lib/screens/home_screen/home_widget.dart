import 'package:expert_dk/config/styles/images.dart';
import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

class EDKMainWidget extends StatelessWidget {
  const EDKMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Widget verticalDivider() {
      return Container(
        width: 2,
        height: screenWidth > 1000 ? 250 : 500,
        color: Theme.of(context).colorScheme.secondary,
      );
    }

    Widget columnText({required String text}) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 10, height: 10, color: Theme.of(context).colorScheme.secondary),
            const SizedBox(width: 16),
            SizedBox(
              width: screenWidth > 1400
                  ? screenWidth / 4
                  : screenWidth > 800
                      ? screenWidth / 6
                      : screenWidth / 10,
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      );
    }

    Widget primaryContainer({required String text, required TextStyle textStyle}) {
      return Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      );
    }

    Widget secondaryContainer({required String text, required TextStyle textStyle, String? subtext, TextStyle? subtextStyle}) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 64),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
        child: Column(
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            Text(
              subtext ?? "",
              textAlign: TextAlign.center,
              style: subtextStyle,
            ),
          ],
        ),
      );
    }

    Widget divider({required Color color}) {
      return Divider(
        height: 0,
        thickness: 4,
        indent: 64,
        endIndent: 64,
        color: color,
      );
    }

    return EDKBasePageWidget(
      image: EDKImages.shared.ulicaKuce,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          primaryContainer(
            text: "EXPERT DK, vl. Dražen Krajlah",
            textStyle: Theme.of(context).textTheme.headlineLarge!,
          ),
          secondaryContainer(
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
                      columnText(text: "Izrada elaborata procjene vrijednosti nekretnine od strane ovlaštenog stalnog sudskog vještaka građevinske struke prema važećim zakonskim propisima i standardima."),
                      columnText(text: "Pregled nekretnine, kontrola dokumentacije i utvrđivanje legalnog statusa"),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                verticalDivider(),
                const SizedBox(width: 32),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      columnText(text: "Izrada elaborata za:"),
                      columnText(text: "potrebe hipotekarnih kredita svih banaka"),
                      columnText(text: "knjigovodstvene svrhe, unos nekretnine u temeljni kapital tvrtke"),
                      columnText(text: "sudske postupke"),
                      columnText(text: "kupoprodaju nekretnine"),
                      columnText(text: "suvlasničke nagodbe"),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                verticalDivider(),
                const SizedBox(width: 32),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      columnText(text: "Financijski nadzor izgradnje"),
                      columnText(text: "Kontrola dokumentacije nekretnine i utvrđivanje legalnog statusa."),
                      columnText(text: "Izrada izjava o vremenu izgradnje,"),
                      columnText(text: "Izrada diobnih planova"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          secondaryContainer(
            text:
                "PROCJENE NEKRETNINA:\nSTANOVI, OBITELJSKE KUĆE, VIŠESTAMBENE ZGRADE, STAMBENO-POSLOVNE ZGRADE, APARTMANI, GRAĐEVINSKA ZEMLJIŠTA, POLJOPRIVREDNA ZEMLJIŠTA, POLJOPRIVREDNI KOMPLEKSI, POSLOVNI PROSTORI, POSLOVNE ZGRADE, TVORNIČKI KOMPLEKSI, UGOSTITELJSKI OBJEKTI, HOSTELI, HOTELI, TRGOVAČKI CENTRI, JAVNE ZGRADE, SPECIJALNE NEKRETNINE.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          primaryContainer(
            text: "Više od 20 godina iskustva u izradi procjembenih elaborata na području Republike Hrvatske\nZnanje, iskustvo, visoki profesionalni standardi garancija su kvalitete naših usluga.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          secondaryContainer(
            text:
                "PROCJENA I POTREBNA DOKUMENTACIJA:\nProcjena tržišne vrijednosti nekretnine uz samo utvrđivanje tržišne vrijednosti iste podrazumijeva i provjeru pravnog statusa, odnosno uspoređivanje podataka u vlasničkoj i prostornoj dokumentaciji sa stanjem u naravi tj. identifikaciju objekta. Pregled nekretnine podrazumijeva izmjeru i fotografiranje nekretnine uz pregled dokumentacije.Potrebna dokumentacija koju trebate osigurati, ovisi o vrsti nekretnine, uobičajeno sadrži građevinsku dokumentaciju kojom se dokazuje legalitet nekretnine: uporabna i građevinska dozvola, projektna dokumentacija (isto nije većinom potrebno za stanove i ostale etažne cjeline). Izrada procjembenog elaborata je od 1 do 8 dana, ovisno o vrsti nekretnine i ispravnosti dostavljene dokumentacije.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          divider(color: Theme.of(context).colorScheme.primary),
          secondaryContainer(
            text:
                "Zakonom o procjeni vrijednosti nekretnina (NN  78/2015) uređen je način procjena vrijednosti nekretnina u Republici Hrvatskoj, kojeg provode stalni sudski vještaci za procjenu nekretnina i stalni sudski procjenitelji, čije ovlasti proizlaze iz posebnih propisa kojima se uređuje rad sudova i postupci izvlaštenja.\nPravilnikom o metodama procjene vrijednosti nekretnina (NN 105/2015) propisane su metode procjene vrijednosti nekretnina, izvođenje nužnih podataka, odabir metode za procjenu vrijednosti nekretnina, elementi te oblik i sadržaj procjembenog elaborata.",
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
        ],
      ),
    );
  }
}
