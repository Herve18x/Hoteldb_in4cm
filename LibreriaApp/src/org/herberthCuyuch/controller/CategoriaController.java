
package org.herberthCuyuch.controller;

import org.herberthCuyuch.model.dao.CategoriaDAOImpl;
import org.herberthCuyuch.model.dao.CategoriaDAO;
import org.herberthCuyuch.model.Categoria;
import java.util.List;
import org.herberthCuyuch.view.CategoriaView;


public class CategoriaController {
    private final CategoriaView  vista;
    private final CategoriaDAO dao;
    
    public CategoriaController(CategoriaView vista) {
    
        this.vista = vista;
        this.dao = new CategoriaDAOImpl();
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
        List <Categoria> lista = dao.listar();
        if (lista.isEmpty()) {
            vista.mostrarMensaje("No hay Categorias");
        }else {
            vista.mostrarTodos(lista);
        }
        }
    
    
}
