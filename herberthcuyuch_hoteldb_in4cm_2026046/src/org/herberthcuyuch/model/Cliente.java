/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.herberthcuyuch.model;

/**
 *
 * @author herbe
 */
public class Cliente {
    private long cui;
    private String nombreCliente;

    public long getCui() {
        return cui;
    }

    public void setCui(long cui) {
        this.cui = cui;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public Cliente(long cui, String nombreCliente) {
        this.cui = cui;
        this.nombreCliente = nombreCliente;
    }



}
