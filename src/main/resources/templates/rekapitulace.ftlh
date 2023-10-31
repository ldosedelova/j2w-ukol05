[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="container_rekapitulace">
    <h1>Rekapitulace</h1>

    <form class="rekapitulace" action="/">
        <div class="radek_rekapitulace">
            <label for="jmeno" class="radek">Jméno:</label>
            <input id="jmeno" name="jmeno" type="text" value="${jmeno}" readonly/>
        </div>

        <div class="radek_rekapitulace">
            <label for="prijmeni">Příjmení:</label>
            <input id="prijmeni" name="prijmeni" type="text" value="${prijmeni}" readonly/>
        </div>

        <div class="radek_rekapitulace">
            <label for="pohlavi">Pohlaví:</label>
            <input id="pohlavi" name="pohlavi" type="text" value="${pohlavi}" readonly/>
        </div>

        <div class="radek_rekapitulace">
            <label for="birthDate">Datum narození:</label>
            <input id="birthDate" name="birthDate" type="date" value="${birthDate}" readonly/>
        </div>

        <div class="radek_rekapitulace">
            <label for="turnus">Turnus:</label>
            <input id="turnus" name="turnus" type="text" value="${turnus}" readonly/>
        </div>

        <div class="radek_rekapitulace">
            <label for="email">Email:</label>
            <input id="email" name="email" type="text" value="${email}" readonly/>
        </div>

        <div class="radek_rekapitulace">
            <label for="telefon">Telefon:</label>
            <input id="telefon" name="telefon" type="text" value="${telefon}" readonly/>
        </div>
    </form>
</div>
</body>
</html>
