package fr.formation.m2;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Test3Controller {
	private static final Logger logger = LoggerFactory.getLogger(Test3Controller.class);
	
	/**
	 * Simply selects the home to render by returning its name
	 */
	@RequestMapping(value = "/test3")
	public String newHome(@RequestParam String param, Model model) throws Exception {
		if(param.equals(null)) param ="erreur";
		logger.info("Welcome at Test3! : {}", param);
		
		model.addAttribute("chaine", param);
		
		return "test3";
	}
	
	@RequestMapping(value = "/test3a")
	public String option(
			@RequestParam (value="param", required=false) String param, Model model) throws Exception {
		if(param == null) param ="param absent";
		logger.info("Welcome at Test3a! : {}", param);
		
		model.addAttribute("chaine", param);
		
		return "test3a";
	}
	
	@RequestMapping(value = "/test3b")
	public String option(
			@RequestParam (value="param", required=false) Integer param, Model model) throws Exception {
		
		logger.info("Welcome at Test3b! : {}", param);
		if(param == null) param = 999;
		
		model.addAttribute("chaine", param + 1000);
		
		return "test3b";
	}
}
