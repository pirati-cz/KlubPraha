---
title: Vize Pirátů pro dopravní odbavení
author: Ondřej Profant
date: léto 2016
lang: cs
mainlang: czech
geometry:
- right=30mm
- left=30mm
- top=30mm
- bottom=25mm
header-includes:
- \usepackage[hang,flushmargin]{footmisc}
- \setlength{\footnotemargin}{0.3cm}
---

\newpage

\tableofcontents

\newpage

# Úvod

Primátorka Prahy Adriana Krnáčová přizvala dva členy zastupiteslkého klubu Pirátů spolupracovali na řešení problematiky Opencard.[^1b] 

Snažili jsme se být konstruktivní, avšak nefungovalo to tak jak jsme si představovali. Byli jsme sice přizváni k důležitým jednáním apod, avšak chyběly nám exekutivní pravomoce a díky tomu se nedařilo realizovat jakékoliv komplexnější kroky. Příkladem může být dopravní odbavení pomocí platebních karet.

Proto jsme se rozhodli sepsat následující text, kde shrnujeme naší vizi a doporučení.

## Dopravní odbavení v Praze

Odbavovací systém je v osobní veřejné dopravě běžné označení pro způsob placení jízdného, z něhož vyplývá i organizace nástupu do dopravních prostředků a výstupu z nich, vymezovaní placeného (uzavřeného) přepravního prostoru ve stanicích, způsoby prodeje a označování jízdenek, prokazování se jízdními doklady a jejich kontrola.[^1] 

V rámci Prahy určuje dopravní tarif Rada HMP, dopravu řídí Regionální organizátor pražské integrované dopravy (ROPID)[^2] a většinu úkonů provádí Dopravní podnik Prahy a. s. Z toho důvodu je v organizaci a strategickém plánování chaos. Tyto orgány a instituce se nejsou schopny zkoordinovat. Má to logické důvody: Rada jako politický orgán se často obměňuje, DPP je akciovka s velkým obratem, která netouží po konkurenci a ROPID nemá dostatečnou sílu, aby prosadil svou.

A samozřejmě tou největší ránou je všudypřítomná korupce. Ta tuto oblast poznamenala silně. Bémova Opencard v oblasti čipových karet, Rittigovy SMS jízdenky v oblasti odbavení skrze mobil.

Posun k lepšímu je v této situaci velmi náročnou úlohou. Nám se to přesto podařilo.

\newpage

# Část 1.: Naše kroky

## Výchozí stav

Nejprve bylo třeba zorientovat se v situaci. To není v realiích magistrátu nic jednoduchého. Neexistuje konsolidované znění smluv, zodpovědní pracovníci vám mnohdy hází klacky pod nohy.

Zjistili jsme (stav k počátku roku 2015):

**Opencard:** Systém je v úplně nepředstavitelném stavu. Společnost Operátor Opencard a.s.[^3], která jej provozuje, jen převádí peníze EMS[^4]. Sama se dokonce bojí přistoupit do databáze. Její vedení nebylo schopno udělat žádné realné kroky k nápravě tohoto stavu. Za každou kartu se dle licenční smlouvy odvádí 50 Kč a dalších 50 Kč za každou aplikaci na kartě (třeba aplikaci dopravní odbavení, tzv. DOS od DPP). Do toho EMS žaluje město v celé řadě soudních sporů. Rada pod vedením T. Hudečka si myslela, že může odkoupit závod (proto také založila Operátora Opencard, a.s.), avšak tento plán byl věcně i ekonomicky zcela zcestný.

**SMS jízdenky:** V době zavedení (2007) měly marži 46 % procent! Postupně byla snížena na stále neuvěřitelných 24 %. Pro srovnání např. mnohem menší Pardubice mají marži 13 %.[^5] Další ohromnou nevýhodou je, že služba je dostupná jen pro lidi s českou SIM kartou. Čili jedna z klíčových cílových skupin krátkodobých jízdenek – turisté – není obsloužena.

