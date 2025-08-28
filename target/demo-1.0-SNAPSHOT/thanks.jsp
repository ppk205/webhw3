<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<img src="resources/murach_logo.jpg" alt="Murach Logo" id="logo" width="100">
<h1>Thanks for joining our survey</h1>
<p>Here is the information that you entered:</p>

<strong>Email:</strong>
<span>${user.email}</span><br>
<strong>First Name:</strong>
<span>${user.firstName}</span><br>
<strong>Last Name:</strong>
<span>${user.lastName}</span><br>
<strong>Date of Birth:</strong>
<span>${user.birthDate}</span><br>
<strong>How did you hear about us:</strong>
<span>${user.hearAboutUs}</span><br>
<strong>Contact method:</strong>
<span>${user.contactMethod}</span><br>
<strong>Announcements:</strong>
<span>${user.wantsAnnouncements}</span>


<p>To enter another survey, click on the Back button in your browser or the Return button shown below.</p>
<form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>
</body>
</html>