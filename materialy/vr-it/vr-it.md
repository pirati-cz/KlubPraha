---
title: Veřejné zakázky\linebreak
   v informatice
author: Ondřej Profant
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

Kvalitně připravit a dobře provést veřejnou zakázku není jednoduché. Je třeba orientovat se v předmětu zakázky, mít zkušenosti s legislativními úskalími. Velkou výzvou je též mít přehled o trhu. Můžete mít skvělou představu, kterou byste v rámci interního týmu byli schopni realizovat, ale to neznamená, že firma z venku takovou věc bude chtít dělat. A ani tím problémy nekončí. Po výběru může nastat kolo odvolávání, které efektivně zakázku zbrzdí.

Nejjednodušším řešením jak se tomuto všemu vyhnout je mít dobrý interní tým. Ten musí být rozumně sebevědomí (umět říci: "toto není kvalitní"), musí mít jasnou vizi o tom jak má celá infrastruktura vypadat (žádné věty typu: "nám je to jedno, nějak to udělejte") a musí znát své síly. Až když interní síly dojdou (velké projekty, složitější technologie), tak je čas na soutěžení.

Tento text se pokusí shrnout poznatky, jak správně udělat veřejnou zakázku v IT, tak aby to nebyla fraška.

## Disclaimer

Autor není právník, avšak opírá se v co největší možné míře o zkušenosti z insitucí, které dané zakázky provedly úspěšně. 



# Webové stránky

Potřeba webové stránky či komplexnějšího portálu je velmi častá. Zároveň je opravdu velmi široký trh s nepřeberným množstvím technologii, které mohou náš problém vyřešit. Čili zde je dobré začít. 

## Slovníček pojmů

Nejdříve si stanovíme základní slovníček pojmů, abychom se v nich neztratili.

| Výraz         | Překlad          | Význam                                               |
|---------------|------------------|------------------------------------------------------|
| design        | vzhled           | obrazová předloha / nákres řešení / grafické detaily |
| wireframe     | drátěný model    | model rozkreslující rozložení prvků; neudává přesnou podobu, ale jen schéma |
| kódování      | -                | převedení návrhu do podoby HTML, CSS a JS, tím vzniká soubor spustitelný v prohlížeči, neobsahuje však pokročilou logiku (např. nejde editovat článek) |
| programování  | -                | psaní logiky webu, zde vzniká samotný informační systém napojený na databázi |
| maintenance   | -                | údržba software, připrava nových verzí např. z důvodů bezpečnostních chyb třetích stran nebo sladění s novou verzí operačního systému |
| integrace     | -                | integrace s dalšími informačními systémy |
| microsite     | -                | malá jednoúčelová stránka, např. představující jeden produkt / projekt |
| analytika     | -                | analytika návštěvnosti |
| CMS - content managment systém | systém pro správu obsahu | informační systém, který spravuje obsah na webu, tedy to co si představíme pod webovým portálem. Jako CMS se většinou označuje již hotový systém, který přizpůsobujeme našim potřebám. |

## Fáze 1: Promyšlení zadání

Zakázka se bude velmi lišit podle rozsahu a specializace projektu. Také budou silnou roli hrát vnitřní zdroje. Je dobré si důsledně promyslet, co vlastně chceme. Návodné otázky:

**Návštěvník**

- Kolik návštěvníků očekáváte?
- Jaký je typický návštěvník? Člověk hledající konkrétní informaci? Vašnivý čtenář článků? Uživatel nějakého konkrétního formuláře?
- Odkud typický návšteník přichází? Sociální sítě? Vyhledávač? Přes konkrétní url?
- Jaké zařízení pro přístup využívá?

**Správa obsahu**

- Kolik editorů / přispěvatelů očekáváte? (např. každý odbor bude sám přispívat do své sekce)
- Kolik práce zabere údržba obsahu?
- Potřebuji vícejazyčný web? Nestačí např. jeden článek shrnující vše podstatné?
- Chci odněkud automatizovaně přebírat informace? Odkud? V jakém stavu mám teď dané informace?
- Jaký je typický obsah? Článek s fotkou? Fotogalerie? Článek obsahující specializovaný kód?
- Budu převádět starý obsah?
- Budu chtít více samostaných portálů (subdomén)? Na stejné technologii?


**Životní cyklus projektu**

- Jak dlouho by řešení mělo fungovat?
- Kolik by měla stát jeho měsíční údržba?
- Budu potřebovat další rozvoj? (Za rok přibude zdroj informací, budu ho pak chtít integrovat?)
- Jak budu řešení zálohovat? Centrálně se zbylými DB? 

**Technické otázky**

- Budu udržovat web separovaný anebo ho integruji s datovým skladem?
- Chci řešení integrovat s nějakým IT ekosystémem?
- Chci řešení provozovat sám?
- Chcete řešení do budoucna významně rozvíjet?

**Další**

- Pokud uvažujete o microsite, nestačila by vám normální stránka na vašem webu?
- Má vaše instituce grafický manuál, kterému by měl design odpovídat?

Tyto otázky vám pomohou zoorientovat se v tom, co poptáváte. Většinou chcete jedno z:

1) Microsite
2) Jednoduchý web s články a několika statickými stránkami
3) Složitější web s více kategoriemi
4) Komplexní portál s množstvím datových zdrojů
5) Specializovaný portál, např. eshop, otevřená data, intranet, mapový

