/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import beans.ProductoBean;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utilerias.conexionSQLServer;

/**
 *
 * @author Eduardo
 */
public class ProductoDao {

    public boolean registroProducto(ProductoBean pro) throws SQLException {
        boolean status = false;
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "cst pa_insertar_producto{?,?,?,?,?,?,?,?}";
            CallableStatement cst = con.prepareCall(Query);
            cst.setInt(1, pro.getCodigo());
            cst.setString(2, pro.getNombre());
            cst.setString(3, pro.getMarca());
            cst.setString(4, pro.getCategoria());
            cst.setFloat(5, pro.getPrecioCompra());
            cst.setFloat(6, pro.getPrecioVenta());
            cst.setInt(7, pro.getExistencias());
            cst.setString(8, pro.getEstado());

            if (cst.executeUpdate() == 1) {
                status = true;
            }
            cst.close();
            con.close();
        } catch (Exception e) {
            con.close();
            e.printStackTrace();
        }
        return status;
    }

    public List<ProductoBean> consultarProducto() throws SQLException {
        List<ProductoBean> producto = new ArrayList();
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "{cst pa_consultar_productos}";
            CallableStatement cst = con.prepareCall(Query);
            ResultSet res = cst.executeQuery();

            while (res.next()) {
                ProductoBean pro = new ProductoBean();
                pro.setCodigo(res.getInt(1));
                pro.setNombre(res.getString(2));
                pro.setMarca(res.getString(3));
                pro.setCategoria(res.getString(4));
                pro.setPrecioCompra(res.getFloat(5));
                pro.setPrecioVenta(res.getFloat(6));
                pro.setExistencias(res.getInt(7));
                pro.setEstado(res.getString(8));
                producto.add(pro);

            }
            res.close();
            cst.close();
            con.close();
        } catch (Exception ex) {
            con.close();
            ex.printStackTrace();
        }
        return producto;
    }

    public boolean modificarProducto(int id, ProductoBean pro) {
        boolean status = false;
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "cst pa_actualizar_producto";
            CallableStatement cst = con.prepareCall(Query);
            cst.setInt(1, pro.getProductoId());
            cst.setInt(2, pro.getCodigo());
            cst.setString(3, pro.getNombre());
            cst.setString(4, pro.getMarca());
            cst.setString(5, pro.getCategoria());
            cst.setFloat(6, pro.getPrecioCompra());
            cst.setFloat(7, pro.getPrecioVenta());
            cst.setInt(8, pro.getExistencias());
            cst.setString(9, pro.getEstado());

            if (cst.executeUpdate() == 1) {
                return status = true;
            }
            cst.close();
            con.close();
        } catch (Exception ex) {
          ex.printStackTrace();
            
        }
        return status;
    }

    public boolean eliminarProducto(ProductoBean pro) throws SQLException {
        boolean status = false;
        Connection con = null;
        try {
            con = conexionSQLServer.getConnection();
            String Query = "cst pa_eliminar_producto";
            CallableStatement cst = con.prepareCall(Query);
            cst.setInt(1, pro.getProductoId());
            cst.executeUpdate();
            cst.close();
            con.close();
            return status = true;
        } catch (Exception e) {
            con.close();
            e.printStackTrace();
        }
        return status;

    }
}
