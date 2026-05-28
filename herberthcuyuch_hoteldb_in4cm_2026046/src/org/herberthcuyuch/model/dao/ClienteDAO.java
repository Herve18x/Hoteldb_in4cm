
package org.herberthcuyuch.model.dao;

import java.util.List;
import org.herberthcuyuch.model.Cliente;


public interface ClienteDAO {
    // Guardar la firma de metodo: es un metodo sin contenido
    // Sirven para implementar obligatoriamente las firmas de metodo 
    
    // CRUD
    
    boolean insertar(Cliente cliente);
    
    List<Cliente> listar();
    
    Cliente buscar(int id);
    
    boolean actualizar(Cliente cliente );
    boolean eliminar(int id);
}