**Papírové kupony:** Mohli využívat pouze studenti, příměstští a lidé využívající přenosné jízdné (anonymní).

## Znovuzavedení papírových kuponů

Jedinou možností, jak odvrátit další promrhání prostředků do Opencard, bylo snížit počet licencí.

Zjistili jsme, že existuje mnoho duplicitních karet (tedy i duplicitních licencí). Je znám případ, kdy na 1 osobu bylo dokonce napsáno 24 licencí. Avšak mazání duplicit bylo v systému od EMS možné pouze po jednotlivých duplicitách na vybraných počitačích (ano bavíme se o systému, který vznikl v 21. století). To bylo zcela neefektivní – což nejspíše byl záměr autorů softwaru.

Potřebovali jsme radikálnější snížení odebíraných licencí. Cesta byla jednodušší než by se mohlo zdát. Prostě jsme znovuzavedli papírové kupony pro všechny druhy jízdného. Do té doby je mohli využívat pouze studenti, příměštští a lidé využívající přenostné jizdné.

Papírové kupony mají nepřekonatelnou jednoduchost, anonymitu a minimální náklady.

Zavedení papírových kuponů opravdu snížilo odbyt licencí Opencard (zpomalilo výdej karet) a my měli čas připravovat další řešení. Velkou pomocí též bylo, že tlak ze strany EMS byl mnohem méně přesvědčivý, když jsme měli vedle Opencard plně funkční systém pro všechny skupiny cestujících.

## Mobilní aplikace

Mobilní aplikace je samozřejmě další přirozený způsob, jak dopravit jízdenku desetitisícům lidí s velmi nízkými provozními a distribučními náklady.

Avšak v Praze je tomu samozřejmě jinak. Dopravní podnik, bez vědomí ROPIDu, podepsal krajně nevýhodnou smlouvu s Erikou a.s. na SMS jízdenky.[^6] V této smlouvě se praví:

> 10. DPHMP poskytuje CROWS touto smlouvou po dobu trvání této smlouvy exkluzivitu zpracování a zavazuje se, že po dobu trvání této smlouvy 

> a) neuzavře s jinou osobou za stejným účelem, za jakým je uzavřena tato smlouva k výkonu stejných či obdobnýcch činností, jaké vykonává CROWS podle této smlouvy, smlouvu nebo jakoukoli jinou písemnou či ústní dohodu

> c) nebude sám vyvíjet a ni se nebude finančně či jinak fakticky (např. poskytnutím technického či personálního zázemí) podílet na vývoji technických řešení odlišných od Elektronické jízdenky, resp. Systému, která by umožňovala cestujícím objednání elektronické jízdenky prostřednictvím mobilního telefonu nebo jiného obdobného technického zařízení, jehož prostřednictvím lze využívat mobilní telekomunikační služby,

A tedy Erika, dnes již Globdata, má monopol na veškeré dopravní odbavení skrze mobilní telefon. Dalším problémem je, že v případě výpovědi této smlouvy by DPP hradil dodavateli ušlý zisk. Čili dodavatel v každé přípradě vydělá.

S odstupem času vidím, že i přes tuto klauzuli by se vyplatilo smlouvu vypovědět a riskovat žalobu ze strany Globdata (soud by pokutu mohl snížit či zamítnout). Nemá cenu se nechat ždímat neseriózním dodavatelem. To vede jen k dlouhodobému upevňování jeho pozice a navíc trestnímu stíhání.

Společnost Globdata nám jako řešení nevýhodnosti SMS jízdenek nabízela svoji vlastní mob. aplikaci sejf. Avšak to by město jen pokračovalo v politice výhradních smluv, s kterými není schopno operovat, a tím pádem by bylo ve velmi nevýhodné pozici.

## Čipové karty (Mifare)

