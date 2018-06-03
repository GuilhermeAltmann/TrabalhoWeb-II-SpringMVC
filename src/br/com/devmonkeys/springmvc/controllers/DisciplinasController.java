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

import br.com.devmonkeys.springmvc.dominios.Disciplina;
import br.com.devmonkeys.springmvc.repositorios.RepositorioDisciplina;
import br.com.devmonkeys.springmvc.repositorios.RepositorioProfessor;

@Controller
@RequestMapping("/disciplinas")
public class DisciplinasController {

	@Autowired
	private RepositorioProfessor repoProfe;
	
	@Autowired
	private RepositorioDisciplina repoDisc;
	
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(Model model) {
		
		List<Disciplina> disciplinas = repoDisc.findAll();
		
		model.addAttribute("disciplinas", disciplinas);
		
		return "disciplina.listar.tiles";
	}
	
	@RequestMapping(value = "/adicionar",  method = RequestMethod.GET)
	public String adicionar(Model model) {
		
		model.addAttribute("disciplina", new Disciplina());
		model.addAttribute("professores", repoProfe.findAll());
		return "disciplina.adicionar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("disciplina") @Valid Disciplina disciplina, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("professores", repoProfe.findAll());
			return "disciplina.adicionar.tiles";
		}
		
		repoDisc.save(disciplina);
		
		return "redirect:/disciplinas/listar";
	}
	
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public String alterar(@PathVariable("id") Long id, Model model) {
		
		Disciplina disc = repoDisc.findOne(id);
		model.addAttribute("disciplina", disc);
		model.addAttribute("professores", repoProfe.findAll());
		
		return "disciplina.alterar.tiles";
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public String alterar(@ModelAttribute("disciplina") @Valid Disciplina disciplina, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("professores", repoProfe.findAll());
			return "disciplina.alterar.tiles";
		}
		
		repoDisc.save(disciplina);
		return "redirect:/disciplinas/listar";
	}
	
	@RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
	public String excluir(@PathVariable("id") Long id) {
		
		Disciplina disciplina = repoDisc.findOne(id);
		disciplina.setProfessor(null);
		
		repoDisc.delete(disciplina);
		return "redirect:/disciplinas/listar";
	}
}
