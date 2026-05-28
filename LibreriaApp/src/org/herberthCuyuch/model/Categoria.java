/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.herberthCuyuch.model;

/**
 *
 * @author informatica
 */
public class Categoria {
    /*
     Encapsulacion: public, private, proteced , Set y get
     class basica = POJO; Objeto simple de java
     ESTRUCTURA DE POJO Atributos, constructores(Vacio y lleno), setters y getters
     
    */
    private int id_categoria;
    private String nombreCategoria;
    
    public Categoria () {
        
    }

    public Categoria(int id_categoria, String nombreCategoria) {
        this.id_categoria = id_categoria;
        this.nombreCategoria = nombreCategoria;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }
    
}
