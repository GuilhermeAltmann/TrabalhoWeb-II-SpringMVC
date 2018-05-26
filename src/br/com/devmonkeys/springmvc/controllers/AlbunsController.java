package br.com.devmonkeys.springmvc.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.devmonkeys.springmvc.dominios.Album;

@Controller
@RequestMapping("/albuns")
public class AlbunsController {

	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adcicionar(Model model) {
		
		model.addAttribute("album", new Album());
		return "albuns/adicionar";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("album") @Valid Album novoAlbum, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			
			return "albuns/adicionar";
		}
		model.addAttribute("album", novoAlbum); 
		return "albuns/exibir";
	}
}
