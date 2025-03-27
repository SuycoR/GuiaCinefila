package com.ideas.critica.controller;

import com.ideas.critica.Service.DistribuidorService;
import com.ideas.critica.dominio.Distribuidor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ABMcontroller {

    private final DistribuidorService distribuidorService;

    public ABMcontroller(DistribuidorService distribuidorService) {
        this.distribuidorService = distribuidorService;
    }

    @RequestMapping("peliculas/crear")
    public String formAlta(Model model){
        model.addAttribute("distribuidores",distribuidorService.buscarTodos());
        
        return "formAlta";
    }
}
