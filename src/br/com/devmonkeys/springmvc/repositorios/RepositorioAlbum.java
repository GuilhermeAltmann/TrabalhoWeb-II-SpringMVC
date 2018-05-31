package br.com.devmonkeys.springmvc.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import br.com.devmonkeys.springmvc.dominios.Album;

public interface RepositorioAlbum extends JpaRepository<Album, Long>{

	Album findByNome(String nome);
}
