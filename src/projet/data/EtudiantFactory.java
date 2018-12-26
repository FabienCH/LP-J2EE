package projet.data;

import projet.data.Etudiant;
import projet.data.EtudiantDAO;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EtudiantFactory {

	public static final EtudiantDAO etudiantDAO = new EtudiantDAO();

	public EtudiantFactory() { }


	// Donne l'ensemble des etudiants
	public static List<Etudiant> getEtudiants() {
		return etudiantDAO.getAll();
	}

	// Donne l'ensemble des etudiants
	public static Etudiant getEtudiantById(int id) {
		return EtudiantDAO.retrieveById(id);
	}

	// Donne le nombre d'absences d'un etudiant à l'aide de son id
	public static void addAbsencesByEtudiantId(int id) {
		EtudiantDAO.retrieveById(id).addAbsences();
	}

	// Donne les notes d'un etudiant à l'aide de son id
	public static Map<String, Integer> getNotesByEtudiantId(int id) {
		Etudiant etudiant = getEtudiantById(id);
		return etudiant.getNotes();
	}
}

