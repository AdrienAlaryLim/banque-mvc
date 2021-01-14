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
import fr.formation.m2.spring.banque.bdd.entities.Client;
import fr.formation.m2.spring.banque.bdd.entities.Compte;
import fr.formation.m2.spring.banque.bdd.entities.User;
import fr.formation.m2.spring.banque.metier.exec.Treatment;

@Controller
public class FormController {
	
	private Client sessionClient;
	private User sessionUser;
	
	//Controleur qui affiche le formulaire vide
	@RequestMapping(value="/insertClient")
	public String ajoutClient() {
		return "insertClient"; //le formulaire à appeler
	}

	@RequestMapping(value="/insertClient", method=RequestMethod.POST)
	public String ClientAjoute(Model model, 
		@RequestParam("nom") String nom,
		@RequestParam("prenom") String prenom,
		@RequestParam("codePostal") String codePostal,
		@RequestParam("ville") String ville)
		{
			Client c = new Client();
			c.setNom(nom);
			c.setPrenom(prenom);
			c.setCodePostal(codePostal);
			c.setVille(ville);
			
			Create.createClient(c);
			
			System.out.println("Client = "+c);
			model.addAttribute("client", c);
		
		return "result";
	}
	
	@RequestMapping(value="/ajoutUser")
	public String ajouterUser(){
		return "addUser";
	}
	
	@RequestMapping(value = "/insertClient/default")
	public String insertClientParDefaut(Model model) {
		Client client = new Client();
		client.setNom("Kardashian");
		client.setPrenom("Kim");
		client.setCodePostal("31000");
		client.setVille("Toulouse");
		client.setModDePasse("default");
		
		Create.createClient(client);
		
		model.addAttribute("client", client);
		
		return "result";
	}
	
	@RequestMapping(value = "/findClient")
	public String findClient(){
		return "findClient";
	}
	
	@RequestMapping(value="/findClient", method=RequestMethod.POST)
	public String treatmentFindClient(Model model, @RequestParam("id") String id)
	{
		Client client = new Client();
		
		client = Find.findClient(id);
		
		model.addAttribute("client", client);
		
		return "result";
	}
	
	@RequestMapping(value = "/findAllClients")
	public String treatmentFindClient(Model model)
	{
		List<Client> listOfClients = new ArrayList<Client>();
			
		listOfClients = Find.findAllClients();		
		
		model.addAttribute("listOfClients", listOfClients);
		
		return "resultListClients";
	}
	
	@RequestMapping(value = "/findCompte")
	public String findCompte(){
		return "findCompte";
	}
	
	@RequestMapping(value="/findCompte", method=RequestMethod.POST)
	public String treatmentFindCompte(Model model, @RequestParam("id") String id)
	{
		Compte compte = new Compte();
		
		compte = Find.findCompte(id);
		
		model.addAttribute("compte", compte);
		
		return "resultCompte";
	}
	
	@RequestMapping(value = "/findComptesClient")
	public String findComptesClient(){
		return "findComptesClient";
	}
	
	@RequestMapping(value = "/findComptesClient", method=RequestMethod.POST)
	public String treatmentFindComptesClient(Model model, @RequestParam("id") String id)
	{
		List<Compte> listOfComptesClient = new ArrayList<Compte>();
		Client client = Find.findClient(id);
			
		listOfComptesClient = Find.findEmbaddedComptes(client);		
		
		model.addAttribute("client", client);
		model.addAttribute("listOfComptesClient", listOfComptesClient);
		
		return "resultListComptesClient";
	}
	
	@RequestMapping(value = "/login")
	public String formLogin()
	{		
		return "formLogin";
	}
	
	/*@RequestMapping(value = "/login", method=RequestMethod.POST)
	public String formLogin(Model model, @RequestParam("idClient") String idClient, @RequestParam("password") String password)
	{		
		Client client = new Client();
		
		client = Treatment.connecter(idClient, password);
		
		model.addAttribute("client", client);
		
		if(client.getNom() == null)
		{
			return "erreurNonConnecte";
		}
		
		sessionClient = client;
		
		return "homeClient";
	}*/
	
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
	
	@RequestMapping(value = "/client/comptes")
	public String findSelfComptesClient(Model model)
	{		
		List<Compte> listOfComptesClient = new ArrayList<Compte>();
		//Client client = Find.findClient(id);
			
		listOfComptesClient = Find.findEmbaddedComptes(sessionClient);
		
		//model.addAttribute("client", client);
		model.addAttribute("listOfComptesClient", listOfComptesClient);
		
		return "resultListComptesClient";
	}
	
	@RequestMapping(value = "/client/virements")
	public String formVirement()
	{		
		return "formVirements";
	}
	
	@RequestMapping(value = "/client/virements", method=RequestMethod.POST)
	public String treatmentVirement(Model model, @RequestParam("numeroDebiteur") String debiteur, 
			@RequestParam("numeroCrediteur") String crediteur, @RequestParam("montant") String montant)
	{
		List<Compte> listOfComptesClient = new ArrayList<Compte>();
			
		Treatment.virer(new Long(debiteur), new Long(crediteur), new Double(montant));
		
		listOfComptesClient = Find.findEmbaddedComptes(sessionClient);
		
		model.addAttribute("client", sessionClient);
		model.addAttribute("listOfComptesClient", listOfComptesClient);
		
		return "resultListComptesClient";
	}
}
