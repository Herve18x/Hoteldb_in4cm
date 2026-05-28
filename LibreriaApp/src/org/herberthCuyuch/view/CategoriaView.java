package org.herberthCuyuch.view;
import java.util.List;
import java.util.Scanner;
import org.herberthCuyuch.model.Categoria;
/**
 *
 * @author informatica
 */
public class CategoriaView {
    private final Scanner leer = new Scanner (System.in);
    
    public int mostrarMenu(){
        System.out.println("\n === Gestion Categorias ===");
        System.out.println("1. Ingresar una nueva categoria");
        System.out.println("2. Listar todas las categorias");
        System.out.println("3. Buscar una categoria por ID");
        System.out.println("4. Actualizar una categoria");
        System.out.println("5. Eliminar una categoria");
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
    public void mostrarTodos(List<Categoria> categorias){
        System.out.println("\n +++ LISTA DE CATEGORIAS +++");
        // For each = Ciclo para vectores de objetos
        for (Categoria categoria : categorias) {
            System.out.println(categoria.getId_categoria()+ " " + categoria.getNombreCategoria() + "\n");
            
        }
    }
    
    public void mostrarCategoria(Categoria categoria){
        System.out.println("\n DETALLE DE CATEGORIA");
        System.out.println("ID: " + categoria.getNombreCategoria());
        System.out.println("NOMBRE: " + categoria.getNombreCategoria());
        System.out.println("");
    }
    
    public void mostrarMensaje(String mensaje) {
        System.out.println(mensaje);
    
    
    }
    
}

