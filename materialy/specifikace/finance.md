Aplikace pro finanční odbor
===========================

Jakub Michálek  
Česká pirátská strana

Specifikace pro modul aplikace pro finanční odbor, který řeší vnitřní
plánování financí a jejich evidenci v průběhu roku. Jednotlivé části popisuji
z hlediska uživatele, neboť toto hlediska je rozhodující pro zadavatele. 

Vymezení modulu
---------------

Do tohoto modulu patří sestavování rozpočtu, jeho změna v průběhu roku a 
čerpání z rozpočtu. 

Přehled pohledů
---------------

### Obecné typy pohledů

#### Dokument

Rozpočtová skladba, rozpočtová položka, rozpočet, žádost o proplacení a další materiály
mají povahu *dokumentu*. U každého dokumentu musí být možné zobrazit jeho
kompletní historii revizí a zobrazit si verzi platnou k libovolnému dni, jakož
i zobrazit si, kdo provedl jeho změny, kdo je odsouhlasil apod. Rozpočet může 
být generovaný z jednotlivých rozpočtových položek (to je vnitřní věcí programu),
ale musí být možné ho tvořit, upravovat a zobrazovat jako celek, jakož i 
zobrazovat jeho rozdíly. U dokumentu je možnost exportování do standardizovaného
formátu, jakož i možnost (pro přihlášené uživatele) navrhnout nebo provést 
změnu dokumentu importováním dokumentu.


#### Seznam dokumentů

Dokumenty lze řadit do seznamů (přehledů). Ustanovení této kapitoly se použijí kdykoliv 
se v tomto textu mluví o úplném seznamu nebo přehledu některých dokumentů. 
Úplný seznam zobrazuje při výchozím nastavení posledních např. 10, 100 nebo 1000
platných dokumentů (a to tak, že v záhlaví se zobrazuje, že je aktivován filtr
platného dokumentu). V záhlaví lze přidávat další filtry (např. podle autora,
data přijetí apod.) a tyto filtry vzájemně kombinovat a nastavovat seskupování
výsledků a řazení (obdobně jako u úkolů v systému redmine).

### Vstupní stránky

#### Vstupní stránka pro návštěvníka

Návštěvník zvenčí uvidí při příchodu na stránku graficky znázorněný rozpočet
nejvyšší úrovně (viz dále) a seznam několika posledních vyplacených výdajů 
s odkazem na pohled s názvem **Přehled výdajů**.

Následuje specifikace pohledů pro jiné skupiny uživatelů. Konkrétním popisem se
nerozumí, že by zobrazované údaje byly utajené, právě naopak, všechny údaje
v systému jsou veřejné (pouze jsou jiná oprávnění ke změnám stavů a obsahu). 
Akorát z důvodu přehlednosti má každý jiné zobrazení (pohled). 

#### Vstupní stránka pro uživatele

Uživatel (člen strany nebo registrovaný příznivec) uvidí po přihlášení pomocí
OpenID 
* grafické znázornění části rozpočtu, za kterou je odpovědný nebo
  ke které má jiný vztah (může si ji nastavit). U každé rozpočtové položky je 
  uvedeno, kolik v ní zbývá peněz pro čerpání. Odkazy vedou na kapitoly či
  položky rozpočtu. Viz pohled s názvem **Položka rozpočtu** a **Rozpočet**.
  U každé spravované položky je uveden odkaz na podání nové žádosti z této
  položky. Viz pohled **Podání žádosti o proplacení**.
* Pokud má povinnost předložit návrh rozpočtu (např. krajský předseda) a dosud
  tak neučinil, zobrazí se mu upozornění na tuto povinnost s tlačítkem s odkazem
  na pohled **Tvorba rozpočtu** dané rozpočtové jednotky. Předpokladem je, 
  že příslušný orgán schválil rozpočet vyšší úrovně. Pokud se tak dosud nestalo,
  zobrazí se vysvětlující informace. Pokud dojde k tomu, že rozpočet není 
  schválen, ačkoliv období, na které se má vztahovat, již začalo, automaticky
  se založí nový rozpočet jako rozpočtové provizorium s omezenou platností do
  schválení rozpočtu. 
* Dále uvidí seznam žádostí o proplacení z rozpočtových položek, které čekají na
  jeho schválení (tj. kde je hospodář ve smyslu rozpočtových pravidel), které si 
  může rozkliknout anebo ihned potvrdit. Viz pohled s názvem 
  **Podaná žádost o proplacení**.
