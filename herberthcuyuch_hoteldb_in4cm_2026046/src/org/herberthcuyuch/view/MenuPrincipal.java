/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.herberthcuyuch.view;
import java.util.Scanner;
import org.herberthcuyuch.controller.ClienteController;
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
            System.out.println("1. Entrar a Habitaciones.");
            System.out.println("2. Entrar a Clientes.");
            System.out.println("3. Entrar a Reservas.");
            System.out.println("4. Entrar a Empleado.");
            System.out.println("5. Salir del sistema.");
            System.out.println("----------------------------------------");
            
            opcion = Integer.parseInt(leer.nextLine());
            
            switch (opcion) {
                case 1:
                    System.out.println("Habitaciones");
                    break;
                case 2:
                    // Instanciar la vista CATEGORIA
                    
                    ClienteView vista = new ClienteView();
                    ClienteController controll= new ClienteController(vista);
                    controll.iniciar();
                    break;
                case 3  :
                    // Instanciar la vista LIBRO
                    System.out.println("Reservas");
                    break;
                case 4  :
                    // Instanciar la vista LIBRO
                    System.out.println("Empleados");
                    break;
                default:
                    System.out.println("NO EXISTE LA OPCION");
            }
        } while (opcion != 5);
        System.out.println("\n Hasta la proxima.");
    }
}
