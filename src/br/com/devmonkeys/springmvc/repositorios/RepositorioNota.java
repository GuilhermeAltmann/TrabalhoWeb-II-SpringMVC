package br.com.devmonkeys.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.devmonkeys.springmvc.dominios.Nota;

public interface RepositorioNota extends JpaRepository<Nota, Long>{

}
