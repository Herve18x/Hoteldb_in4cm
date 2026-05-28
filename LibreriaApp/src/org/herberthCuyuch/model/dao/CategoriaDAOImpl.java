
package org.herberthCuyuch.model.dao;

import java.util.ArrayList;
import java.util.List;
import org.herberthCuyuch.model.Categoria;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import org.herberthCuyuch.model.conexion.Conexion;

public class CategoriaDAOImpl implements CategoriaDAO{

    @Override
    public boolean insertar(Categoria categoria) {
        return false;
    }

    @Override
    public List<Categoria> listar() {
        List<Categoria> categorias = new ArrayList<>();
        String consulta = "{call sp_listarcategorias()}";
        try (Connection conexion = Conexion.conectar();
                CallableStatement call = conexion.prepareCall(consulta);
                ResultSet resultado = call.executeQuery()
                ) {
            while (resultado.next()) {
                categorias.add(new Categoria(resultado.getInt("id_categoria"),
                resultado.getString("nombre_categoria")
                )); 
                
            }
        } catch (Exception e) {
            System.err.println("ERROR: al listar categorias: " + e.getMessage());
        }
        return categorias;
    }

    @Override
    public Categoria buscar(int id) {
        return null;
    }

    @Override
    public boolean actualizar(Categoria categoria) {
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        return false;
    }
    
}
