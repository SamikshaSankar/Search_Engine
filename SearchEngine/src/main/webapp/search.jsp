<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Accio.SearchResult"%>

<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>
    <h1>SSS</h1>
    <form action = "Search">
        <input type = "text" style="font-size: 1.1rem;" placeholder = "search topic here..." name = "keyword"></input>
        <button type = "submit" class = "search">Search</button>
    </form>
    <form action = "History">
        <button type = "submit" class = "history">History</button>
    </form>
    <div class = "showTable">
    <table border = 2 style="background-color:white;">
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
            for(SearchResult result : results){
        %>
        <tr>
            <td><%out.println(result.getTitle());%></td>
            <td><a href = "<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
        </tr>
        <%
            }
        %>
    </table>
    </div>
</body>
</html>