package br.com.devmonkeys.springmvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import br.com.devmonkeys.springmvc.dominios.Nota;
import br.com.devmonkeys.springmvc.repositorios.RepositorioAluno;
import br.com.devmonkeys.springmvc.repositorios.RepositorioDisciplina;
import br.com.devmonkeys.springmvc.repositorios.RepositorioNota;

@Controller
@RequestMapping("/notas")
public class NotasController {

	@Autowired
	private RepositorioDisciplina repoDisc;
	
	@Autowired
	private RepositorioAluno repoAlu;
	
	@Autowired
	private RepositorioNota repoNota;
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	private String listar(Model model) {
		
		List<Nota> notas = repoNota.findAll();
		
		model.addAttribute("notas", notas);
		
		return "nota.listar.tiles";
	}
	
	@RequestMapping(value = "/adicionar",  method = RequestMethod.GET)
	public String adicionar(Model model) {
		
		model.addAttribute("nota", new Nota());
		model.addAttribute("alunos", repoAlu.findAll());
		model.addAttribute("disciplinas", repoDisc.findAll());
		
		return "nota.adicionar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("nota") @Valid Nota nota, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("alunos", repoAlu.findAll());
			model.addAttribute("disciplinas", repoDisc.findAll());
			return "nota.adicionar.tiles";
		}
		
		Double media = (nota.getNota1() + nota.getNota2() + nota.getNota3()) / 3;
		
		nota.setMedia(media);
		repoNota.save(nota);
		
		return "redirect:/notas/listar";
	}
	
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public String alterar(@PathVariable("id") Long id, Model model) {
		
		Nota nota = repoNota.findOne(id);
	    model.addAttribute("musica", nota);
	    model.addAttribute("alunos", repoAlu.findAll());
		model.addAttribute("disciplinas", repoDisc.findAll());
		
		return "nota.alterar.tiles";
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public String alterar(@ModelAttribute("nota") @Valid Nota nota, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("alunos", repoAlu.findAll());
			model.addAttribute("disciplinas", repoDisc.findAll());
			return "nota.alterar.tiles";
		}
		
		Double media = (nota.getNota1() + nota.getNota2() + nota.getNota3()) / 3;
		
		nota.setMedia(media);
		repoNota.save(nota);
		
		return "redirect:/notas/listar";
	}
	
	@RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
	public String excluir(@PathVariable("id") Long id) {
		
		Nota nota = repoNota.findOne(id);
		nota.setDisciplina(null);
		nota.setAluno(null);
		
		repoNota.delete(nota);
		return "redirect:/notas/listar";
	}
}