* Dále uvidí seznam žádostí o proplacení, které má rozpracovány nebo podány 
  pro části rozpočtu, které mají jiného hospodáře. V těchto případech se čeká
  na rozhodnutí hospodáře, který může našemu uživateli žádost schválit anebo
  odmítnout (vrátit k přepracování s poznámkou). Viz pohled s názvem 
  **Podaná žádost o proplacení**.
* Pokud má uživatel oprávnění navrhovat změnu rozpočtu (tj. je např. členem 
  krajského předsednictva), vidí také tlačítko s odkazem na pohled s názvem
  **Změna rozpočtu**.
* Uživatel vidí také všechny další dokumenty, které má rozpracované nebo které 
  mu byly předány.

> **Příklad**:
> 
> Přihlásí se 
> předseda krajského sdružení a uvidí tam rozpočet krajského sdružení a dále
> rozpočtovou položku na svůj projekt v participativním rozpočtu. Okamžitě vidí,
> kolik peněz přišlo na účelových darech ve fundraisingu, kolik má možnost
> vyčerpat ze schváleného rozpočtu. Také vidí, že mu dobrovolník podal žádost
> o proplacení schválené objednávky, kterou již předtím zkontroloval, tak jen
> odklikne, že s připravenou žádostí o proplacení souhlasí a ta je tímto
> okamžikem podána.

#### Vstupní stránka pro účetní orgán

Účetním orgánem je v České pirátské straně finanční odbor. Člen finančního 
odboru, kterého vedoucí finančního odboru pověří správou aplikace, po přihlášení 
pomocí OpenID vidí:

* Stejné údaje jako uživatel (viz popis výše), akorát grafické znázornění 
  zachycuje celý rozpočet včetně příjmů.
* Dále uvidí seznam žádostí o proplacení, které byly schváleny příslušným 
  hospodářem a čekají na rozhodnutí o proplacení od vedoucího finančního odboru
  nebo pověřeného správce. Ten může žádost ihned tlačítkem potvrdit, čímž je 
  odsouhlaseno čerpání z bankovního účtu anebo je může rozkliknout. 
  Viz pohled s názvem **Podaná žádost o proplacení**.
* Dále uvidí seznam žádostí o proplacení, u kterých jako účetní orgán rozhodl
  o proplacení, ale dosud nebyly z bankovního účtu proplaceny.
  Viz pohled s názvem **Podaná žádost o proplacení**.
* Dále uvidí seznam žádostí o proplacení, u kterých jako účetní orgán rozhodl
  o proplacení, které byly již z bankovního účtu proplaceny, ale nebyl k nim
  připojen doklad. Viz pohled s názvem **Podaná žádost o proplacení**.
* Dále uvidí seznam rozpočtů anebo jejich změn, které čekají na registraci.
  Rozpočet nebo jeho změnu může jednotlivě nebo dávkově registrovat.
  Viz pohled **Tvorba rozpočtu** a pohled **Změna rozpočtu**.
* Dále uvidí seznam několika posledních automatických změn rozpočtu, a to
  s odkazem na pohled **Seznam změn rozpočtu**.
* Dále uvidí odkaz na **Nastavení**.

### Nastavení

V nastavení se zobrazují odkazy na 
  * **Správu rozpočtových skladeb**,
  * **Automatické procesy** (parametry rozpočtových provizorií a automatických
    změn rozpočtu),
  * **Správu osob** (společně s jejich oprávněními).

### Rozpočtová skladba

#### Správa rozpočtových skladeb

Rozpočtová skladba je skupina způsobů třídění, které definují vlastnosti 
rozpočtové položky. V tomto pohledu se zobrazuje seznam rozpočtových skladeb,
které jsou nedefinovány pro jednotlivá sdružení. 

Účetní orgán zde vidí seznam rozpočtových skladeb (s možností zobrazit si
rozpočtové skladby i neplatné, viz výše pohled **Seznam dokumentů**), 
schvalovat rozpočtové skladby
pro jednotlivé účely (např. pro krajská sdružení) s odkazem na pohled
**Rozpočtová skladba**
a vytvářet nové rozpočtové skladby odkazem na pohled 
**Tvorba rozpočtové skladby**. 

#### Tvorba rozpočtové skladby

Každá rozpočtová skladba

