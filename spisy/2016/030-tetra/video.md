
Zdravím,

*zobrazit web [praha.pirati.cz][]*

jmenuji se Ondřej Profant, jsem zastupitel za Pirátskou stranu v zastupitelstvu hl. m. Prahy. Též jsem jedním ze zakladatelů Cryptoparty v Čechách.
V současnosti se převážně zabývám technologiemi v rámci Prahy.

*zobrazit [wiki][tetra]*

Městká radiová síť (MRS) slouží Městské policii, Zdravotní záchranné službě, Dopravnímu podniku či Technické správě komunikací. Využívá se jak ke klasické slovní komunikaci skrz vysílačky, tak k posílání textových zpráv.

Důležité je říct, že technologicky to není obdoba GSM - využívaných mobilními operátory, ale jedná se o klasické radio, které nelze volně naladit.

Inu dost bylo slov, pojďme si ukázat praktickou ukázku. Co k tomu budeme potřebovat?

**Instalace**

*stránka eshop*

Hlavně běžný USB přijmač radia, já mám Realtek [RTL2832U][] za 290 Kč. Obvykle stojí pár stovek.
Dále linuxový počítač. Já používám Fedoru 24 Workstation.
Samozřejmě bude třeba umět pracovat s gitem a vědět něco o kompilaci softwaru.

*zobrazit [návod][]*

Okomentovat návod.

**Ukázka**

1. Zapnu `tetra-listener/radio-tetra/tetra.sh`
2. Zapnu `tetra-multiframe-sds/sds-parser.py -p /tmp/fifos`
3. Zapnu `tetra-listener/radio-tetra/tetra-inotify.sh`

**Závěr**

Video jsem natočil, protože jinak by se opět nic nestalo. Koneckonců s odborem bezpečnosti jsem o tom komunikoval již od ledna 2016, klíčová schůzka proběhla v březnu 2016, čili před půl rokem.

**Doporučení**

1. Informovat jednotlivé složky
2. Prověřit zda lze pomocí SDS manipulovat s dopravním značením, popřípadě jinak narušovat systém
3. Otevřená soutěž (žádný vendor lock-in) 
4. Soutěž o návrh


[praha.pirati.cz]: https://praha.pirati.cz
[tetra]: https://en.wikipedia.org/wiki/Terrestrial_Trunked_Radio
[RTL2832U]: https://www.google.cz/search?q=Realtek+RTL2832U&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t8jWV6ewOoKnad24uKAK#q=Realtek+RTL2832U&tbm=shop
[návod]: https://github.com/Kedrigern/example-projects/blob/master/hw/tetra.md
