package fr.formation.m2;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.m2.spring.banque.bdd.dao.exec.Find;
import fr.formation.m2.spring.banque.bdd.entities.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/admin/homeAdmin**", method = RequestMethod.GET)
	public String adminPage(Model model) {
		model.addAttribute("message", "Page d'administration");
		
		return "homeAdmin";
	}
	
	@RequestMapping(value = "/admin/listeClient")
	public String treatmentFindClient(Model model)
	{
		List<User> listOfUsers = new ArrayList<User>();
			
		listOfUsers = Find.findAllUsers();		
		
		model.addAttribute("listOfUsers", listOfUsers);
		
		return "resultListClients";
	}

	
	
}
