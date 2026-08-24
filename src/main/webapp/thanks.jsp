<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!doctype html>
    <html>

    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="/styles/main.css" type="text/css" />
    </head>

    <body>
        <h1>Thanks for joining our email list</h1>

        <p>Here is the information that you entered:</p>

        <label>First Name:</label>
        <span>${user.firstName}</span><br>

        <label>Last Name:</label>
        <span>${user.lastName}</span><br>

        <label>Email:</label>
        <span>${user.email}</span><br>

        <label>Date of Birth:</label>
        <span>${user.dob}</span><br>

        <br>
        <h2>Survey</h2>

        <label>How did you hear about us:</label>
        <span>${selections}</span><br>

        <label>Announcements preferences:</label><br>
        <% if (request.getAttribute("likeAnnouncements") != null && !request.getAttribute("likeAnnouncements").toString().isEmpty()) { %>
            <span>&#10003; YES, I'd like that.</span><br>
        <% } %>
        <% if (request.getAttribute("emailAnnouncements") != null && !request.getAttribute("emailAnnouncements").toString().isEmpty()) { %>
            <span>&#10003; YES, please send me email announcements.</span><br>
        <% } %>
        <% if ((request.getAttribute("likeAnnouncements") == null || request.getAttribute("likeAnnouncements").toString().isEmpty())
             && (request.getAttribute("emailAnnouncements") == null || request.getAttribute("emailAnnouncements").toString().isEmpty())) { %>
            <span>(none selected)</span><br>
        <% } %>

        <label>Contact method:</label>
        <span>${contactMethod}</span><br>

        <p>To enter another email address, click on the Back
            button in your browser or the Return button shown
            below.</p>

        <form action="emailList" method="post">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
    </body>

    </html>