package com.ideas.critica.dominio;

import jakarta.persistence.*;


@Entity
public class Pelis {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String nombre;
    private String descripcion;
    private String imagen;
    @ManyToOne
    private Distribuidor distribuidor;

    public Pelis(String nombre, String descripcion, String imagen, Distribuidor distribuidor) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.distribuidor = distribuidor;
    }

    public Distribuidor getDistribuidor() {
        return distribuidor;
    }

    public void setDistribuidor(Distribuidor distribuidor) {
        this.distribuidor = distribuidor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Pelis() {
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
