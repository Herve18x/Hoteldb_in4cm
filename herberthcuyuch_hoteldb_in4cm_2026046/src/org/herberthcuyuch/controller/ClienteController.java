
package org.herberthcuyuch.controller;

import org.herberthcuyuch.model.dao.ClienteDAOImpl;
import org.herberthcuyuch.model.dao.ClienteDAO;
import org.herberthcuyuch.model.Cliente;
import java.util.List;
import org.herberthcuyuch.view.ClienteView;


public class ClienteController {
    private final ClienteView  vista;
    private final ClienteDAO dao;
    
    public ClienteController(ClienteView vista) {
    
        this.vista = vista;
        this.dao = new ClienteDAOImpl();
    }
    
    public void iniciar(){
        int opcion;
        do {            
            opcion = vista.mostrarMenu();
            switch (opcion) {
            
                case 2: 
                    listar();
                    break;
                case 6:
                    System.out.println("Si hay");
                    break;
                default:
                    System.out.println("No hay :(");
            }
            
        } while (opcion != 6);
    
    }
    
    private void listar(){
        List <Cliente> lista = dao.listar();
        if (lista.isEmpty()) {
            vista.mostrarMensaje("No hay clientes");
        }else {
            vista.mostrarTodos(lista);
        }
        }
    
    
}