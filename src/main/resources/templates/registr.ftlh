[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration for summer children´s camp</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <div class="">
        <h1>Regitrace je dokončena</h1>
        <span>Tvé dítě <strong>${registraceForm.jmeno} ${registraceForm.prijmeni}</strong> je registrované.
            <div>
            [#if registraceForm.emailRodice??]
                Nezadali jste e-mail, ale registrace proběhla.
                [#else ]
                Na <strong>${registraceForm.emailRodice}</strong> byl zaslán potvrzovací e-mail.
            [/#if]
            </div>
        </span>
    </div>
</div>
</body>
</html>