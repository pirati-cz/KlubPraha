Účetnictví klubu
=================


Instalace
---------
Postupujte dle [návodu na webu](http://hledger.org/download.html).


Účetní osnova
-------------

V rámci účetnictví klubu jsou používány následující účty:

- aktiva
  - pohledávky
- výnosy
  - paušální odměna
  - hodinová náhrada
    - zasedání zastupitelstva
    - plnění úkolů
    - kontrolní výbor
    - jednání výboru
    - jednání komise
    - komise pro ICT
    - schůze rady
    - výkon funkce v řízené osobě
    - pracovní cesta
    - seminář
    - uzavírání manželství
  - odměna z mandátní smlouvy
    - pevná část
    - proměnlivá část
- náklady
  - vyplacené odměny
  - záloha na daň
  - zdravotní pojištění


Obvyklé dotazy
---------------

Předpokládejme soubor ve tvaru `test.journal`, který obsahuje vzorové záznamy
pro obvyklé transakce v rámci klubu.

Výsledek hospodaření filtrovaný podle osoby:

      hledger -f test.journal balance tag:"osoba=Jakub Michálek"

Přehled všech transakcí:

      hledger -f test.journal register tag:"osoba=Jakub Michálek"

Omezení na určitý měsíc:

      hledger -f test.journal register tag:"osoba=Jakub Michálek"
 
Kontrola celkových výdajů od strany (kontrola limitu dle smlouvy):

      hledger -f 2014-02.journal balance "proměnlivá část"


