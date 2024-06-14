import 'package:expert_dk/config/styles/images.dart';
import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

class EDKMainWidget extends StatelessWidget {
  const EDKMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.ulicaKuce,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _primaryContainer(
            context: context,
            text: "EXPERT DK, vl. Dražen Krajlah",
            textStyle: Theme.of(context).textTheme.headlineLarge!,
          ),
          _secondaryContainer(
            context: context,
            text: "VAŠ PROCJENITELJ VRIJEDNOSTI NEKRETNINA!\n NAZOVITE NA +385 98 195 44 11",
            textStyle: Theme.of(context).textTheme.headlineLarge!,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "* Izrada elaborata procjene vrijednosti nekretnine od strane ovlaštenog stalnog sudskog vještaka građevinske struke prema važećim zakonskim propisima i standardima. Pregled nekretnine, kontrola dokumentacije i utvrđivanje legalnog statusa.",
                ),
              ),
              Expanded(
                child: Text(
                  "Izrada elaborata za : potrebe hipotekarnih kredita svih banaka\nknjigovodstvene svrhe\nunos nekretnine u temeljni kapital tvrtke\nsudske postupke\nkupoprodaju nekretnine\nsuvlasničke nagodbe.",
                ),
              ),
              Expanded(
                child: Text(
                  "* Financijski nadzor izgradnje\n* Kontrola dokumentacije nekretnine i utvrđivanje legalnog statusa.\n* Izrada izjava o vremenu izgradnje,\n * Izrada diobnih planova",
                ),
              ),
            ],
          ),
          _secondaryContainer(
            text:
                "PROCJENE NEKRETNINA:\nSTANOVI, OBITELJSKE KUĆE, VIŠESTAMBENE ZGRADE, STAMBENO-POSLOVNE ZGRADE, APARTMANI, GRAĐEVINSKA ZEMLJIŠTA, POLJOPRIVREDNA ZEMLJIŠTA, POLJOPRIVREDNI KOMPLEKSI, POSLOVNI PROSTORI, POSLOVNE ZGRADE, TVORNIČKI KOMPLEKSI, UGOSTITELJSKI OBJEKTI, HOSTELI, HOTELI, TRGOVAČKI CENTRI, JAVNE ZGRADE, SPECIJALNE NEKRETNINE.",
            context: context,
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          _primaryContainer(
            text: "Više od 20 godina iskustva u izradi procjembenih elaborata na području Republike Hrvatske\nZnanje, iskustvo, visoki profesionalni standardi garancija su kvalitete naših usluga.",
            context: context,
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          _secondaryContainer(
            text:
                "PROCJENA I POTREBNA DOKUMENTACIJA: Procjena tržišne vrijednosti nekretnine uz samo utvrđivanje tržišne vrijednosti iste podrazumijeva i provjeru pravnog statusa, odnosno uspoređivanje podataka u vlasničkoj i prostornoj dokumentaciji sa stanjem u naravi tj. identifikaciju objekta. Pregled nekretnine podrazumijeva izmjeru i fotografiranje nekretnine uz pregled dokumentacije.Potrebna dokumentacija koju trebate osigurati, ovisi o vrsti nekretnine, uobičajeno sadrži građevinsku dokumentaciju kojom se dokazuje legalitet nekretnine: uporabna i građevinska dozvola, projektna dokumentacija (isto nije većinom potrebno za stanove i ostale etažne cjeline). Izrada procjembenog elaborata je od 1 do 8 dana, ovisno o vrsti nekretnine i ispravnosti dostavljene dokumentacije.",
            context: context,
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
          _secondaryContainer(
            text:
                "Zakonom o procjeni vrijednosti nekretnina (NN  78/2015) uređen je način procjena vrijednosti nekretnina u Republici Hrvatskoj, kojeg provode stalni sudski vještaci za procjenu nekretnina i stalni sudski procjenitelji, čije ovlasti proizlaze iz posebnih propisa kojima se uređuje rad sudova i postupci izvlaštenja.\nPravilnikom o metodama procjene vrijednosti nekretnina (NN 105/2015) propisane su metode procjene vrijednosti nekretnina, izvođenje nužnih podataka, odabir metode za procjenu vrijednosti nekretnina, elementi te oblik i sadržaj procjembenog elaborata.",
            context: context,
            textStyle: Theme.of(context).textTheme.bodyLarge!,
          ),
        ],
      ),
    );
  }

  Widget _primaryContainer({required String text, required BuildContext context, required TextStyle textStyle}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: textStyle,
      ),
    );
  }

  Widget _secondaryContainer({required String text, required BuildContext context, required TextStyle textStyle}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: textStyle.copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
