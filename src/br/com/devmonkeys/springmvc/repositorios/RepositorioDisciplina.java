package br.com.devmonkeys.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.devmonkeys.springmvc.dominios.Disciplina;

public interface RepositorioDisciplina extends JpaRepository<Disciplina, Long>{

}