* z definice musí obsahovat třídění *odpovědnostní* (tj. možnost uvést u každé 
  rozpočtové
  položky i jejího čerpání správce rozpočtové položky neboli jejího hospodáře)
* dále vnitřní předpisy vyžadují třídění *účelové* (podle účelu, na který
  jsou peníze závazně určeny) jak v rozpočtu, tak jeho čerpání,
* dále vnitřní předpisy vyžadují třídění *zdrojové* (podle toho, zda jsou 
  v rozpočtové položce veřejné peníze, peníze z grantu či nikoliv), jak 
  v rozpočtu, tak v čerpání,
* dále by měl finanční odbor stanovit také třídění *druhové* povinné u rozpočtu
  i jeho čerpání (to je povinné v rozpočtu jen v základní podobě třídění na 
  výdaje, příjmy a financování), přičemž u čerpání rozpočtu je povinnost 
  evidovat výdaj aspoň
  v třídění dle § 18 odst. 1 písm. c) zákona č. 424/1991 Sb. a u příjmů dle
  § 17 odst. 4 téhož zákona,
* dále by měl stanovit třídění dle vazby uvnitř rozpočtu mezi příjmy a výdaji 
  (povinné jen u svázených položek) a mezi položkami nadřízeného a podřízeného
  rozpočtu (mezi výdajovou položkou nadřízeného rozpočtu a příjmovou položkou
  podřízeného rozpočtu); vazba mezi rozpočty různé úrovně je projevem 
  *konsolidačního* třídění,
* dále by měl finanční odbor stanovit v rozpočtové skladbě u čerpání rozpočtu
  třídění *prostorové*, aby se dalo analyzovat, kde byly dané prostředky
  vynaloženy (např. zda ústřední rozpočet vynakládá srovnatelné objemy na 
  různé části republiky),
* dále by měl finanční odbor stanovit v rozpočtové skladbě u čerpání rozpočtu
  třídění *záměrové* (rozpočtová skladba územních rozpočtů hovoří o třídění
  příslušnosti, které je členěné na akce), aby se dalo analyzovat, jakého záměru 
  je daný výdaj součástí a aby se mohly sledovat celkové výdaje v daném záměru,
  podléhající souhlasu jiného orgánu. 

Účetní orgán tedy může například vytvořit novou rozpočtovou skladbu, která
bude mít název *Rozpočtová skladba krajských sdružení 2014*. Účetní orgán bude 
moci přidat nové hledisko třídění a nastavit jeho povolené hodnoty, např.
druhové třídění na výdaje, příjmy a financování, z toho výdaje a příjmy se dále
člení výše uvedeným způsobem. Účetní orgán u každého třídění bude moci 
definovat, kdy je povinné (např. u rozpočtové položky, u čerpání rozpočtu apod.)
U rozpočtové skladby je definována vlastnost, na jaký typ rozpočtové jednotky 
se vztahuje (např. celá strana, krajské sdružení apod.).

Tímto způsobem je možné přidávat neomezený počet třídění. Přitom bude 
možnost vkládat omezující podmínky. 

> **Příklad**:
> 
> 1. pokud je definováno druhové
>    třídění, musí být součet příjmů, výdajů a financování roven jedné, nebo 
> 2. pokud je definováno druhové a účelové třídění, musí být úhrn příjmů s určeným
>    účelem menší roven výdajům a financování se stejným účelem. 

Tyto omezující podmínky se následně použijí při validaci návrhu rozpočtu vůči rozpočtové skladbě (uživateli javascript neumožní takový rozpočet ani vytvořit 
a pokud ho vytvoří, server ho neakceptuje).

#### Rozpočtová skladba

V pohledu se zobrazují všechny parametry vytvořené rozpočtové skladby (která 
má povahu dokumentu, viz výše) a v případě, že uživatel disponuje patřičnými
oprávněními, umožňuje mu vytvořit návrh změny rozpočtové skladby odkazem 
na **Změnu rozpočtové skladby**. Je také zobrazen seznam rozpočtů, které
danou rozpočtovou skladbu používají.

#### Změna rozpočtové skladby

Pohled umožňuje komukoliv utvořit návrh změny vybrané rozpočtové skladby a 
následně tento návrh změny rozpočtové skladby předat účetnímu orgánu, který
je oprávněn vydat novou rozpočtovou skladbu (viz výše). 



