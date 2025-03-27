package com.ideas.critica.Service;

import com.ideas.critica.dominio.Pelis;
import org.springframework.stereotype.Service;

import com.ideas.critica.persistance.PeliculasRepository;
import java.util.List;

@Service
public class PeliculasService {

    private final PeliculasRepository videojuegosRepository;

    public PeliculasService(PeliculasRepository videojuegosRepository) {
        this.videojuegosRepository = videojuegosRepository;
    }

    public List<Pelis> buscarDestacados(){
        return videojuegosRepository.Ordenar();
    }

    public List<Pelis> buscarPorConsulta(String buscar){
        return videojuegosRepository.BuscarPorString(buscar);
    }


}
