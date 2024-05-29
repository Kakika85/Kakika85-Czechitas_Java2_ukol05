[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="/style.css"/>
</head>



<body>
<h2>Chyba věku</h2>
<form modelAttribute="registraceForm" method="post">
    <errors path="datumNarozeni" cssClass="error"/>
    <br/>
    <!-- other form fields -->
    <input type="submit" value="Zpět"/>
</form>
</body>
</html>