První 2 případy vyřeší jednoduchá objednávka v řádu max. desetitisíců korun. Stačí mít jednoho dodavatele, popsat mu co chcete a on vám to dodá.

Třetí možnost může být stejná jako první. Avšak mnohdy se spíš podobá možnosti 4, což je případ, který budeme rozebírat ve většině této kapitoly.

V možnosti 5 hraje významnou roli konkrétní zaměření. Např. eshopů je celá řada, ale např. opendatové portály jsou víceméně 2. 

Dále se zaměříme na řešení 3 a 4. Samozřejmě postřehy jsou obvykle univerzálně použitelné.

## Fáze 2: Příprava zakázky

Musíme si uvědomit, že zde máme několik de facto samostaných úloh (dle rozsahu):

1. Analýza potřeb
2. Příprava designu
3. Vytvoření / přizpůsobení informačního systému (CMS)
4. Provoz

Mnohdy se vyplatí každou z těchto fází řešit odděleně. Někdy lze některé spojit.

### Analýza potřeb

Toto je velmi složitá část. Málokterá instituce má kvalitně zpracované své potřeby, procesy apod. Navíc uživatelé obvykle mají představu o tom co se jim nelíbí, ale už ne o tom, co by chtěli (jaké jsou možnosti).

Rozhodně je třeba:
- mít sitemap současného řešení
- mít shromažděnou poptávku po funkcionalitách jednotlivých stakeholderů
- analýzu návštěvníků
-

### Příprava designu

## Fáze 3: Převzetí a údržba

Tvorba webu:

Aktéři / stakeholders:

- běžní tvůrci obsahu webu (zainteresovaná pracoviště)
- hlavní tvůrce mediálního / PR obrazů (odbor komunikace apod)
- správce IT
- Firma zabývající se zvyšováním návštěvnosti, přístupnosti, SEO apod. Tato firma není doavatelem technického ani designového řešení. Z případné soutěže musí být vyloučena. 
- Firma zabyvající se technickou realizací (programováním)
- Firma zabývající se designem

Postup

Obecně: S jakýmkoliv dodavatelem je třeba mít smlouvu včetně dodatečných úprav na základě zpětné vazby.

1. věcné požadavky posbírány v tabulce - provede úřad
2. zákoné požadavky na web
3. spracování studie požadavků na web v živé komunikaci s úřadem (exekutiva, radní), kroky:
 	a) analýza klíčových slov
 	b) audit referenčních webů
 	c) technických SEO požadavků
 	d) přiřazení váhy požadavkům z bodu 1)
 	e) zpracování analýzy
4. představit analýzu širší samosprávě (komise, výbor)
5. IT zpracuje technické požadavky
6. Vysoutěžení / poptání designu
7. Vysoutěžení / poptání technické realizace
8. Sladění obou části řešení, vypořádání požadavků

# Software obecně

Software programovaný na zakázku (typicky agendové systémy) se příliš neliší od webu. Výhodou je, že nemusí tak lpět na designu, nevýhodou je, že vás to svádí k podceněnní UX. A to je velmi nežádoucí. Dalším problémem jsou integrace na další informační systémy.

# Hardware

Nabízí se tři nejčastější varianty způsobu nákupu HW v informatice:

| Způsob       |  Popis                                                                          | Příklad            |
|--------------|---------------------------------------------------------------------------------|--------------------|
| Outsourcovat | Služby jsou ve veřejného cloudu. Nemám žádný vlastní HW. Platíme si jen službu. | Amazon, Azure, ... |
| Horizontalní | Mám soukromý cloud. Aplikace jsou nezavislé na použitém HW.                     |                    |
| Vertikální   | Aplikace jsou úzce spojeny s HW. Nakupuji vždy balík HW-OS-SW-podpora.          | Oracle             |

Nejjednodušší je samozřejmě vše outsourcovat do cloudu. Veškerá starost (alespoň teoreticky) je následně pravidelná faktura. Nicméně pro větší infrastrukturu jsou zde uskalí. Největším problémem je ochrana dat. Ale najdou se i jiné problémy. Např. cena je příznivá v ukázkových příkladech, ale realita vždy není stejná jako reklamní leták.

Opačným extrémem je vertikální infrastruktura. Tam se spojují nevýhody horizontalní infrastruktury a cloudu. Opět vše vypadá pěkně na letáku, kde nám ukáží jeden hezký stroj, který vše vyřeší. Ale samozřejmě škálování a využití jednoho stroje je neefektivní, obměna je možná jen předem daným způsobem, je malý výběr dodavatelů a každá další komponenta infrastruktury vnáší chaos do celkové infrastruktury neb je jiná. Toto řešení je vhodné pro malé provozy (jsme schopni pomocí této jedné komponenty řešit vše) anebo opravdu velké provozy, kde pomocí vertikálních komponent uděláme horizontální infrastrukturu.

Nejrozumnějším řešením je horizontalní infastruktura. Tedy škaluje přirozeně (dokupuji) a SW nemám spoutaný s HW. To znamená, že např. mohu velmi snadno migrovat jakýkoliv IS, protože je to virtuálka/y. HW pod tím může být relativně běžný a mohu držet náhradní komponenty, protože je to drobnost v porovnání s celkovou cenou infrastruktury.


