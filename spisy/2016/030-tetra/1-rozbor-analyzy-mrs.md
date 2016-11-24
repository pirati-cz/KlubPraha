---
title:      Rozbor Analýzy současného stavu Městského radiového systému a koncepce dalšího rozvoje
author:
   name:    Ondřej Profant
   phone:   +420 607 580 015
   ds:      d25rp6p
   mail:    ondrej.profant@praha.eu
our:
   name:    Zastupitelský klub Pirátů
   sign:    ZK Pha 30/2016
your:
   role:    
   name:    
      -     k rukám  Ing. Robert Fialka, MBA
      -     Odbor informatiky
      -     Magistrátu Hl. m. Prahy
   address:
      -     Jungmannova 35
      -     Praha 1 - nové město
   ds:      
sendby:     ds
style:      letter
---

Vážený pane řediteli,

pročetl jsem si studii ke koncepci sítě TETRA od KPMG a mám několik poznámek:

## Standard

> Tabulka na straně 6: Pořízení terminálů provozovaných v rámci MRS je mimo kontrolu MHMP.

Toto je velmi častý argument napříč magistrátem. Avšak všem je jasné, že to tak být nemůže a nástroje (např. statut Hl. m. Prahy) jsou.

Stačí tedy vyžadovat jasně definovaný standard od ETSI[^1]. Díky tomu bude zajištěna vzájemná interoperabilita infrastruktury a radiostanic různých výrobců. Ve světě je to běžná praxe. Např. v Německu, kde spolková vláda pořídila infrastrukturu a regionální vlády nakupují terminály.

## Teds

Technologie TEDS je podle mého názoru velmi diskutabilní. K jejímu provozu je třeba široké kmitočtové pásmo. S těmi ČTÚ šetří. Navíc ani v ideálních podmínkách není zrychlení ohromující. Vzhledem k popisovaným problémům je praktičtější:

- Zavést Secondary Control Channels (SCCH), čímž se zvýší propustnost SDS
- Zvážit kombinaci s LTE pro objemná, leč nekritická data (např. polohy vozidel MHD, foto/video MP)

## Autentifikace a šifrování

Na straně 49 v tabulce dole je chyba. Autentizace je provozovana v mnoha zemích. Např. v\ Norsku je autentizace i plošné šiforvání.

Šifrování má dvě varianty (dle standardu) a je je potřeba důsledně rozlišovat. 1. End-to-End, 2. vzdušná (Air Interface Encryption), která pokrývá celou síť.

Vzhledem k HW (infrastruktura i koncová zařízení) je pro Prahu viditelně lepší zavést plošné šifrování (vzdušené). Též je to lépe udržovatelné.

## Veřejná zakázka

Ve studii se velmi silně spojuje komunikační okruh a TETRA. Nicméně pokud je mi známo, tak komunikační okruh je jiná technologie (klasická metalika/optika pro přenos dat). Samozřejmě podstatná, ale v praxi nesouvisející.

Na straně 135 se mluví o redundanci řídícího systému. Avšak ta by měla být zajištěna pomocí decentralizace řídicích prvků v rámci kruhové topologie sítě TETRA, nikoliv centralizovaně pouze zdvojena. Obdobně pak u sirén.

Na straně 95 se píše, že KonekTel je výhradním dodavatelem technologie Motorola. Ale to není pravda. Globální politika Motoroly je, že má síť distributorů a další síť dealerů, schmaticky to vypadá takto:

```
Výrobce (Motorola)
      ↓
Distributor (KonekTel, Air Radio Prague v ČR)
      ↓
Dealer (celá řada firem)
      ↓
Klient (MHMP, MP, ...)
```

Čímž Motorola zajišťuje jak tržní soutěž, tak rozumnou záruku kvality a možnost eskalace problémů.

Co se týče úspor u KonekTelu (strana 88), tak se domnívám, že je to způsobeno tím, že více komponent je v režimu záručního servisu, avšak jakmile záruka vyprší, tak náklady budou stejné.

[^1]: European Telecommunications Standards Institute, www.etsi.org

---
signature:
  - s pozdravem
  - Ondřej Profant
  - zastupitel HMP
abbr:      ondra
...
