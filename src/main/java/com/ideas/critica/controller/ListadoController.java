
package com.ideas.critica.controller;

import com.ideas.critica.dominio.Pelis;
import com.ideas.critica.Service.PeliculasService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ListadoController {

    private final PeliculasService peliculasService;

    public ListadoController(PeliculasService peliculasService) {
        this.peliculasService = peliculasService;
    }

    //Inyeccion de dependencias
    @RequestMapping("/")
    public String listarPeliculas(Model model){
        //busqueda de las peliculas
        List<Pelis> destacado = peliculasService.buscarDestacados();
        model.addAttribute("Peliculita",destacado);
        return "listado";
    }
    @RequestMapping("/buscar")
    public String listaBuscarPeliculas(@RequestParam("q") String consulta, Model model){
        List<Pelis> busquedaSimilar = peliculasService.buscarPorConsulta(consulta);
        model.addAttribute("Peliculita",busquedaSimilar);
        return "listado";
    }


}
