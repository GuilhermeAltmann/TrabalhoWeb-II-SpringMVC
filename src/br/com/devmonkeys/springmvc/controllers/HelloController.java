package br.com.devmonkeys.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloController {

	@RequestMapping("/message")
	public String message() {
		
		return "hello";
	}
	
	@RequestMapping("/mensagemdoservidor")
	public String mensagemDoServidor(Model model) {
		
		model.addAttribute("mensagem", "Olá, Hello");
		return "mensagemDoServidor";
	}
	
	@RequestMapping("/mensagemdoservidor2")
	public ModelAndView mensagemDoServidorV2() {
		
		return new ModelAndView("mensagemDoServidor", "mensagem", "Olá, Hellooooo");
	}
	
	@RequestMapping("/recebermensagem/{mensagem}")
	public String receberMensagem(Model model, @PathVariable("mensagem") String mensagem) {
		
		model.addAttribute("mensagem", mensagem);
		return "mensagemDoServidor";
	}
	
	@RequestMapping("/recebermensagem2")
	public String receberMensagem2(Model model, @RequestParam(value = "mensagem") String msg) 
	{
		model.addAttribute("mensagem", msg);
		return "mensagemDoServidor";
	}
}