Dalším řešením je použít stejnou technologii jako Opencard – čipovou kartu, ale v jiné implementaci. Pokud nechceme začínat na zelené louce, jsou zde v rámci ČR 2 reálné možnosti – Plzeňská karta a In-karta. Avšak obě mají stejný problém. Jsou čistě offline řešením, a tedy velmi omezené. Největší problém je s čtečkami karet, které využívají revizoři/průvodčí. Ty totiž mají tzv. SAM modul, což je zjednodušeně řečeno slot potřebný pro každou další službu. V praxi to znamená, že např. průvodčí ČD může rozpoznat In-kartu a několik dalších služeb. Zároven ČD trvá na tom, že všichni jeho průvodčí musí být vybaveni stejně. Tato podmínka je velmi omezující a v dnešním světě zastaralá. I v případě provozu Opencard se ukazuje jako silně nepraktická.

Nakonec Operátor ICT a. s.[^6d] pod vedením primátorky Krnáčové zavedl čipovou kartu (Mifare) Lítačku. Což je jednoduchá varianta principiálně podobná Opencard, avšak sloužící pouze pro dopravu. Což je krok, který dal čas do pořádného vyřešení situace. Piráti se k Lítačce podrobně vyjádřili.[^6b]

## Řešení pro 21. stol (NFC)

Pokud nechceme zůstat u prostého papíru, nesmíme použít mobil a chápeme, že Mifare nám nic zajímavého nepřináší, tak nám zbývá NFC.

NFC[^6c] je protokol pro bezkontaktní přenos informací na krátkou vzdálenost. Velkou výhodou je, že zařízení nepotřebuje napájení. Proto je uvedená technologie tolik rozšířená.

NFC samo o sobě je dobré rozšíření papíru či mobilu (za předpokladu, že nemáme výhradní smlouvu). Avšak implementaci vlastního řešení v rámci Prahy si raději ani nechci představovat. Naštěstí je zde EMV Contactless, což je opravdu robustní a bezpečné řešení.

\newpage
# Část 2.: Vize podle Pirátů

## Výchozí předpoklady

Obecné:

- PID nemá žádné výrazné dominující současné řešení s dlouhodobou perspektivou.
- ROPID musí do konce roku 2019 přesoutěžit dopravce. To znamená, že již výrazně dříve musí být vypsány veřejné soutěže, v jejichž podmínkách budou i požadavky na dopravní odbavení. Soutěž se prenotifikuje u Evropské komise.
- V rámci PID chceme nástup všemi dveřmi, a žádné turnikety
- Praha je relativně malá konglomerace do 2 milionů obyvatel
- Praha není schopná úspěšně vést a koordinovat technologické projekty mezi vícero subjekty

Za Piráty:

- Nechceme jednoho dominantního dodavatele
- Chceme ozkoušená řešení s nízkými provozními náklady (max. 4 %)
- Chceme anonymní jízdenky a kupony
- Chceme dát zákazníkovi možnost volby
- Chceme co nejméně obtěžovat zákazníka (žádné fronty, žádné validátory)

## Základní kroky

* Důsledně se vyvarovat jakékoliv další problematické smlouvě jako ty okolo Opencard nebo SMS jízdenek.
* Papír funguje a ještě dlouho fungovat bude. Je absolutně zbytečné ho omezovat. Naopak je dobré ho propagovat.
* S dodavateli je vždy třeba vést dialog a nikoliv uzavírat partnerství či unáhlené smlouvy, které vedou k monopolům či kartelům. Tento dialog musí být diskusí dvou rovnocených partnerů a nikoliv naivním: „Co nám nabízíte? Kolik za to máme zaplatit?“, což se naneštěstí historicky dělo. O projektech rozhodovali lidé, kteří neměli ani základní znalost problematiky. Čili je třeba zapojovat opravdové, i nezavislé odborníky a vést dialog s dodavateli.
* U všech řešení je nutné předem spočítat celkové náklady (tzv. TCO), nikoliv jen pořizovací.

## NFC

