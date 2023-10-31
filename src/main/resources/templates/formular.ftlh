[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="container">
    <h1>Registrace na letní dětský tábor</h1>

    <form class="registrace" action="/" method="post">

            <label for="jmeno" class="radek">Jméno:</label>
            [@spring.formInput path="form.jmeno" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="prijmeni" class="radek">Příjmení:</label>
            [@spring.formInput path="form.prijmeni" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="birthDate" class="radek">Datum narození:</label>
            [@spring.formInput path="form.birthDate" fieldType="date"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="vek" class="radek"></label>
            [@spring.formInput path="form.vek" fieldType="hidden"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="pohlavi" class="radek">Pohlaví:</label>
            [@spring.formSingleSelect path="form.pohlavi" options={
            "": "",
            "Žena": "Žena",
            "Muž": "Muž"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="turnus" class="radek">Turnus:</label>
            [@spring.formSingleSelect path="form.turnus" options={
            "": "",
            "Turnus-1": "5. až 11. července",
            "Turnus-2": "12. až 18. července",
            "Turnus-3": "19. až 25. července"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="email" class="radek">E-mail:</label>
            [@spring.formInput path="form.email" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="telefon" class="radek">Telefon:</label>
            [@spring.formInput path="form.telefon" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek controls">
                <button type="submit">Objednat</button>
            </div>
        </form>
    </div>
</body>
</html>
