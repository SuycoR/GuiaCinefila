package com.ideas.critica.Service;

import com.ideas.critica.dominio.Distribuidor;
import com.ideas.critica.persistance.DistribuidorRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistribuidorService {
    private final DistribuidorRepository distribuidorRepository;

    public DistribuidorService(DistribuidorRepository distribuidorRepository) {
        this.distribuidorRepository = distribuidorRepository;
    }

    public List<Distribuidor> buscarTodos (){
        return distribuidorRepository.findAll();
    }
}
