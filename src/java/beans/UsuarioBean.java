/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

/**
 *
 * @author Carlos
 */
public class UsuarioBean {
    
    private int idUsuario;
    private String nombre;
    private String apellidoP;
    private String apellidoM;
    private String fechaN;
    private String direccion;
    private int cuentaB;
    private String nombreU;
    private String password;
    private String email;
    private String tipoU;

    public UsuarioBean() {
    }

    public UsuarioBean(int idUsuario, String nombre, String apellidoP, String apellidoM, String fechaN, String direccion, int cuentaB, String nombreU, String password, String email, String tipoU) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellidoP = apellidoP;
        this.apellidoM = apellidoM;
        this.fechaN = fechaN;
        this.direccion = direccion;
        this.cuentaB = cuentaB;
        this.nombreU = nombreU;
        this.password = password;
        this.email = email;
        this.tipoU = tipoU;
    }
    
    public UsuarioBean(String nombre, String apellidoP, String apellidoM, String fechaN, String direccion, int cuentaB, String nombreU, String password, String email, String tipoU) {
        this.nombre = nombre;
        this.apellidoP = apellidoP;
        this.apellidoM = apellidoM;
        this.fechaN = fechaN;
        this.direccion = direccion;
        this.cuentaB = cuentaB;
        this.nombreU = nombreU;
        this.password = password;
        this.email = email;
        this.tipoU = tipoU;
    }

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

    public void setCuentaB(int cuentaB) {
        this.cuentaB = cuentaB;
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
    
    

}
