Účetnictví klubu
=================


Instalace
---------
Postupujte dle [návodu na webu](http://hledger.org/download.html).


Účetní osnova
-------------

V rámci účetnictví klubu jsou používány následující účty:

- aktiva
  - pohledávka
  - bankovní účet
- výnosy
  - paušální odměna
  - náhrada výdělku
  - smluvní odměna
    - pevná část
    - proměnlivá část
- náklady
  - záloha na daň
  - zdravotní pojištění

Vzorové výkazy
--------------

Vzorové účetní případy pro hospodaření zastupitelského klubu jsou zpracovány 
v souboru [template.journal](template.journal).

Obvyklé dotazy
---------------

Předpokládejme soubor ve tvaru `book.journal`, který obsahuje vzorové záznamy
pro obvyklé transakce v rámci klubu.

Výsledek hospodaření filtrovaný podle osoby:

      hledger -f book.journal balance tag:"osoba=Jakub Michálek"

Přehled všech transakcí:

      hledger -f book.journal register tag:"osoba=Jakub Michálek"

Omezení na určitý měsíc:

      hledger -f book.journal register tag:"osoba=Jakub Michálek"
 
Kontrola celkových výdajů od strany (kontrola limitu dle smlouvy):

      hledger -f book.journal balance "proměnlivá část"


