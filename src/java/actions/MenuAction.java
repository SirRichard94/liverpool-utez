/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import beans.UsuarioBean;
import com.opensymphony.xwork2.ActionSupport;
import daos.UsuarioDao;
import java.sql.SQLException;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author ricardo
 */
public class MenuAction extends ActionSupport implements SessionAware{

	
	public String home() throws SQLException{
		UsuarioBean usuario = new UsuarioDao()
			.consultarUsuario((Integer)session.get("loginId"));
		
		if (usuario == null) return LOGIN;
		
		if (usuario.getTipoU().equals("Administrador")){
			return "administrador";
		}else if(usuario.getTipoU().equals("Empleado")){
			return "empleado";
		}else if(usuario.getTipoU().equals("Cliente")){
			return "cliente";
		}
		return LOGIN;
	}
	
	
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> map) {
		this.session = map;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	
	
	
}
