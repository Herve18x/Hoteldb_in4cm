package org.herberthcuyuch.model.dao;

import java.util.ArrayList;
import java.util.List;
import org.herberthcuyuch.model.Cliente;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import org.herberthcuyuch.model.conexion.Conexion;

public class ClienteDAOImpl implements ClienteDAO{

    @Override
    public boolean insertar(Cliente cliente) {
        return false;
    }

    @Override
    public List<Cliente> listar() {
        List<Cliente> clientes = new ArrayList<>();
        String consulta = "{call sp_listar_cliente()}";
        try (Connection conexion = Conexion.conectar();
                CallableStatement call = conexion.prepareCall(consulta);
                ResultSet resultado = call.executeQuery()
                ) {
            while (resultado.next()) {
                clientes.add(new Cliente(resultado.getLong("cui"),
                resultado.getString("nombre_cliente")
                )); 
                
            }
        } catch (Exception e) {
            System.err.println("ERROR: al listar clientes: " + e.getMessage());
        }
        return clientes;
    }

    @Override
    public Cliente buscar(int id) {
        return null;
    }

    @Override
    public boolean actualizar(Cliente cliente) {
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        return false;
    }
    
}
