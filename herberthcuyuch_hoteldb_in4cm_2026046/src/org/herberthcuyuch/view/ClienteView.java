package org.herberthcuyuch.view;
import java.util.List;
import java.util.Scanner;
import org.herberthcuyuch.model.Cliente;
/**
 *
 * @author informatica
 */
public class ClienteView {
    private final Scanner leer = new Scanner (System.in);
    
    public int mostrarMenu(){
        System.out.println("\n === Gestion Clientes ===");
        System.out.println("1. Ingresar un nuevo cliente");
        System.out.println("2. Listar todos los clientes");
        System.out.println("3. Buscar un cliente por ID");
        System.out.println("4. Actualizar un cliente");
        System.out.println("5. Eliminar un cliente");
        System.out.println("6. Regresar al MENU PRINCIPAL.");
        System.out.println("Seleccione una opcion:");
        return Integer.parseInt(leer.nextLine());
    }
    
    public String solicitarNombre(){
        System.out.println("Ingrese un nombre");
        return leer.nextLine();
        
    }
    
    public int SolicitarID(){
        System.out.println("Ingrese el ID de la categoria");
        return Integer.parseInt(leer.nextLine());
        
    }
    // List Vector de objetos 
    public void mostrarTodos(List<Cliente> clientes){
        System.out.println("\n +++ LISTA DE CATEGORIAS +++");
        // For each = Ciclo para vectores de objetos
        for (Cliente cliente : clientes) {
            System.out.println(cliente.getCui()+ " " + cliente.getNombreCliente() + "\n");
            
        }
    }
    
    public void mostrarCategoria(Cliente cliente){
        System.out.println("\n DETALLE DE CATEGORIA");
        System.out.println("ID: " + cliente.getNombreCliente());
        System.out.println("NOMBRE: " + cliente.getNombreCliente());
        System.out.println("");
    }
    
    public void mostrarMensaje(String mensaje) {
        System.out.println(mensaje);
    
    
    }
    
}

