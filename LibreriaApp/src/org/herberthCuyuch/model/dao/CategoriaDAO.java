
package org.herberthCuyuch.model.dao;

import java.util.List;
import org.herberthCuyuch.model.Categoria;


public interface CategoriaDAO {
    // Guardar la firma de metodo: es un metodo sin contenido
    // Sirven para implementar obligatoriamente las firmas de metodo 
    
    // CRUD
    
    boolean insertar(Categoria categoria);
    
    List<Categoria> listar();
    
    Categoria buscar(int id);
    
    boolean actualizar(Categoria categoria);
    boolean eliminar(int id);
}
