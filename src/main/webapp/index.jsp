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
    <tr>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
    </tr>
    <tr>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
    </tr>
    <tr>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
    </tr>
    <tr>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
    </tr>
</table>

<h3>
    <%=file%>
</h3>

<%=ImageHelper.getShotDate(file).toString()%>
<br>
<img src="<%=filebase%>" width="800">

</body>
</html>
