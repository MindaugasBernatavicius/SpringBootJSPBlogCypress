<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Blog!</title>
        <link href="/css/style.css" rel="stylesheet">
    </head>
    <body>
        <div>
            <h3><c:out value="${post.title}"/></h3>
            <hr>
            <p><c:out value="${post.text}"/></p>
            <p id="author-name">Autorius: <c:out value="${post.author}"/><p>
        </div>
    </body>
</html>