NFC je obecná technologie bezkontaktních čipů, které není třeba napájet. Čipy jsou levné a velmi malé. Dají se např. dát na papír. Díky tomu je tato technologie vhodná i pro jízdenky. 

Na NFC jsou postaveny i bezkontaktní platební karty, avšak z důvodů přehlednosti je o nich samostatná kapitola.

Velkou výhodou je, že NFC je univerzální standard a je např. obsažen i v mobilech. Čili elektronická jízdenka pro NFC čip může být nahrána na jednorázový papír s NFC, chytré hodinky, mobilní telefon či náramek. Možnosti jsou opravdu široké.

Nevýhodou je, že sice mnoho telefonů NFC podporuje, avšak ne všechny jsou pro něj certifikovány, což značně znesnadňuje použití v dopravním odbavení.

Logistika je složitější. Sice jsou kupony offline, čili když už jsou v zařízení, tak je použití jednoduché. Avšak do zařízení se musí dostat. Čili je to stejný problém jako v případě Opencard. Buďto zákazníky buzerujeme u validátorů, nebo spoléháme na to, že vše úspěšně spárují doma. Jedna varianta je nepřívětivá vůči klientům, druhá je složitá s ohledem na prokazování jízdného („Já jsem si kupon zakoupil, nahrával jsem to, ale nějak tam není, pane revizore“).

Další nevýhodou je, že zde není silný partner, který by měl zájem na bezproblémovém chodu systému. Jízdenky by město muselo vyvíjet a udržovat samo. Nejspíš by též musel být veden compatibility list zařízení.

Z těchto důvodů je NFC zajímavé řešení, avšak nevhodné pro současnou Prahu, která musí přemýšlet jak věci dělat jednoduše z pohledu provozu. Rozhodně by bylo naivní si myslet, že Praha, která neumí ani vysoutěžit účetní systém, by měla být technologickým lídrem.

### EMV contactless

Bezkontaktní platební karty (EMV contactless) jsou v ČR velmi rozšířené.[^7] Kartové asociace VISA a Mastercard drží přibližně stejný podíl trhu.[^8] V rámci bankovního trhu je situace též vyvážená.[^9] Penetrace bezkontaktních terminálů mezi obchodníky je též velmi slušná.[^10] Nezanedbatelná část obyvatel je zvyklá bezkontaktní platební karty používat. Což znamená, že je to ideální prostředek k dalším platbám, jako např. v dopravě.

Bezkontaktní platební karty lze využít k placení jednorázovému (jízdenky), tak i k dlouhodobému/paušálnímu (kupony). Jednorázové placení probíhá zcela stejně jako jiné platby. Což se teď i testuje na několika vybraných pražských linkách.[^10b]

Kupony na bezkontaktní platební kartě mají různé implementace, ale obvykle se používá 2x denně aktualizovaný white-list karet. To znamená, že revizor přiloží čtečku a zjistí, že tato karta je na white listu, a tedy zákazník má zaplaceno.

Bezkontaktní platby fungují v režimu semi-offline,[^11] takže není potřeba mít strach z dostupnosti a stability internetového připojení. Banky jsou navíc schopné rozeznat platby v rámci dopravy a nastavit jim trochu jiná pravidla (limity) než ostatním. Tím se dá např. zabránit dotazování na pin, což je v prostředcích MHD nežádoucí, jelikož nechceme k zařízením přidávat klávesnici. Zároveň je těžko představitelné, že by někdo takto zneužíval ukradenou kartu. Dlouhodobě problematičtí jedinci se řeší pomocí blacklistů (např. karty trvale bez zůstatku apod.).

Po dohodě s bankami lze vydávat i vizuálně modifikované karty, které na sobě mají např. logo PID nebo fotku, a tím splnit i přísnější (obvykle zbytečná) kritéria. Nicméně tato modifikace je zcela nežádoucí, pokud by byla povinná, jelikož bychom opět vyškrtli všechny turisty. Na druhou stranu pro půlroční a roční karty by to mohlo mít smysl. Též lze vydat karty, přes které lze platit pouze v dopravě. Což je vhodné např. pro děti. Ale to je spíš ukázka flexibilnosti, protože pro děti je samozřejmě mnohem vhodnější papírová průkazka.

