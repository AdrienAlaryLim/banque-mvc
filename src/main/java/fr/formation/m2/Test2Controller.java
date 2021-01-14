package fr.formation.m2;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * Handles requests for the application home page
 */
@Controller
public class Test2Controller {
	private static final Logger logger = LoggerFactory.getLogger(Test2Controller.class);
	
	/**
	 * Simply selects the home to render by returning its name
	 */
	@RequestMapping(value = "/test2")
	public ModelAndView newHome(HttpServletRequest req, HttpServletResponse resp) {
		logger.info("Welcome at Test2!");
		
		Map<String, Object> model = new HashMap<String, Object>();
		
		model.put("un", "janvier");
		model.put("deux", "février");
		model.put("trois", "mars");
		
		return new ModelAndView("test2", "data", model);
	}
	
	@RequestMapping(value = "/test2a")
	public String noModel(Model model) {
		logger.info("Welcome at Test2!");
		
		//Map<String, Object> model = new HashMap<String, Object>();
		
		model.addAttribute("un", "lundi");
		model.addAttribute("deux", "mardi");
		model.addAttribute("trois", "mercredi");
		
		return "test2a";
	}
}
