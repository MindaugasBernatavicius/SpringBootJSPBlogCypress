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
            <c:forEach items="${posts}" var="post">
                <h3><c:out value="${post.title}"/></h3>
                <hr>
                <p><c:out value="${post.text}"/></p>
                <p id="author-name">Autorius: <c:out value="${post.author}"/><p>
                <%-- <span>Komentarai (<c:out value="${posts.comments.size()}"/>)</span> --%>
                <a id="read-more-link" href=<c:out value="/post/${post.id}"/>>Komentuoti...<a>
            </c:forEach>
        </div>
        <div>
            <c:if test="${pageContext.request.isUserInRole('ADMIN')}">
                <hr>
                <h3>Add new blogpost!</h3>
                <form action="/post" id="new-blogpost-form" method="post">
                    <span class="form-span">Name:</span><input type="text" name="author"></br>
                    <span class="form-span">Title:</span><input type="text" name="title"></br></br>
                    <textarea rows="4" cols="100" name="text" form="new-blogpost-form">Enter text here...</textarea>
                    <input type="submit">
                </form>
            </c:if>
        </div>
    </body>
</html>