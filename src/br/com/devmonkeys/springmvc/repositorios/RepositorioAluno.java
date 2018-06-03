package br.com.devmonkeys.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.devmonkeys.springmvc.dominios.Aluno;

public interface RepositorioAluno extends JpaRepository<Aluno, Long>{

}
