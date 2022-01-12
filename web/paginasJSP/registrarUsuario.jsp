<%-- 
    Document   : registrarUsuario
    Created on : 30/04/2021, 2:13:26 p. m.
    Author     : Saiir_H
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="logica.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Usuarios usuario = new Usuarios();
            usuario.setIdentificación(request.getParameter("identificacion"));
            usuario.setNombres(request.getParameter("nombres"));
            usuario.setNombreUsuraio(request.getParameter("nombreUsuario"));
            usuario.setPassword(request.getParameter("password"));
            ArrayList listaUsuarios = (ArrayList)usuario.obtenerUsuario();
            Iterator iteradorUsuarios = listaUsuarios.iterator();
            boolean encontrado = false;
            while(iteradorUsuarios.hasNext()){
                Usuarios usuarioregistrado = (Usuarios) iteradorUsuarios.next();
                String ide = usuarioregistrado.getIdentificación();
                String nu = usuarioregistrado.getNombreUsuraio();
                if(usuario.getIdentificación().equals(ide)||usuario.getNombreUsuraio().equals(nu)){
                  encontrado = true;
                  break;
      
                }
            }
            if(encontrado){
                  out.print("<h2>Usuario ya esta registrado </h2>"); 
                  out.print("<a href='../index.html'>Ir al index </a>");  
            }else{
                  out.print("<h2>Usuario registrado exitosamente </h2>"); 
                  out.print("<a href='../index.html'>Ir al index </a>"); 
            }
            
            usuario.agregarUsuario();
            %>
    </body>
</html>
