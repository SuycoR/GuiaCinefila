package com.ideas.critica.persistance;

import com.ideas.critica.dominio.Pelis;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PeliculasRepository extends JpaRepository<Pelis,Integer> {

    @Query("select p from Pelis p ORDER BY p.nombre")
    List<Pelis> Ordenar();
    @Query("select p from Pelis p where p.nombre like %?1%")
    List<Pelis> BuscarPorString(String consulta);

}
