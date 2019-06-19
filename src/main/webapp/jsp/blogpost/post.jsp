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
            <p id="author-name">Author: <c:out value="${post.author}"/><p>
            <hr>
            <c:if test="${post.comments.size() > 0}">
                <h4>Comments:</h4>
                <c:forEach items="${post.comments}" var="comment">
                    <hr>
                    <p><span id="author-name"><c:out value="${comment.author}"/>: </span><span><c:out value="${comment.text}"/></span></p>
                    <%-- DELETE COMMENT BUTTON, only visible for admin user --%>
                    <c:if test="${pageContext.request.isUserInRole('ADMIN')}">
                        <form method="POST" action="<c:out value="/post/${post.id}/comment/${comment.id}/delete"/>">
                            <input type="submit" name="delete-comment" value="DELETE">
                        </form>
                        <hr>
                    </c:if>
                </c:forEach>
            </c:if>
            <br>
            <hr>
            <h4>Leave a comment:</h4>
            <form action="<c:out value="/post/${post.id}"/>/comment" id="new-comment-form" method="post">
                <span class="form-span">Name:</span><input type="text" name="author"></br><br>
                <textarea rows="4" cols="100" name="text" form="new-comment-form">Enter comment here...</textarea>
                <input type="submit">
            </form>
        </div>
    </body>
</html>