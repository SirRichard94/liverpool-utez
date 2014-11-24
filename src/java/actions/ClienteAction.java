/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import beans.UsuarioBean;
import daos.UsuarioDao;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Carlos
 */
public class ClienteAction extends ActionSupport {

    int idUsuario;
    String nombre;
    String apellidoP;
    String apellidoM;
    String fechaN;
    String direccion;
    int cuentaB;
    String nombreU;
    String password;
    String email;
    String tipoU;

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoP() {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP) {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM) {
        this.apellidoM = apellidoM;
    }

    public String getFechaN() {
        return fechaN;
    }

    public void setFechaN(String fechaN) {
        this.fechaN = fechaN;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getCuentaB() {
        return cuentaB;
    }

    public void setCuentaB(String cuentaB) {
        try {
            this.cuentaB = Integer.parseInt(cuentaB);
        } catch (NumberFormatException e) {
            this.cuentaB = 0;
        }
    }

    public String getNombreU() {
        return nombreU;
    }

    public void setNombreU(String nombreU) {
        this.nombreU = nombreU;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTipoU() {
        return tipoU;
    }

    public void setTipoU(String tipoU) {
        this.tipoU = tipoU;
    }

    public String registrarCliente() throws SQLException {
        UsuarioBean user = new UsuarioBean(nombre, apellidoP, apellidoM, fechaN, direccion, cuentaB, nombreU, password, email, "Cliente");
        UsuarioDao daoU = new UsuarioDao();
        daoU.registrarUsuario(user);
        return SUCCESS;
    }

    List<UsuarioBean> lista = new ArrayList();

    public List<UsuarioBean> getLista() {
        return lista;
    }

    public void setLista(List<UsuarioBean> lista) {
        this.lista = lista;
    }

    public String consultarClientes() throws SQLException {
        UsuarioDao daoU = new UsuarioDao();
        lista = daoU.consultarClientes();
        return SUCCESS;
    }

    public String consultarClienteIndividual() throws SQLException, ParseException {
        UsuarioDao daoU = new UsuarioDao();
        UsuarioBean bean = daoU.consultarUsuario(idUsuario);
        setNombre(bean.getNombre());
        setApellidoP(bean.getApellidoP());
        setApellidoM(bean.getApellidoM());

        setFechaN(bean.getFechaN());

        setDireccion(bean.getDireccion());
        setCuentaB("" + bean.getCuentaB());
        setNombreU(bean.getNombreU());
        setPassword(bean.getPassword());
        setEmail(bean.getEmail());
        setTipoU(bean.getTipoU());
        return SUCCESS;
    }

    public String actualizarCliente() throws SQLException {
        UsuarioBean user = new UsuarioBean();
        user.setIdUsuario(idUsuario);
        System.out.println("Id" + idUsuario);
        user.setNombre(nombre);
        System.out.println("Nombre" + nombre);
        user.setApellidoP(apellidoP);
        System.out.println("Apellido P" + apellidoP);
        user.setApellidoM(apellidoM);
        System.out.println("Apellido M" + apellidoM);

        user.setFechaN(fechaN);
        System.out.println("Fecha " + fechaN);

        user.setDireccion(direccion);
        System.out.println("Direccion " + direccion);
        user.setCuentaB(cuentaB);
        System.out.println("Cuenta ban " + cuentaB);
        user.setNombreU(nombreU);
        System.out.println("Nombre U " + nombreU);
        user.setPassword(password);
        System.out.println("Password " + password);
        user.setEmail(email);
        System.out.println("Email " + email);
        user.setTipoU("Cliente");
        System.out.println("Tipo U " + tipoU);

        UsuarioDao daoU = new UsuarioDao();
        daoU.actualizarUsuario(user);
        return SUCCESS;
    }

    public String eliminarCliente() throws SQLException {
        UsuarioDao daoU = new UsuarioDao();
        daoU.eliminarUsuario(idUsuario);
        return SUCCESS;
    }
}
