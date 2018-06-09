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

import br.com.devmonkeys.springmvc.dominios.Aluno;
import br.com.devmonkeys.springmvc.repositorios.RepositorioAluno;

@Controller
@RequestMapping("/alunos")
public class AlunosController {

	@Autowired
	private RepositorioAluno repositorio;

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(Model model) {

		List<Aluno> alunos = repositorio.findAll();
		model.addAttribute("alunos", alunos);

		return "aluno.listar.tiles";
	}

	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adicionar(Model model) {

		model.addAttribute("aluno", new Aluno());
		return "aluno.adicionar.tiles";
	}

	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("aluno") @Valid Aluno aluno, BindingResult result, Model model) {

		if (result.hasErrors()) {

			return "aluno.adicionar.tiles";
		}

		repositorio.save(aluno);
		return "redirect:/alunos/listar";
	}
	
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public String alterar(@PathVariable("id") Long id, Model model) {
		
		Aluno alunoAlt = repositorio.findOne(id);
		model.addAttribute("aluno", alunoAlt);
		
		return "aluno.alterar.tiles";
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public String alterar(@ModelAttribute("aluno") @Valid Aluno aluno, BindingResult result) {
		
		if(result.hasErrors()) {
			
			return "aluno.alterar.tiles";
		}
		
		repositorio.save(aluno);
		
		return "redirect:/alunos/listar";
	}
	
	@RequestMapping(value = "/excluir/{id}", method = RequestMethod.GET)
	public String excluir(@PathVariable("id") Long id) {
		
		
		repositorio.delete(id);
		
		return "redirect:/alunos/listar";
	}

}
