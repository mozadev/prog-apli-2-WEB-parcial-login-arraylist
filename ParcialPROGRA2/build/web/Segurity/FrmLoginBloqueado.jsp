<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
              function   entrar()
              {
                  document.form.action="<%=request.getContextPath()%>/UserController"; // destino  hacia  otra  pagina 
                  document.form.method="GET"; //  tipo redireccionamiento 
                  document.form.submit(); // es  un metodo para enviar los  parametros
              }
        </script>        
        
    </head>
    <body>
    <center>
        <form name="form" autocomplete="off">
            <table style="width: 400px;height: 100px ;background-color: greenyellow">
                <tr>
                    <td>Usuario :</td>
                    <td><input type="text"  name="txtUsuario"  autocomplete="off" disabled /></td>
                </tr>  
                <tr>
                    <td>Clave :</td>
                    <td><input type="password"  name="txtClave"   autocomplete="off" disabled /></td>
                </tr> 
                <tr >
                    <td  colspan="2">
                          <center>
                              <input type="button" name="bntentrar" value="Entrar"  disabled onclick="entrar()"/>
                          </center>                     
                    </td>
                </tr>
            </table>
            <%  
            if(request.getAttribute("mensaje")!=null){
                out.print((String)request.getAttribute("mensaje"));
            }
            
            
            %>
        </form>
    </center>
    </body>
</html>
