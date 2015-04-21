---
prijemce: 
  dovetek:  JUDr. Martina Děvěrová
  nazev:    Hlavní město Praha
  ulice:    Mariánské náměstí 2/2
  PSC:      11001
  mesto:    Praha 1
  DS:       48ia97h
styl:       pirati-klub
vase:
  znacka:   
  den:      
nase:
  znacka:   ZK Pha 26/2015
  misto:    Praha

vec:        Elektronický oběh dokumentů na pilotních agendách Magistrátu hl. m. Prahy
vyrizuje:   
  jmeno:    Jakub Michálek
  telefon:  +420 775 978 550
  ds:       4memzkm
  mail:     jakub.michalek@praha.eu
---

Vážená paní ředitelko,

předběžně máme domluveno jednání ohledně žádosti kontrolního výboru ke zveřejňování informací podle vyhlášky č. 442/2006 Sb. na den 23. 4. 2015 od 13.00 hod. 

V této věci si dovoluji ještě podrobněji doplnit podklady ohledně oběhu dokumentů na Magistrátu hl. m. Prahy, konkrétně při zveřejňování informací, které si občané vyžádali (povinnost zveřejnit vyžádanou informaci dle § 5 odst. 3 zákona č. 106/1999 Sb., o svobodném přístupu k informacím, dále jen „zákon“). Magistrát hl. m. Prahy popisuje postup zveřejňování informací následovně: 

> Jednotlivé odbory Magistrátu zasílají vyhotovené odpovědi, resp. poskytnuté informace, referentce organizačních vztahů a informací odboru kanceláře ředitele magistrátu v různých formátech. Ta si je vytiskne, označí veškeré údaje, které se mají anonymizovat, dokument naskenuje a zašle odboru komunikace a marketingu magistrátu ve formátu PDF. Zde se dokument vyexportuje do obrazového formátu. Následně se dokument anonymizuje v grafickém editoru podle označení referentky a takto anonymizovaný se převede opět do formátu PDF. V této podobě se dokument umístí do příslušné sekce internetových stránek hlavního města Prahy.

Tento postup je podle mého názoru zbytečně komplikovaný. Vedle toho ani není naplněn požadavek zákona na formát zveřejňovaného souboru (ke zdůvodnění viz mé předchozí vyjádření ze dne 2. 4. 2015) . Pokud má být naplněn zákon a informace má být poskytnuta ve formátu vhodném pro opakované užití a pro neomezené použití uživatelem podle § 4 odst. 2 zákona (např. DOCX, XLSX, ODT, ODS apod.), je třeba, aby byl soubor v tomto formátu po celou dobu procesu. 

Ve svém předchozím vyjádření ze dne 2. 4. 2015 jsem navrhl následující proces: 

* Odbor zašle poskytnutou informaci ve formátu DOCX příslušné referentce. Odbor zároveň uvede, zda má žadatel nějak privilegované právo na informace (např. je občan hl. m. Prahy nebo zastupitel hl. m. Prahy). 
* Referentka informaci projde a nahradí jména fyzických osob jejich iniciály a další údaje, u kterých je dán důvod anonymizace podle zákona č. 106/1999 Sb., nahradí písmeny XXX (na tuto činnost lze napsat makro). Referentka zašle odboru verzi pro žadatele a na web umístí verzi pro veřejnost (verze pro veřejnost může obsahovat méně informací, pokud má žadatel širší přístup k informacím).

Tento proces má výhodu, že neobsahuje skenování ani tisk a může probíhat zcela automaticky. Tento proces bude tedy samozřejmě rychlejší a levnější než stávající proces. Tento proces bude také možné v DMS automatizovat (včetně zveřejnění) pomocí nastavení správného workflow v informačním systému DMS Alfresco, který již hl. m. Praha provozuje. Za tuto implementaci není nutné platit žádné poplatky, jen je třeba zaškolit příslušné úředníky a nastavit pracovní postup (workflow).

----

