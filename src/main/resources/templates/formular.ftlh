[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration for summer children´s camp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<main>
    <form class="" action="/" method="post">
        <h1>Registration for summer children´s camp</h1>

        <label for="jmeno" class="radek">Jméno</label>
        [@spring.formInput path="registraceForm.jmeno" /]

        <label for="prijmeni" class="radek">Příjmení</label>
        [@spring.formInput path="registraceForm.prijmeni" /]

        <label for="datumNarozeni" class="radek">Datum narození:</label>
        <input id="datumNarozeni" name="datumNarozeni" class="form-control" type="date"
               required/>
               [#if registraceForm.datumNarozeni??]
                   Věk musí být mezi 9 a 15 lety.
               [/#if]

        <div class="radek">Pohlaví:</div>
        <div>
            <input id="Muz" type="radio" name="pohlavi" value="Muz"/>
            <label for="Muz">Muž</label>
        </div>
        <div>
            <input id="Zena" type="radio" name="pohlavi" value="Zena"/>
            <label for="Zena">Žena</label>
        </div>
        <div class="radek">Turnus:</div>
        <div>
            <input id="tour_1" type="radio" name="turnus" value="tour_1"/>
            <label for="tour_1">Turnus_1 (5.7.-11.7.)</label>
        </div>
        <div>
            <input id="tour_2" type="radio" name="turnus" value="tour_2"/>
            <label for="tour_2">Turnus_2 (12.7.-18.7.)</label>
        </div>
        <div>
            <input id="tour_3" type="radio" name="turnus" value="tour_3"/>
            <label for="tour_3">Turnus_3 (19.7.-25.7.)</label>
        </div>

        <label for="emailRodice" class="radek">E-mail:</label>
                <input id="email" name="emailRodice" class="form-control" type="email" placeholder="Emailová adresa rodiče">

        <label for="telefonRodice" class="radek">Tel. číslo:</label>
        <input id="telefonRodice" name="telefonRodice" class="form-control" type="number"
               placeholder="Tel. na rodiče">

        <div class="radek controls">
            <button type="submit">Registrace</button>
        </div>

    </form>
</main>
</body>
</html>