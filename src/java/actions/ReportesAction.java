///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package actions;
//
//
//
//import com.opensymphony.xwork2.ActionSupport;
//import java.sql.Connection;
//import java.sql.SQLException;
//import net.sf.jasperreports.engine.JRException;
//import net.sf.jasperreports.engine.JasperFillManager;
//import net.sf.jasperreports.engine.JasperPrint;
//import net.sf.jasperreports.engine.JasperReport;
//import net.sf.jasperreports.engine.util.JRLoader;
//import net.sf.jasperreports.view.JasperViewer;
//import utilerias.conexionSQLServer;
//
///**
// *
// * @author Carlos
// */
//public class ReportesAction extends ActionSupport {
//
//    
//    public String generarReporteInventario() throws SQLException{
//        Connection con = conexionSQLServer.getConnection();
//        String path ="C:\\Users\\Carlos\\Desktop\\Liverpool - copia\\src\\Reportes Liverpool\\Reporte de inventario de productos.jasper";
//        JasperReport jr = null;
//        try{
//            jr=(JasperReport) JRLoader.loadObjectFromFile(path);
//            JasperPrint jp;
//            jp = JasperFillManager.fillReport(jr, null, con);
//            JasperViewer jv = new JasperViewer(jp);
//            jv.setVisible(true);
//            jv.setTitle("Reporte de inventario Liverpool");
//            con.close();
//        }catch(JRException ex){
//            System.out.println(ex);
//        }
//        return SUCCESS;
//    }
//    
//}
