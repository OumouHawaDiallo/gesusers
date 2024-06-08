package dao;

import java.util.ArrayList;
import beans.Utilisateur;

public class UtilisateurDao {
    private static int lastId = 1;
    private static final ArrayList<Utilisateur> listeUtilisateur = new ArrayList<Utilisateur>();

    static {
        listeUtilisateur.add(new Utilisateur(1, "DIALLO", "Binta", "Binoush", "passer"));
        listeUtilisateur.add(new Utilisateur(2, "FAYE", "Fatima", "Bintou", "passer123"));
        listeUtilisateur.add(new Utilisateur(3, "SARR", "Mouhamed", "Moustapha", "passer1234"));
        listeUtilisateur.add(new Utilisateur(4, "BARRY", "Fatoumata","Mami", "passer12345"));
        lastId = listeUtilisateur.size() + 1;
    }

    public static final ArrayList<Utilisateur> lister() {
        return listeUtilisateur;
    }

    public static final boolean ajouter(Utilisateur utilisateur) {
        utilisateur.setId(lastId++);
        listeUtilisateur.add(utilisateur);
        return true;
    }

    public static Utilisateur get(int id) {
        for (Utilisateur utilisateur : listeUtilisateur) {
            if (utilisateur.getId() == id) {
                return utilisateur;
            }
        }
        return null;
    }

    public static boolean modifier(Utilisateur user) {
        for (Utilisateur utilisateur : listeUtilisateur) {
            if (utilisateur.getId() == user.getId()) {
            	utilisateur.setNom(user.getNom());
            	utilisateur.setPrenom(user.getPrenom());
            	utilisateur.setLogin(user.getLogin());
            	utilisateur.setPassword(user.getPassword());
            	
                return true;
            }
        }
        return false;
    }

	public static boolean supprimer(int id) {
		
		 for (Utilisateur utilisateur : listeUtilisateur) {
	            if (utilisateur.getId() == id) 
	            {
	               listeUtilisateur.remove(utilisateur);
	               
	                return true;
	            }
	        }
	        return false;
		
	}
}