Banky obvykle mají při platbě provizi okolo 1 %, která bude nově ještě výrazně nižší.[^12] To je výrazně méně než kolik se vydá za režii okolo papíru, čipových mifare karet (Opencard, Lítačka) nebo SMS jízdenek. Zároveň je systém velmi stabilní a lze se domnívat, že v něm nehrozí neočekávané výdaje (např. na soudní spory jako v případě Opencard).

#### Zastropování (caping)

Díky semi-offline provozu lze implementovat jednu velmi zajímavou funkcionalitu.

V Londýně zavedli zastropování jízdného (caping) jako vstřícnost k zákazníkům a též jako prostředek sociální inkluze. Fungování si ukážeme na jednoduchém příkladu:

> Předpokládejme, že denní jízdenka stojí 100 Kč a jednorázová 30 Kč.
> Pavel si pomocí bezkontaktní platební karty zaplatí 2x jednorázovou. To ho stojí 60 Kč.
> Později toho dne však musí ještě jednou vyrazit tam a zpátky – čili dalších 60 Kč, dohromady za den 120 Kč.
> Systém však neprovádí odečty hned. Na konci dne mu odečte jen 100 Kč, protože má nárok na množstevní slevu.

Díky tomu klient nemusí znát mnohdy složité zapeklitosti tarifu ani nemusí plánovat svůj pohyb. Jednoduše bezstarostně jezdí a dostane ten nejvhodnější tarif. Díky čemuž je výrazně spokojenější s MHD, než kdyby 4x za den hledal drobné a ještě platil více.

Takový postup lze aplikovat nejen na období jednoho dne, ale i jednoho týdne, měsíce či roku.

V Londýně toto opatření považují za prostředek sociální inkluze. V Praze jsme v roce 2015 např. zlevnili celoroční kupon. Avšak to si mnoho chudších obyvatel nemůže dovolit (vydat jednorázově za každého člena rodiny skoro 3 650 Kč). Tím pádem jsme zjednodušili náklady střední a vyšší třídě. Avšak nejchudší si mnohdy kupují kupony po jednotlivých měsících anebo si berou půjčku. Taková zátěž právě nejslabších jistě není v zájmu města, které na mnoha jiných místech právě na tyto lidi vydává finanční prostředky. Na druhou stranu toto opatření má šanci přivést více platících zákazníků.

Toto řešení má 2 nevýhody. Za prvé přinese (spíše zanedbatelný) finanční výpadek. Za druhé nefunguje u papírového řešení o kterém tvrdíme, že je ho třeba zachovat. To je pravda. Nicméně není žádný problém, aby koexistoval papír bez zastropování a případně dalších slev a digitální řešení nabízející bohatší doplňkové služby. Každý si vybere, co mu vyhovuje. A jednorázová základní jízdenka a roční kupon budou stát stejně u všech forem.

#### Výhody bezkontaktních platebních karet

- **bezpečnost**: pokud máte platební kartu, tak zpřístupňuje výrazně hodnotnější věci než kupon,
- **město se nestará o obsluhu**: udržuje pouze přístroje revizorů, nemusí se starat o výměny karet či další technologicko-provozní problémy
- **nízké náklady pro město**: platí se paušálně 1 % z plateb, tedy výrazně méně, než dnes na údržbu dopravního odbavení město vydává,
- **jednoduchost pro klienta**: klient má jednu kartu. Nemusí se trápit s žádnou další. Lze mít i malou verzi karty jako přívěšek ke klíčům či nalepenou na mobilu, což je viditelně pro mnoho lidí nejjednodušší řešení,
- **možnost zastropování cen jízdného**: čili opravdu vstřícný přístup ke klientům,

Jedinou nevýhodou by se mohla stát ukvapená smlouva se špatně nastavenými podmínkami, jako se to stalo již mnohokrát v historii.

