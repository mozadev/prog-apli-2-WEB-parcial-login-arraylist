    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Datos;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class UsuarioDatos {
    public boolean validarUsuario(String usuario,String clave){
        boolean estado;
        if(usuario.equals("moza")&& clave.equals("1234")){
            estado=true;
        }else{
            estado=false;
        }
        return estado;
    }
    
}
