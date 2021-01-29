package fr.formation.m2;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.m2.spring.banque.bdd.dao.exec.Create;
import fr.formation.m2.spring.banque.bdd.dao.exec.Find;
import fr.formation.m2.spring.banque.bdd.dao.exec.Update;
import fr.formation.m2.spring.banque.bdd.entities.Compte;
import fr.formation.m2.spring.banque.bdd.entities.User;
import fr.formation.m2.spring.banque.metier.exec.Treatment;

@Controller
public class FormController {
	
	//private Client sessionClient;
	private User sessionUser;
	
	//Controleur qui affiche le formulaire vide
	@RequestMapping(value="/admin/createClient")
	public String ajoutClient() {
		return "insertClient"; //le formulaire à appeler
	}

	@RequestMapping(value="/admin/createClient", method=RequestMethod.POST)
	public String ClientAjoute(Model model, 
		@RequestParam("nom") String nom,
		@RequestParam("prenom") String prenom,
		@RequestParam("username") String username,
		@RequestParam("password") String password,
		@RequestParam("codePostal") String codePostal,
		@RequestParam("ville") String ville)
		{
			User c = new User();
			c.setNom(nom);
			c.setPrenom(prenom);
			c.setUsername(username);
			c.setPassword(password);
			c.setCodePostal(codePostal);
			c.setVille(ville);
			
			Create.createUser(c);
			
			System.out.println("User = "+c);
			model.addAttribute("user", c);
		
		return "result";
	}
	
	@RequestMapping(value = "/admin/createClient/default")
	public String insertClientParDefaut(Model model) {
		User user = new User();
		user.setNom("Kardashian");
		user.setPrenom("Kim");
		user.setCodePostal("31000");
		user.setVille("Toulouse");
		user.setPassword("default");
		
		Create.createUser(user);
		
		model.addAttribute("user", user);
		
		return "result";
	}
	
	@RequestMapping(value = "/admin/findClient")
	public String findClient(){
		return "findClient";
	}
	
	@RequestMapping(value="/admin/findClient", method=RequestMethod.POST)
	public String treatmentFindClient(Model model, @RequestParam("id") String id)
	{
		User user = new User();
		
		user = Find.findUserById(id);
		
		model.addAttribute("user", user);
		
		return "result";
	}
	
	//Controleur qui affiche le formulaire vide
	@RequestMapping(value="/admin/createCompte")
	public String ajoutCompte() {
		return "insertCompte"; //le formulaire à appeler
	}

	@RequestMapping(value="/admin/createCompte", method=RequestMethod.POST)
	public String treatmentAjoutCompte(Model model, 
		@RequestParam("idUser") String idUser,
		@RequestParam("numero") String numero,
		@RequestParam("solde") String solde)
		{
		
			User user = new User();
			
			try {
				user = Find.findUserById(idUser);
				model.addAttribute("user", user);
			
				Compte c = new Compte();
				c.setUser(user);
				c.setNumero(new Long(numero));
				c.setSolde(new Double(solde));
				
				Create.createCompte(c);
				
				System.out.println("Compte = "+c);
				model.addAttribute("compte", c);
				
				return "resultCompte";
			}catch(Exception e)
			{
				
				return "erreur";
			}
	}

	@RequestMapping(value = "/admin/findCompte")
	public String findCompte(){
		return "findCompte";
	}
	
	@RequestMapping(value="/admin/findCompte", method=RequestMethod.POST)
	public String treatmentFindCompte(Model model, @RequestParam("id") String id)
	{
		Compte compte = new Compte();
		
		compte = Find.findCompte(id);
		
		model.addAttribute("compte", compte);
		
		return "resultCompte";
	}
	
	@RequestMapping(value = "/admin/findComptesClient")
	public String findComptesClient(){
		return "findComptesClient";
	}
	
