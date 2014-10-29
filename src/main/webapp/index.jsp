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
    final String file = Search.getMostClose(getServletConfig().getServletContext().getRealPath("/") + "/images");
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

</body>
</html>