Od té doby jsem komunikoval s panem Šimkem ze společnosti Cleverbee solutions s. r. o., IČ 26424525. Tato společnost má podle smlouvy č. INO/40/03/003099/2014, o servisní podpoře provozu DMS Alfresco, uzavřené na základě usnesení Rady hl. m. Prahy č. 2794 ze dne 21.10.2014, poskytovat Magistrátu hl. m. Prahy podporu systému Document Management System Alfresco. 

Při konzultaci s panem Šimkem jsem byl ujištěn, že v rámci již uzavřené smlouvy bude možné řešit také nastavení pracovního postupu (workflow) při zveřejňování vyžádaných informací podle § 5 odst. 3 zákona č. 106/1999 Sb., o svobodném přístupu k informacím, ve znění pozdějších předpisů. V rámci tohoto workflow by patrně mohl systém fungovat takto:

1. Odpovědný pracovník věcně příslušného odboru vloží vyžádanou informaci ve formátu DOCX anebo XLSX (strojově čitelné, upravitelné formáty umožňující opakované použití) do systému DMS Alfresco a předá složku s vyžádanými informacemi k anonymizaci kliknutím tlačítka,
2. Systém předá dokument odboru ředitelky, referentce pro anonymizaci zveřejňovaných dokumentů, které se tento dokument objeví v přijatých dokumentech. 
3. Referentka si dokument stáhne, anonymizuje v něm osobní údaje, a nahraje ho zpět do úložiště DMS Alfresco. (I samotnou anonymizaci může systém částečně automatizovat pomocí počítačových nástrojů, které Praha již zakoupila, to teď ovšem není podstatné.) Referentka předá složku s anonymizovanými vyžádanými informacemi ke zveřejnění kliknutím tlačítka. 
4. Systém anonymizovanou informaci automaticky zveřejní tak, aby byla dostupná v prezentační vrstvě na internetové prezentaci s možností plného vyhledávání v textu dokumentů, třídění podle odborů, data zveřejnění anebo jiných parametrů. Informace bude zveřejněna ve formátech vhodných k opakovanému použití dokumentů (DOCX, XLSX) a může být rovněž automaticky vytvořena a zveřejněna verze ve formátu PDF.

Navržené workflow by bylo dotaženo s panem Šimkem na setkání s agilní metodou, celkem by měl být použitelný workflow připraven během půldenního setkání. 

Výhody navrženého postupu jsou následující:

* Magistrát hl. m. Prahy bude zcela respektovat zákonnou úpravu zveřejňování informací včetně směrnice ES pro opakované užití informací veřejného sektoru.
* Dokument bude během celého procesu v elektronické podobě, což znamená vyšši kvalita zveřejněného dokumentu pro občany (možnost vyhledávání, dalšího použití i lepší čitelnost), menší nároky na místo na disku pro úřad i uživatele a větší rychlost stahování, jednodušší anonymizaci bez nutnosti dokument tisknout, úspory na tisk a skenování.
* Celý proces bude prakticky automatizován, čímž se sníží personální náklady, zrychlí se proces, zákonná 15denní lhůtu bude mnohem snadnější dodržet, bude snazší kontrolovat fázi vyřízení požadavku.

Předpokládané náklady jsou jeden půldenní workshop agilní metodou se zástupci komise pro ICT, panem Šimkem a jeho kolegy od dodavatele, referentkou a vybranou osobou z věcně příslušného odboru (je podle mého názoru vybrat dle doporučení referentky odbor, který zveřejňuje nejvíce vyžádaných informací). Dále je třeba zaškolit podle dohodnutého postupu jednoho referenta na každém věcně příslušném odboru, aby uměl do systému vkládat dokumenty. 

Vzhledem k tomu, že s dodavatelem je již podepsána smlouva od předchozího vedení a ten je připraven elektronický oběh dokumentů v agendě zveřejňování vyžádaných informací realizovat, zdvořile žádám o svolení tento záměr realizovat v koordinaci s ředitelem odboru informatiky Ing. Mánkem. Tento záměr bude také předem projednán s komisí pro ICT Rady hl. m. Prahy.

----

Vedle tohoto procesu je podle mého názoru vhodné vytipovat další procesy, kde by elektronizace oběhu dokumentů ušetřila náklady a zvýšila kvalitu veřejné služby. 

