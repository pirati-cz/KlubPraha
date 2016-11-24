# Tetra

## Úvodní info

Městská radiová síť (MRS) - TETRA, je využívána MP, DPP, TSK apod, avšak není zabezpečena. Není zde autentifikace ani authorizace, natož šifrování. Více informací na en [wiki][tetra].

Stát má radiovou síť PEGAS (nesprávně označovanou Matra), kterou sdílí s MP v Ostravě a Liberci. Podle všeho by měl být přechod pro Prahu bezproblémový. Tuto službu stát poskytuje zdarma! Můžeme dostat 6 kanálů pro potřeby MP. Dnes je na kanále 112 realizováno propojení mezi sítěmi.

### Náklady

Z faktur jsme našli tyto dodavatele:

| Jméno / jména                   | IČO      | Suma (Kč)       | Poznámka                             |
|---------------------------------|----------|----------------:|--------------------------------------|
| KonekTel a.s.                   | 15051145 |    202 942 576  | v roce 2014 dar [150 000 Kč ODS][dar] |
| ASCOM (CZ) s.r.o. / COFI s.r.o. | 27187616 |    300 466 725  | |
| ASCOM Praha / DELTA Energy      | 40767698 |    173 414 258  | |
| **Suma**                        |          | **676 823 559** | |

Podrobnosti jsou v samostatných csv: [Connectel](faktury/faktury_konektel.csv), [Cofi](faktury/faktury_cofi.csv), [Ascom](faktury/ascom.csv).

Mohou existovat i další. Dále se platí mnoho dalších drobných věcí...

### Video

- [scénář videa](./video-scenar.md)

### Korespondence s řed. J. Macháčkem:

(25. 1. a 23. 3. 2016)

> Síť provozuje Praha a to váš odbor (BEZ)?

Síť Městského rádiového systému hl. m. Prahy – TETRA („MRS“) je provozována odborem bezpečnosti Magistrátu hl. m. Prahy.

> Provoz sítě je zajištěn pomocí [Veřejné zakázky][vz]

Váš odkaz na tzv. „rodný list zakázek“ specifikuje veřejnou zakázku, která řešila modernizaci MRS  v roce 2013 a zajištění následné (tedy stávající) podpory.

> Síť využívá integrovaný záchranný systém a DPP. Je nějaké další výraznější využití?

Hlavními uživateli MRS jsou Městská policie hl. m. Prahy, Dopravní podniky hl. m. Prahy, Technická správa komunikací hl. m. Prahy, Správa služeb hl. m. Prahy, Krizový štáb hl. m. Prahy a jeho pracovní skupiny.  Pro zajištění součinnosti jsou k dispozici terminály MRS i složkám IZS hl. m. Prahy.  Hlavním druhem rádiového spojení u složek IZS hl. m. Prahy je však rádiová síť standardu MATRA (dle rozhodnutí MV ČR). Výjimkou je Zdravotnická záchranná služba hl. m. Prahy, která dosud využívá MRS TETRA.

> Jaké je zabezpečení sítě? Např. záchranná služba si před časem stěžovala, že jí občas nevyužívá, protože je odposlouchávána.

Zabezpečení proti odposlechu (hlas/data), je do současné doby zajišťováno na straně uživatelů, zejména využitím nadstavbových aplikací. Je plánováno zajištění autentifikace sítě MRS (viz následující).

> Jak plánujete rozvoj sítě? (Rámcově)

Od října 2015 je připraven odborem bezpečnosti MHMP TISK: R-18999 k záměru odboru bezpečnosti na realizaci veřejné zakázky s názvem “Zvýšení spolehlivosti MRS TETRA hl. m. Prahy – 2. Etapa“. Předmětem veřejné zakázky je:

- rozšíření a zvýšení pokrytí okrajových lokalit hl. m. Prahy včetně zvýšení přenosových kapacit – výstavba 6 nových SITE,
- rozšíření infrastruktury MRS o pět dispečerských pracovišť,
- zabezpečení komunikace infrastruktury – autentifikace,
- upgrade komunikačního kruhu mikrovlnné / optické optické sítě TETRA/ZBS na kapacitu 10GB/s,
- vysoutěžení rámcové ceny na dodávku terminálů TETRA.

Uvedený materiál nebyl dosud Radou hl. m. Prahy projednán.

> Jak informujete uživatele o bezpečnostních zasadách? Máte nějaká pravidla? Doporučení? Školení?

Jedenkrát za měsíc probíhá pravidelná porada všech uživatelů MRS včetně zástupce servisní organizace. Tuto poradu řídí odbor BEZ MHM. Na této poradě jsou probírána všechna technická opatření, případně vzniklé problémy provozu a požadavky na servisní organizaci. Zápis z těchto jednání je předkládán řediteli odboru BEZ MHMP.

> Kolik je v síti vysílačů (BTS)?

V současné době je v síti MRS celkem 21 SITE.

> Mohl bych vidět tisk R-18999?

Tisk R-18999 byl pozastaven,  je ve fázi dalšího dopracování a doplnění odborného stanoviska.

> Popř. jaké formy je veřejná zakázka? Nadlimitní? JŘBÚ?

Jedná se o Záměr na zadání nadlimitní veřejné zakázky v JŘBU.

---

S řed. Macháčkem, právníkem a správcem MRS jsem se sešel 20. 4. 2016 a vysvětlil jsem jim, co mi vadí.

---

Dále jsem si psal s MP. Ti mi řekli, že vše řeší odbor BEZ MHMP.


### Další

- BTS karty a licence od Motoroly, vysilacky softwarem - staci klic

## Problémy

- Connectel - provozovatel site
- zakazka na 300 mil.
- BTS karty a licence od Motoroly, vysilacky softwarem - staci klic
- Doporucuji klic na skupinu nebo vysilacku - individualni klic rozsifruje menici se sitovy klic

## Další kroky

- prezentovat na výboru pro bezpečnost

[dar]: http://www.politickefinance.cz/donor/view/514174
[tetra]: https://en.wikipedia.org/wiki/Terrestrial_Trunked_Radio
[RTL2832U]: https://www.google.cz/search?q=Realtek+RTL2832U&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t8jWV6ewOoKnad24uKAK#q=Realtek+RTL2832U&tbm=shop
[connectel]: http://www.connectel-cz.com/
[vz]: http://www.praha.eu/jnp/cz/o_meste/finance/rodne_listy_zakazek/index.html?zakazkaId=141453
