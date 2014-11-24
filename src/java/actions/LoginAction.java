/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import daos.*;
import beans.*;
import java.util.ArrayList;

/**
 *
 * @author ricardo
 */
public class LoginAction extends ActionSupport implements SessionAware{
	
	String usuario;
	String password;
	
	public String login(){
		UsuarioBean u = new UsuarioDao().validarLogin(usuario, password);
		 if (u != null){
			 session.put("loginId", u.getIdUsuario());
			 session.put("carrito", new ArrayList<ProductoBean>());
			 return SUCCESS;
		 }
		session.remove("loginId");
		session.remove("carrito");
		
		return LOGIN;
	}
	
	public String logOut() {
                session.remove("loginId");
		session.remove("carrito");
                addActionMessage("Has cerrado Sesion");
                return SUCCESS;
        }

	public String home(){
		return SUCCESS;
	}

	Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> map) {
		this.session = map;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	
	
	
}