\newpage
# Dopravní odbavení v kontextu dalších služeb

## Slevové programy

Město, jako každá obdobná instituce, chce nabízené služby co nejvíce propojit. Důvodem je, že atraktivnější služby dělají reklamu těm méně atraktivním. Děje se tak většinou prostřednictvím slevových programů.

Myšlenka Opencard spočívala v tom, že každý obchodník vytvoří aplikaci pro „univerzální“ kartu a tak si bude řešit slevové programy. Myšlenka je to zcela scestná, protože běžný obchodník nemá prostředky pro vývoj aplikace a nemůže si dovolit počítat s poplatkem 50 Kč na potencionálniho zákazníka.

Dneska obdobnou funkci zastupuje PragueCard, která vám zpřístupňuje památky, veřejnou dopravu a mnoho dalších slev. Zaměřená je na turisty.

Nicméně hlavním dlouhodobým cílem města je co nejvíce prosazovat hromadnou dopravu, jelikož externality individuální motorové dopravy jsou velké. Čili je rozumné cokoliv centálního spojit právě s dopravou, a to bez určitých externalit (licenční poplatky etc.) Např. pokud by se základní slevový program navázal na platný, alespoň týdenní kupon v PID, tak bychom dosáhli vyšší propagace MHD i slev snadno dostupných pro všechy. Za ideál lze považovat, kdyby výše slevy byla navázána na hodnotu kuponu. Např. roční sleva 25 %, čtvrtletní 23 %, pololetní 21 %, čtvrtletní 19 %, měsíční 17,% týdenní 15 %. Výhodou je, že poskytovatelé slevových programů by měli stejné vybavení jako revizoři, a nejednalo by se tedy nic složitého. Vše by fungovalo jednotně.

## Jednotný e-shop

V průběhu roku 2015 rozpracoval Ondřej Profant s Ondřej Felixem myšlenku PragueMarketu. Má se jednat o jednotný e-shop služeb poskytovaných městem. Vize je taková, že se uživatel přihlásí do e-shopu, a bude moci vyřídit poplatky za psa, nakoupit celé rodině kupony pro PID, změnit tarif v Pražské energetice apod. Nápad vychází z *digital first* (v *Tezích digitální strategie* byl termín přeložen jako *Digitalní řešení má přednost*), což je v principu snaha o to, aby digitální řešení bylo primární. Tedy ideálně, aby:

- zákazník i prodávající používal stejné rozhraní;
- bylo jednodušší vyřešit běžnou záležitost elektronicky.

Tento koncept představuje zcela přirozený vývoj. Problém zůstává, že v kontextu konglomerátu, jakým je hl. m. Praha, není vůbec jednoduché něco obdobného připravit a uvést do provozu. 

\newpage
# Závěr

Praha potřebuje jednoduché a pohodlné řešení. Rozhodně je nežádoucí příliš experimentovat. Zároveň je žádoucí udržet více možností dopravního dobavení (multikanálové řešení).

Jako nejjednodušší se jeví dlouhodobě provozovat papírové kupony a k nim doplňkově nabídnout jednoduché digitální řešení. V rámci digitálních řešení dnes nelze ignorovat bezkontaktní platební karty.

V rámci implementace bezkontaktních platebních karet by bylo dobré zavést zastropování a nabídnout i karty čistě pro dopravní odbavení. Co naopak považujeme za zbytečné je vlastní povinné ko-brandování karet, které jen ubírají na jednoduchosti tohoto řešení.

V střednědobém horizontu je též zajímavým řešením NFC. Avšak rozhodně až v situaci, kdy nebude město řešit mnoho jiných závažných problémů v obdobné oblasti.

## Doporučení

Jednoznačně městu doporučejeme:

