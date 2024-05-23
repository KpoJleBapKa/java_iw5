<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Деталі кафедри</title>
</head>
<body>
<h1>Деталі кафедри</h1>
<p>Назва: ${department.name}</p>
<p>Title: ${department.title}</p>
<p>Телефон: ${department.phone}</p>
<p>Аудиторія: ${department.classroom}</p>

<h2>Додати предмети до кафедри</h2>
<form action="/departments/${department.id}/addSubjects" method="post">
    <select name="subjectIds" multiple>
        <#list allSubjects as subject>
            <option value="${subject.id}">${subject.name}</option>
        </#list>
    </select>
    <button type="submit">Додати вибрані предмети</button>
</form>

<h2>Предмети кафедри</h2>
<ul>
    <#list department.subjects as subject>
        <li>${subject.name}</li>
    </#list>
</ul>

<a href="/departments"><button type="button">Повернутись до списку кафедр</button></a>
</body>
</html>
