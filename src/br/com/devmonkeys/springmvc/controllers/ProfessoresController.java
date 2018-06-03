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

import br.com.devmonkeys.springmvc.dominios.Professor;
import br.com.devmonkeys.springmvc.repositorios.RepositorioProfessor;

@Controller
@RequestMapping("/professores")
public class ProfessoresController {
	
	@Autowired
	private RepositorioProfessor repositorio;
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(Model model) {
		
		List<Professor> professores = repositorio.findAll();
		model.addAttribute("professores", professores);
		
		return "professor.listar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adicionar(Model model) {
		
		model.addAttribute("professor", new Professor());
		return "professor.adicionar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("professor") @Valid Professor professor, BindingResult result, Model model) {
		
		if (result.hasErrors()) {

			return "professor.adicionar.tiles";
		}

		repositorio.save(professor);
		return "redirect:/professores/listar";
	}
	
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public String alterar(@PathVariable("id") Long id, Model model) {
		
		Professor prof = repositorio.findOne(id);
		model.addAttribute("professor", prof);
		
		return "professor.alterar.tiles";
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public String alterar(@ModelAttribute("professor") @Valid Professor professor, BindingResult result) {
		
		if(result.hasErrors()) {
			
			return "professor.alterar.tiles";
		}
		
		repositorio.save(professor);
		
		return "redirect:/professores/listar";
	}
	
	@RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
	public String excluir(@PathVariable("id") Long id) {
		
		repositorio.delete(id);
		
		return "redirect:/professores/listar";
	}
}
