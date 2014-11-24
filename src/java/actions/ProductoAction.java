/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import beans.ProductoBean;
import com.opensymphony.xwork2.ActionSupport;
import daos.ProductoDao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Eduardo
 */
public class ProductoAction extends ActionSupport{
    int productoId;
    int codigo;
    String nombre;
    String marca;
    String categoria;
    float precioCompra;
    float precioVenta;
    int existencias;
    String estado;

    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public float getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(float precioCompra) {
        this.precioCompra = precioCompra;
    }

    public float getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(float precioVenta) {
        this.precioVenta = precioVenta;
    }

    public int getExistencias() {
        return existencias;
    }

    public void setExistencias(int existencias) {
        this.existencias = existencias;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public String registrarProducto() throws SQLException{
        ProductoBean pro=new ProductoBean(productoId, codigo, nombre, marca, categoria, precioCompra, precioVenta, existencias, estado);
        ProductoDao producto= new ProductoDao();
        producto.registroProducto(pro);
        return SUCCESS;
    }
    
    List<ProductoBean> lista = new ArrayList();
    
     public List<ProductoBean> getLista() {
        return lista;
    }

    public void setLista(List<ProductoBean> lista) {
        this.lista = lista;
    }
}
