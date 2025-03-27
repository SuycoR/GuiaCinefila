package com.ideas.critica.persistance;

import com.ideas.critica.dominio.Distribuidor;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DistribuidorRepository extends JpaRepository<Distribuidor,Integer> {


}
