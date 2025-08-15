<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    String nome = request.getParameter("nome");
    String mensagem = "Boa tarde " + nome;

    int num = Integer.parseInt(request.getParameter("valor"));

    int resultado = num + 100;
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java na web</title>
    <style>
        *{
            background-color: black;
        }
        body{
            display: flex;
            height: 100vh;
            justify-content:center;
            align-items: center;
            flex-direction: column;
        }
        h1{
            color:white;
        }
        li{
            color:white;
        }
    </style>
</head>
<body>
    <h1><% out.print(mensagem); %></h1>

    <h1>Valor : <%= resultado %></h1>

    <ul>
        <%
            for(int cont = 0; cont < 10; cont++){
                out.print("<li>" + cont + "</li>");
            }
        %>


    </ul>
    <ul>
        <c:forEach var="item" begin="0" end="10">
            <li>${item}</li>
        </c:forEach>
    </ul>
</body>
</html>