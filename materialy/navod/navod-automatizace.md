
Návod: automatizace
===================

Opendata jsou řešena pomocí opensource CMS CKAN.
Tento portál má přístupné webové (klikací) rozhraní pro nahrávání souborů. (Viz předchozí kapitola)
Mnohdy je však zbytečné práci dělat ručně, když jí můžeme automatizovat. 


### 1. Získat data

Je potřeba získat samotná data. Ideálně ve formátu `csv`. Toho lze docílit např. jednoduchým dotazem na databázi či ručním vytvořením.



### 2. Nahrát data

CKAN má vlastní programovatelné rozhraní (API) pomocí [REST](https://cs.wikipedia.org/wiki/Representational_State_Transfer).
Čili není složité dopsat si vlastní můstek (plnící skript). 

Pro usnadnění jsme připravili ukázkové skripty pro upload v rozšířených skriptovacích jazycích PHP a Python. Skripty naleznete v repozitáři:

`https://github.com/singularita-corp/ckan-examples`

Skripty jsou opravdu jednoduché a slouží jako inspirace. 

Neváhejte se ozvat pokud vám bude něco nejasné. Popř. podělit se o ukázky dalších skriptů. Budeme průběžně uveřejňovat další.


Rozvoj
------

Jelikož není pevně stanoveno, co kdo bude zveřejňovat, tak čekáme na první tvrdá data. Následně vytipujeme nejpoužívanější informační systémy (předpokládáme např. SW Ginis) a pro ty přímo připravíme skripty pro automatizaci.

\newpage
