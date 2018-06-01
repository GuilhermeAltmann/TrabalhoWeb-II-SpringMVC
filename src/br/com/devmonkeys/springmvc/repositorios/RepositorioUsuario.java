package br.com.devmonkeys.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.devmonkeys.springmvc.dominios.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long>{

	Usuario findByUsername(String username);
}