1. Nechat dožít Opencard.
2. Funkčně nerozšiřovat Lítačku.
3. Své záměry komunikovat s širokou i odbornou veřejností. 
4. Zahájit seriozní jednání s bankami o možnostech implementace a financování nasazení bezkontaktních platebních karet (EMV).
5. Nevybírat jednoho partnera, ale připravit smlouvy tak, aby spolupráce byla otevřena komukoliv s bankovní licencí.
6. Začít automatizovaně sbírat více informací (např. aby město vědělo reálné náklady na jednotlivé kanály), a na základě těchto dat analyzovat další kroky.
7. Střednědobě uvažovat o NFC obecně (náramky apod).

\newpage
# Zdroje

- Statistiky bankovních karet: http://statistiky.cardzone.cz/czech/index.html
- Pracovní skupina pro použití bezkontaktních bankovních karet ve veřejné dopravě: http://www.psbkvd.cz 
- Studie pracovní skupiny.: http://www.psbkvd.cz/_ftp/Studie_PSBKVD_verze1_0.pdf
- Statistika prodaných papírových kuponů: http://opendata.praha.eu/dataset/dpp-statistiky-prodanych-kuponu


[^1b]:  Pověření: https://github.com/pirati-cz/KlubPraha/blob/master/odmeny/2015/02/ondra/povereni.pdf
[^1]:   Wikipedia, 20. 7. 2016: https://cs.wikipedia.org/wiki/Odbavovac%C3%AD_syst%C3%A9my_v_doprav%C4%9B
[^2]:   Zřizovací listina organizace: ROPIDhttp://www.ropid.cz/o-systemu/zrizovaci-listina-organizace-ropid__s177x929.html
[^3]: Akciová společnost vlastněná městem zřízena na jaře 2014 Radou HMP pod vedením Tomáše Hudečka.
[^4]: https://github.com/pirati-cz/KlubPraha/blob/master/spisy/2015/11-sms-jizdenky-praha-smlouvy/Erika%201063%2006%2008%20%20(p%C5%AFv.CROWSNEST)%20konsollidovan%C3%A1%20verze.pdf
[^5]: Rešerše trhu s SMS jízdenkami v krajských městech 
ČR s důrazem na působení společnosti Erika a.s.: https://praha.pirati.cz/assets/pdf/reserse.pdf a srovnávací tabulka: https://praha.pirati.cz/assets/pdf/marze.pdf
[^6]: Smlouva a dodatky s Erikou a. s.: https://github.com/pirati-cz/KlubPraha/tree/master/spisy/2015/11-sms-jizdenky-praha-smlouvy
https://www.praguecard.com/index.php?lang=cz
[^6d]: Přejmenovaná společnost Operátor Opencard a.s.
[^6b]: https://praha.pirati.cz/clanek-litacka.html
[^6c]: https://en.wikipedia.org/wiki/Near_field_communication
[^7]: 8 126 085 vydaných bezkontaktních karet v roce 2015 v ČR, zdroj: http://statistiky.cardzone.cz/download/sbk_statistika_2015.pdf
[^8]: Počet vydaných karet MasterCard: 6 665 244 a VISA: 4 483 360; stejný zdroj
[^9]: Není jedna výrazně dominující banka. Je zde reálný výběr.
[^10]: 89 760 pokladen akceptujících bezkontaktní karty. Zdroj: http://statistiky.cardzone.cz/download/sbk_statistika_2015.pdf
[^10b]: V srpnu 2016 se jedná o tramvajové linky 18, 22 a autobusové lince 119. Viz www.dpp.cz/bezkontaktne Avšak jedná se o iniciativu DPP namísto ROPID a o otevřené soutěži také nemůže být řeč.
[^11]: http://www.penize.cz/internetbanking/53605-proc-se-utrata-kartou-odepise-z-uctu-az-za-nekolik-dnu
[^12]: Běžná sazba byla okolo 1 %, nově bude ještě výrazně nižší, zdroj: http://www.penize.cz/platebni-karty/306615-obchodnici-usetri-na-poplatcich-za-platby-kartou-vam-zbozi-nezlevni
