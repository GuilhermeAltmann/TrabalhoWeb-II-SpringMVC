package br.com.devmonkeys.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.devmonkeys.springmvc.dominios.Musica;

public interface RepositorioMusica extends JpaRepository<Musica, Long>{

}
