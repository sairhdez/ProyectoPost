<%-- 
    Document   : formularioRegistroUsuario
    Created on : 30/04/2021, 2:00:22 p. m.
    Author     : Saiir_H
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario de registro  usuario</h1>
        </hr>
        <form action="registrarUsuario.jsp" method="post">
            <table>
                <tr>
                    <td><label> Ingrese identificacion</label></td>
                    <td><input type="text" name="identificacion"/></td>
                </tr>
                <tr>
                    <td><label> Ingrese nombre y apellido</label></td>
                    <td><input type="text" name="nombres"/></td>
                </tr>
                <tr>
                    <td><label> Ingrese nombre de usuario</label></td>
                    <td><input type="text" name="nombreUsuario"/></td>
                </tr>
                <tr>
                    <td><label> Ingrese su password</label></td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td><input type="submi" name="Registrar usuario"/></td>
                    <td><input type="reset" name="Limpiar formulario"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
