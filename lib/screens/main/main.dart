import 'package:expert_dk/config/styles/images.dart';
import 'package:expert_dk/widgets/base_page_widget.dart';
import 'package:flutter/material.dart';

class EDKMainWidget extends StatelessWidget {
  const EDKMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EDKBasePageWidget(
      image: EDKImages.shared.ulicaKuce,
      child: const Column(
        children: [
          Text("EXPERT DK, vl. Dražen Krajlah"),
          Text("VAŠ PROCJENITELJ VRIJEDNOSTI NEKRETNINA!\n NAZOVITE NA +385 98 195 44 11"),
          Row(
            children: [
              Expanded(child: Text("* Izrada elaborata procjene vrijednosti nekretnine od strane ovlaštenog stalnog sudskog vještaka građevinske struke prema važećim zakonskim propisima i standardima. Pregled nekretnine, kontrola dokumentacije i utvrđivanje legalnog statusa.")),
              Expanded(child: Text("Izrada elaborata za : potrebe hipotekarnih kredita svih banaka\nknjigovodstvene svrhe\nunos nekretnine u temeljni kapital tvrtke\nsudske postupke\nkupoprodaju nekretnine\nsuvlasničke nagodbe.")),
              Expanded(child: Text("* Financijski nadzor izgradnje\n* Kontrola dokumentacije nekretnine i utvrđivanje legalnog statusa.\n* Izrada izjava o vremenu izgradnje,\n * Izrada diobnih planova")),
            ],
          ),
          Text(
              "PROCJENE NEKRETNINA:\nSTANOVI, OBITELJSKE KUĆE, VIŠESTAMBENE ZGRADE, STAMBENO-POSLOVNE ZGRADE, APARTMANI, GRAĐEVINSKA ZEMLJIŠTA, POLJOPRIVREDNA ZEMLJIŠTA, POLJOPRIVREDNI KOMPLEKSI, POSLOVNI PROSTORI, POSLOVNE ZGRADE, TVORNIČKI KOMPLEKSI, UGOSTITELJSKI OBJEKTI, HOSTELI, HOTELI, TRGOVAČKI CENTRI, JAVNE ZGRADE, SPECIJALNE NEKRETNINE."),
          Text("Više od 20 godina iskustva u izradi procjembenih elaborata na području Republike Hrvatske\nZnanje, iskustvo, visoki profesionalni standardi garancija su kvalitete naših usluga."),
          Text(
              "PROCJENA I POTREBNA DOKUMENTACIJA: Procjena tržišne vrijednosti nekretnine uz samo utvrđivanje tržišne vrijednosti iste podrazumijeva i provjeru pravnog statusa, odnosno uspoređivanje podataka u vlasničkoj i prostornoj dokumentaciji sa stanjem u naravi tj. identifikaciju objekta. Pregled nekretnine podrazumijeva izmjeru i fotografiranje nekretnine uz pregled dokumentacije.Potrebna dokumentacija koju trebate osigurati, ovisi o vrsti nekretnine, uobičajeno sadrži građevinsku dokumentaciju kojom se dokazuje legalitet nekretnine: uporabna i građevinska dozvola, projektna dokumentacija (isto nije većinom potrebno za stanove i ostale etažne cjeline). Izrada procjembenog elaborata je od 1 do 8 dana, ovisno o vrsti nekretnine i ispravnosti dostavljene dokumentacije."),
          Text(
              "Zakonom o procjeni vrijednosti nekretnina (NN  78/2015) uređen je način procjena vrijednosti nekretnina u Republici Hrvatskoj, kojeg provode stalni sudski vještaci za procjenu nekretnina i stalni sudski procjenitelji, čije ovlasti proizlaze iz posebnih propisa kojima se uređuje rad sudova i postupci izvlaštenja. Pravilnikom o metodama procjene vrijednosti nekretnina (NN 105/2015) propisane su metode procjene vrijednosti nekretnina, izvođenje nužnih podataka, odabir metode za procjenu vrijednosti nekretnina, elementi te oblik i sadržaj procjembenog elaborata."),
          Text("#procjena #procjenanekretnine #procjenavrijednostinekretnine #elaboratprocjene #procjembenielaborat#procjena stana#procjenakuće#procjenazemljišta#procjenaposlovnogprostora#procjenafarme#procjenaproizodnogpogona#procjenahale#procjenatvornice"),
          Text(
              "PROCJENA NEKRETNINE OSIJEK PROCJENA NEKRETNINE BELI MANASTIR PROCJENA NEKRETNINE VALPOVO PROCJENA NEKRETNINE BELIŠĆE PROCJENA NEKRETNINE DONJI MIHOLJAC PROCJENA NEKRETNINE ĐAKOVO PROCJENA NEKRETNINE NAŠICE PROCJENA NEKRETNINE VINKOVCI PROCJENA NEKRETNINE VUKOVAR  PROCJENA NEKRETNINE OTOK  PROCJENA NEKRETNINE NIJEMCI PROCJENA NEKRETNINE ILOK PROCJENA PROCJENA NEKRETNINE ŽUPANJA PROCJENA NEKRETNINE SLAVONSKI BROD PROCJENA NEKRETNINE NOVA GRADIŠKA PROCJENA NEKRETNINE POŽEGA  PROCJENA NEKRETNINE SLATINA  PROCJENA NEKRETNINE VIROVITICA PROCJENA NEKRETNINE PLETERNICA")
        ],
      ),
    );
  }
}
