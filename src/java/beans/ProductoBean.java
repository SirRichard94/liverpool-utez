/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Eduardo
 */
public class ProductoBean {
    private int productoId;
    private int codigo;
    private String nombre;
    private String marca;
    private String categoria;
    private float precioCompra;
    private float precioVenta;
    private int existencias;
    private String estado;

    public ProductoBean() {
    }

    public ProductoBean(int productoId,int codigo, String nombre, String marca, String categoria, float precioCompra, float precioVenta, int existencias, String estado) {
        this.productoId=productoId;
        this.codigo = codigo;
        this.nombre = nombre;
        this.marca = marca;
        this.categoria = categoria;
        this.precioCompra = precioCompra;
        this.precioVenta = precioVenta;
        this.existencias = existencias;
        this.estado = estado;
    }

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

	@Override
	public boolean equals(Object o) {
		if (! (o instanceof ProductoBean)) return false;
		
		ProductoBean p = (ProductoBean) o;
		
		return p.getCodigo() == this.getCodigo();
	}

	@Override
	public int hashCode() {
		return codigo * 5;
	}
    
    
}