	@RequestMapping(value = "/admin/findComptesClient", method=RequestMethod.POST)
	public String treatmentFindComptesClient(Model model, @RequestParam("id") String id)
	{
		List<Compte> listOfComptesUser = new ArrayList<Compte>();
		User user = Find.findUserById(id);
			
		listOfComptesUser = Find.findEmbaddedComptes(user);		
		
		model.addAttribute("user", user);
		model.addAttribute("listOfComptesUser", listOfComptesUser);
		
		return "resultListComptesClient";
	}
	
	@RequestMapping(value = "/admin/editClientList")
	public String findAllClientsEdit(Model model)
	{
		List<User> listOfUsers = new ArrayList<User>();
			
		listOfUsers = Find.findAllUsers();		
		
		model.addAttribute("listOfUsers", listOfUsers);
		
		return "resultListClientsEdit";
	}
	
	@RequestMapping(value = "/admin/editClient", method=RequestMethod.GET)
	public String findClientEdit(Model model, @RequestParam("idUser") String id)
	{
		User user = new User();
		
		user = Find.findUserById(id);
		
		model.addAttribute("user", user);
		
		return "editClient";
	}
	
	@RequestMapping(value = "/admin/editClient", method=RequestMethod.POST)
	public String editClient(Model model, 
			@RequestParam("idUser") String id,
			@RequestParam("nom") String nom,
			@RequestParam("prenom") String prenom,
			@RequestParam("username") String username,
			@RequestParam("codePostal") String codePostal,
			@RequestParam("ville") String ville)
	{
		User updtClient = new User();
		updtClient.setId(new Long(id));
		updtClient.setNom(nom);
		updtClient.setPrenom(prenom);
		updtClient.setUsername(username);
		updtClient.setCodePostal(codePostal);
		updtClient.setVille(ville);
	
		Update.updateUser(updtClient);
		
		return "homeAdmin";
	}
	
	@RequestMapping(value = "/login")
	public String formLogin()
	{		
		return "formLogin";
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public String formLogin(Model model, @RequestParam("username") String username, @RequestParam("password") String password)
	{		
		User user = new User();
		
		user = Treatment.connecterUser(username, password);
		
		model.addAttribute("user", user);
		
		if(user.getUsername() == null)
		{
			return "erreurNonConnecte";
		}
		
		sessionUser = user;
		
		System.out.println("sessionUser");
		System.out.println(user.getUsername());
		
		return "homeClient";
	}
	
	@RequestMapping(value = "/user/listeComptes")
	public String findSelfComptesClient(Model model)
	{		
		List<Compte> listOfComptesUser = new ArrayList<Compte>();
			
		listOfComptesUser = Find.findEmbaddedComptes(sessionUser);
		
		model.addAttribute("listOfComptesUser", listOfComptesUser);
		
		return "resultListComptesClient";
	}
	
	@RequestMapping(value = "/user/virement")
	public String formVirement()
	{		
		return "formVirements";
	}
	
	@RequestMapping(value = "/user/virement", method=RequestMethod.POST)
	public String treatmentVirement(Model model, @RequestParam("numeroDebiteur") String numDebiteur, 
			@RequestParam("numeroCrediteur") String numCrediteur, @RequestParam("montant") String montant)
	{
		List<Compte> listOfComptesUser = new ArrayList<Compte>();
		
		Compte saveCompte = Find.findCompte(numDebiteur);
		
		try {
			Treatment.virer(numDebiteur, numCrediteur, montant);
			
		}catch(Exception e) {
			return "erreur";
		}
		
		Compte updatedCompte = Find.findCompte(numDebiteur);
		if(saveCompte.getSolde() == updatedCompte.getSolde())
		{
			return "erreur";
		}
		
		listOfComptesUser.add(updatedCompte);
		listOfComptesUser.add(Find.findCompte(numCrediteur));
		
		model.addAttribute("listOfComptesUser", listOfComptesUser);
		
		return "resultListComptesClient";
	}
}
