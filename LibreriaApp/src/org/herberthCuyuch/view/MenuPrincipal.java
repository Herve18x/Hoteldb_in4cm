/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.herberthCuyuch.view;
import java.util.Scanner;
import org.herberthCuyuch.controller.CategoriaController;
/**
 *
 * @author informatica
 */
public class MenuPrincipal {
    private final Scanner leer = new Scanner (System.in);
    
    public void iniciarSistema(){
        System.out.println("");
        int opcion = 0;
        // Ciclo para el menu: While
        
        do {            
            System.out.println("----------------------------------------");
            System.out.println("        Sistema central Libreria        ");
            System.out.println("----------------------------------------");
            System.out.println("1. Entrar a Categorias.");
            System.out.println("2. Entrar a Editoriales.");
            System.out.println("3. Entrar a Libros.");
            System.out.println("4. Salir del sistema.");
            System.out.println("----------------------------------------");
            
            opcion = Integer.parseInt(leer.nextLine());
            
            switch (opcion) {
                case 1:
                    // Instanciar la vista CATEGORIA
                    CategoriaView vista = new CategoriaView();
                    CategoriaController controll= new CategoriaController(vista);
                    controll.iniciar();
                    break;
                case 2:
                    // Instanciar la vista EDITORIAL
                    System.out.println("EDITORIAL");
                    break;
                case 3  :
                    // Instanciar la vista LIBRO
                    System.out.println("LIBRO");
                    break;
                default:
                    System.out.println("NO EXISTE LA OPCION");
            }
        } while (opcion != 4);
        System.out.println("\n Hasta la proxima.");
    }
}