Jednou z takových možností je použít systém DMS Alfresco na **podepisování a schvalování došlých faktur** uvnitř úřadu. Jde o to, aby byl uvnitř úřadu elektronizován oběh faktur a aby byly rychle dohledatelné odpovědnosti podle zákona č. 320/2001 Sb., o finanční kontrole ve veřejné správě. Podle mých informací tato funkcionalita v současném systému GINIS není a musela by se dokoupit licence. Vzhledem k tomu, že systém DMS Alfresco tento proces rovněž zvládá a lze ho integrovat s GINISem, považuji za vhodné podepisování a schvalování faktur rovněž elektronizovat v rámci DMS Alfresco. 

Kontrolní výbor při své činnosti narazil na kontrolní závěry odboru kontrolních činností Magistrátu hl. m. Prahy, podle něhož jsou v rámci projektů zjišťovány faktury po splatnosti (viz bod C.1 zprávy o výsledcích kontrolních činností zabezpečovaných odborem kontrolních činností MHMP za období od 4. 3. 2015 do 10. 3. 2015, příloha č. 1 k usnesení Rady HMP č. 712 ze dne 31. 3. 2015). Elektronizace schvalovacího postupu by znamenala zrychlení tohoto procesu, hlídání blížící se splatnosti a snížení rizika faktur po lhůtě splatnosti. Magistrát hl. m. Prahy zakoupil potřebný software na elektronické podepisování dokumentů Adobe LifeCycle již v minulém roce, ale tento není plně využit. Adobe LifeCycle je možné propojit s DMS Alfresco jako modul, aby mohly být dokumenty v rámci DMS Alfresco a jeho workflows podepisovány. GINIS podle informací dodavatele Alfresca neumožňuje, aby byly přímo podepisovány obíhající dokumenty. Do systému GINIS je však dle informací dodavatele možné automaticky zapisovat výstupy z DMS Alfresca, což by znamenalo, že se postupy nebudou duplikovat.
 
Elektronizace faktur by mohla mít například následující workflow:

1. Faktura přijde v elektronické nebo papírové podobě do podatelny nebo na příslušný odbor. Pokud přijde do podatelny, bude postoupena příslušnému odboru. Faktura bude na příslušném odboru naskenována a zavedena do systému v rámci příslušného odboru.
2. Fakturu předá sekretariát příslušného odboru odpovědnému pracovníku projektu v DMS Alfresco. Ten posoudí v DMS Alfresco oprávněnost fakturace a zadá požadavek vedoucímu odboru, který je příkazcem operace.
3. Příkazce operace elektronicky podepíše fakturu a postoupí ji v DMS Alfresco rozpočtáři.
4. Rozpočtář elektronicky podepíše fakturu a postoupí ji v DMS Alfresco hlavnímu účetnímu.
5. Hlavní účetní elektronicky podepíše fakturu a postoupí ji v DMS Alfresco k proplacení.
6. Faktura bude proplacena odpovědným pracovníkem nebo automatem podle zadaných údajů a tento údaj bude zaznamenán do GINISu.
7. Faktura bude předána k elektronické archivaci. 

Popsanou elektronizaci oběhu faktur doporučuji zavést až potom, co se osvědčí proces zveřejňování dokumentů, který považuji za administrativně jednodušší. Již nyní by ovšem bylo vhodné ustavit pracovní skupinu se zástupci komise Rady pro ICT, odboru účetnictví, odboru rozpočtu, odboru informatiky a dodavatele DMS Alfresco, která by se přípravou projektu elektronizace faktur zabývala. V rámci výkonu funkce jsem navštívil odbor účetnictví, který má na elektronizaci oběhu faktur zájem. Žádám vás v této věci o stanovisko, zda je navržený projekt průchozí.

Těším se, že budeme moci výše uvedené probrat na dohodnutém jednání.

S pozdravem

---
podpis: 
  - Mgr. Bc. Jakub Michálek
  - předseda klubu Pirátů
  - člen kontrolního výboru
  - zastupitelstvo hl. m. Prahy
...
