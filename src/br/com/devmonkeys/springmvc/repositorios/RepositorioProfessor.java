package br.com.devmonkeys.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.devmonkeys.springmvc.dominios.Professor;

public interface RepositorioProfessor extends JpaRepository<Professor, Long>{

}
