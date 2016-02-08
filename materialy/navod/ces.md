## Export z Centrální evidence smluv

Tento návod slouží k exportu záznamů z Centrální evidence smluv. Program Centrální evidence smluv používá Magistrát hlavního města Prahy a dále jeho jednotlivé městské části. Slouží k tomu, aby mělo město na jednom místě svojí evidenci smluv.

### 1. Spuštění Centrální evidence smluv.

Po spuštění vyždauje Centrální evidence smluv přihlášení stejnými přihlašovacími údaji, jako je tomu do operačního systému. Zadejte je tak, jak vás systém vyzve. Jakmile jste přihlášeni, zobrazí se úvodní menu s několika volbami. Vyberte možnost "Prohlížení".

### 2. Zobrazení všech smluv z Centrální evidence smluv.

Nyní by se vám mělo zobrazit okno programu Centrální evidence smluv, které však neobsahuje (s výjimkou programových lišt a nabídek) žádné záznamy. **Klikněte pravým tlačítkem do pole "Název dotazu"**, které se nachází v horní části okna a vyberte volbu "03 Datum nabytí účinnosti". 

Pod položkou "Název dotazu" by se Vám nyní mělo zobrazit časové rozmezí pro hledané smlouvy. Vybrat si můžete tak standardně rok (například od 1. 1. 2015 do 31. 12. 2015), ale můžete provádět i výběry po měsících, (tj. od 1. 1. 2015 do 31. 1. 2015) tak, abyste měli menší vyexportované soubory. 

Poté stikněte enter a po chvíli by se měl v hlavní části okna **zobrazit seznam faktur**. 

### 3. Vytvoření souboru s vyexportovanými daty.

V horní části okna vyberte volbu Tisky → Vlastní sestavy/exporty.

Následně by se Vám mělo zobrazit okno s názvem "Tiskové výstupy", které zobrazí několik voleb jak lze suobury exportovat. Vás bude zajímat ta předposlední (**EXCEL, TXT - xxxxx Vlastní sestavy/exporty údajů**). Tuto volbu vyberte zaškrtnutím pole vlevo od ní a stikněte OK.

V dalším kroku se zobrazí okno "CES - EXPORT a TISKY údajů", které zobrazí ty sloupce tabulky, které budou exportovány. V okně uvidíte dva výběry: "Dostupné položky" (tedy sloupce, které nejsou uplatněny) a "Vybrané položky do exportu" (tedy sloupce, které uplatněny jsou).

Stiskněte následně volbu "Excel" vlevo dole v okně "CES - EXPORT a TISKY údajů" Následně by měl začít proces generování seznamu (zobrazí se malé okno s názvem "Pracuji...") Tento proces trvá tím déle, čím více položek máte v tabulce, kterou chcete exportovat.  Občas může při generování dojít k chybám, které musíte odsouhlasit (tj. jejich přítomnost), chcete-li pokračovat dál. Tyto chyby generování výsledného souboru závažněji neovlivní.

V dalším okně programu Microsoft Excel (nebo jiného, který Váš počítač používá), by se měla zobrazit tabulka s vyexportovanými daty. Tabulku uložte jako soubor ve formátu .xlsx, poté ji znovu otevřete v programu LibreOffice a uložte ji znovu, tentokrát v souboru .csv tak, aby bylo jako kódování češtiny použito UTF-8 a oddělovač znak středníku (;)

Důvodem, proč je v posledních krocích nezbytné použít Libre Office je problematika kódování češtiny. Typicky české znaky (**ěščřžýáí** a další) musí být zakódovány (uloženy) ve formátu UTF-8, který je možné efektivněji a praktičtěji zpracovávat. Bohužel Microsoft **Excel** toto kódování nepoužívá a ani neumožňuje exportovat soubory do tohoto formátu.

