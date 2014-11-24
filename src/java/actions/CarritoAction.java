/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import beans.ProductoBean;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author ricardo
 */
public class CarritoAction  extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	String productoID;

	public String getProductoID() {
		return productoID;
	}

	public void setProductoID(String productoID) {
		this.productoID = productoID;
	}
	
	
	public List<ProductoBean> getCarrito(){
		List<ProductoBean> c = (List) session.get("carrito");
		return c;
		
	}
	public String agregarProducto(){
		List<ProductoBean> c = getCarrito();
		if (c == null){
			return LOGIN;
		}
		c.add(new ProductoDao().consultar(productoID) );
		return SUCCESS;
		
	}
	public String quitarProducto(){
		List<ProductoBean> c = getCarrito();
		if (c == null){
			return LOGIN;
		}
		c.remove(new ProductoDao().consultar(productoID) );
		return SUCCESS;
		
	}
	

	
	@Override
	public void setSession(Map<String, Object> map) {
		this.session = map;
	}

	
}

class ProductoDao{
	public ProductoBean consultar(String id){
		return new ProductoBean();
	}
}