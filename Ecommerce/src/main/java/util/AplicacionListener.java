/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package util;

import implementaciones.ManejadorConexiones;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
@WebListener
public class AplicacionListener implements ServletContextListener{
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Se ejecuta al iniciar la web app
        ManejadorConexiones.Inicializar();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Se ejecuta al detener la web app
        ManejadorConexiones.cerrar();
    }
}
