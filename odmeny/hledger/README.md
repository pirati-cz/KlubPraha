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

      hledger -f book.journal balance tag:osoba="Jakub Michálek"

Přehled všech transakcí:

      hledger -f book.journal register tag:osoba="Jakub Michálek"

Tagy můžeme i hromadit. Například pokud chceme vyúčtování příjmů jednoho 
zastupitele za jeden měsíc, použijeme:

      hledger -f book.journal print tag:měsíc="2015-02" tag:osoba="Jakub Michálek"
 
Kontrola celkových výdajů od strany (kontrola limitu dle smlouvy):

      hledger -f book.journal balance "proměnlivá část"

Na wehu je k dispozici [kompletní manuál k hledgeru](http://hledger.org/manual.html).

Obdobným způsobem můžeme zobrazovat výsledky také na na webu pomocí rozhraní
`hledger-web`. Je však třeba si dát pozor na to, že jsou poněkud odlišně 
uvozovky. Správně se dotaz napíše následovně (zobraz mi přehled proměnlivé 
části u konkrétního zastupitele):
     
      tag:'osoba=Adam Zábranský' inacct:'výnosy:smluvní odměna:proměnlivá část' 
