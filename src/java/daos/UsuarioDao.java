/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package daos;

import beans.UsuarioBean;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utilerias.conexionSQLServer;

/**
 *
 * @author Carlos
 */
public class UsuarioDao {
    
    public boolean registrarUsuario(UsuarioBean user) throws SQLException {
        boolean status = false;
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "{call pa_insertar_usuario(?,?,?,?,?,?,?,?,?,?)}";
            CallableStatement call = con.prepareCall(Query);
            call.setString(1, user.getNombre());
            call.setString(2, user.getApellidoP());
            call.setString(3, user.getApellidoM());
            call.setString(4, user.getFechaN());
            call.setString(5, user.getDireccion());
            call.setInt(6, user.getCuentaB());
            call.setString(7, user.getNombreU());
            call.setString(8, user.getPassword());
            call.setString(9, user.getEmail());
            call.setString(10, user.getTipoU());

            if (call.executeUpdate() == 1) {
                status = true;
            }
            call.close();
            con.close();
        } catch (Exception e) {
            con.close();
            e.printStackTrace();
        }
        return status;
    }
    
   public List<UsuarioBean> consultarEmpleados() throws SQLException {
        List<UsuarioBean> usuarios = new ArrayList();
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "{call pa_consultar_empleados}";
            CallableStatement call = con.prepareCall(Query);
            ResultSet res = call.executeQuery();

            while (res.next()) {
                UsuarioBean user = new UsuarioBean();
                user.setIdUsuario(res.getInt(1));
                user.setNombre(res.getString(2));
                user.setApellidoP(res.getString(3));
                user.setApellidoM(res.getString(4));
                user.setFechaN(res.getString(5));
                user.setDireccion(res.getString(6));
                user.setCuentaB(res.getInt(7));
                user.setNombreU(res.getString(8));
                user.setPassword(res.getString(9));
                user.setEmail(res.getString(10));
                user.setTipoU(res.getString(11));
                usuarios.add(user);
            }
            res.close();
            call.close();
            con.close();
        } catch (SQLException ex) {
            con.close();
            ex.printStackTrace();
        }
        return usuarios;
    }
   
   public List<UsuarioBean> consultarClientes() throws SQLException {
        List<UsuarioBean> usuarios = new ArrayList();
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "{call pa_consultar_clientes}";
            CallableStatement call = con.prepareCall(Query);
            ResultSet res = call.executeQuery();

            while (res.next()) {
                UsuarioBean user = new UsuarioBean();
                user.setIdUsuario(res.getInt(1));
                user.setNombre(res.getString(2));
                user.setApellidoP(res.getString(3));
                user.setApellidoM(res.getString(4));
                user.setFechaN(res.getString(5));
                user.setDireccion(res.getString(6));
                user.setCuentaB(res.getInt(7));
                user.setNombreU(res.getString(8));
                user.setPassword(res.getString(9));
                user.setEmail(res.getString(10));
                user.setTipoU(res.getString(11));
                usuarios.add(user);
            }
            res.close();
            call.close();
            con.close();
        } catch (SQLException ex) {
            con.close();
            ex.printStackTrace();
        }
        return usuarios;
    }
   
   
    public UsuarioBean consultarUsuario(int id) throws SQLException {
        UsuarioBean user = null;
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "{call pa_consultar_usuario(?)}";
            CallableStatement call = con.prepareCall(Query);
            call.setInt(1, id);
            ResultSet res = call.executeQuery();

            while (res.next()) {
                user = new UsuarioBean();
                user.setIdUsuario(res.getInt(1));
                user.setNombre(res.getString(2));
                user.setApellidoP(res.getString(3));
                user.setApellidoM(res.getString(4));
                user.setFechaN(res.getString(5));
                user.setDireccion(res.getString(6));
                user.setCuentaB(res.getInt(7));
                user.setNombreU(res.getString(8));
                user.setPassword(res.getString(9));
                user.setEmail(res.getString(10));
                user.setTipoU(res.getString(11));
            }
            res.close();
            call.close();
            con.close();
        } catch (SQLException ex) {
            con.close();
            ex.printStackTrace();
        }
        return user;
    }
    
    public boolean actualizarUsuario(UsuarioBean bean) throws SQLException {
        boolean status = false;
        Connection con = null;
        try {
         con = conexionSQLServer.getConnection();
         String Query = "{call pa_actualizar_usuario(?,?,?,?,?,?,?,?,?,?,?)}";
         CallableStatement call = con.prepareCall(Query);
         call.setInt(1, bean.getIdUsuario());
         call.setString(2, bean.getNombre());
         call.setString(3, bean.getApellidoP());
         call.setString(4, bean.getApellidoM());
         call.setString(5, bean.getFechaN());
         call.setString(6, bean.getDireccion());
         call.setInt(7, bean.getCuentaB());
         call.setString(8, bean.getNombreU());
         call.setString(9, bean.getPassword());
         call.setString(10, bean.getEmail());
         call.setString(11, bean.getTipoU());
         if (call.executeUpdate()==1) {
             status=true;
         }
         call.close();
         con.close();
        } catch (Exception e) {
            con.close();
            e.printStackTrace();
        }
        return status;
    }
    
    public boolean eliminarUsuario(int idUsuario) throws SQLException{
        boolean status= false;
        Connection con=null;
        try{
            con = conexionSQLServer.getConnection();
            String Query = "{call pa_eliminar_usuario(?)}";
            CallableStatement call = con.prepareCall(Query);
            call.setInt(1, idUsuario);
            if (call.executeUpdate()==1) {
                status=true;
            }
            call.close();
            con.close();
        }catch(Exception e){
            con.close();
            e.printStackTrace();
        }
        return status;
    }
    
    public UsuarioBean validarLogin(String usuario, String pass){
	    //temporal
	    if (usuario.equals("ricardo") && pass.equals("123")){
		    UsuarioBean u =  new UsuarioBean();
		    u.setApellidoM("Torres");
		    u.setApellidoP("Rodriguez");
		    u.setCuentaB(123435);
		    u.setDireccion("Sin casa");
		    u.setEmail("asda@asdas.asd");
		    u.setFechaN("12/32/32");
		    u.setIdUsuario(2);
		    u.setNombreU(usuario);
		    u.setPassword(pass);
		    u.setTipoU("Administrador");
		    
		    return u;
	    }else{
	    return null;
	    }
    }
}
