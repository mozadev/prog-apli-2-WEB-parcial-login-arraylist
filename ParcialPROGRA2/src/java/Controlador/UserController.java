
package Controlador;

import Datos.UsuarioDatos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserController extends HttpServlet {
int cont= 0;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String usuario = request.getParameter("txtUsuario");
        String clave = request.getParameter("txtClave");
     
        int maximo= 3;
        UsuarioDatos objUsuDatos = new UsuarioDatos();
        boolean estado = objUsuDatos.validarUsuario(usuario, clave);
        if (estado) {
            getServletContext().getRequestDispatcher("/Segurity/FrmPrincipal.jsp").forward(request, response);
        } else {
            cont++;
            System.out.println("El contador es: "+cont);
            if (cont == maximo) {
                request.setAttribute("mensaje", "Se ha bloqueado por intentar 3 veces");
                getServletContext().getRequestDispatcher("/Segurity/FrmLoginBloqueado.jsp").forward(request, response);
            } else {
                request.setAttribute("mensaje", "Usuario y Clave Incorrecto");
                getServletContext().getRequestDispatcher("/Segurity/FrmLoginAcceso.jsp").forward(request, response);
            }

        }
     
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
