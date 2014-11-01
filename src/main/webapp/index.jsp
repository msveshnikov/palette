<%@ page import="palette.ImageHelper" %>
<%@ page import="palette.Search" %>

<html>

<head>
    <style>
        .cell {
            float: left;
            border: 20pt white solid;
            width: 200px;
            height: 200px;
        }
    </style>
</head>

<body>

<%
    String base = getServletConfig().getServletContext().getRealPath("/");
    String file = Search.getMostClose(base + "/images");
    String filebase = "/palette" + file.substring(base.length());
%>

<table id="colorgrid">
    <% for (int i = 0; i < 4; i++) { %>
    <tr>
        <% for (int j = 0; j < 3; j++) { %>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <% } %>
    </tr>
    <% } %>
</table>

<h3>
    <%=ImageHelper.getShotDate(file).toString()%>
</h3>

<br>
<img src="<%=filebase%>" width="800">

</body>
</html>
