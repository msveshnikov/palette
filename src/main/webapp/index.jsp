<%@ page import="palette.Search" %>
<%@ page import="palette.ImageHelper" %>

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
    String file=Search.getMostClose(getServletConfig().getServletContext().getRealPath("/") + "/images");
%>

<table id="colorgrid">
    <tr>
        <td class="cell" style="background-color: <%=ImageHelper.getRandomPixel(file)%>;"></td>
        <td class="cell" style="background-color: #7CFC00;"></td>
        <td class="cell" style="background-color: #40E0D0;"></td>
    </tr>
    <tr>
        <td class="cell" style="background-color: #9400D3;"></td>
        <td class="cell" style="background-color: #BE1E4E;"></td>
        <td class="cell" style="background-color: #E1D859;"></td>
    </tr>
    <tr>
        <td class="cell" style="background-color: #FA8CE3;"></td>
        <td class="cell" style="background-color: #EF8869;"></td>
        <td class="cell" style="background-color: #184DC1;"></td>
    </tr>
    <tr>
        <td class="cell" style="background-color: #FA3E32;"></td>
        <td class="cell" style="background-color: #932667;"></td>
        <td class="cell" style="background-color: #675784;"></td>
    </tr>
</table>

</body>
</html>
