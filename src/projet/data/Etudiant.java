package projet.data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Entity
public class Etudiant implements Serializable {

    @Id
    @GeneratedValue
	private Integer id;

    @Column(nullable=false)
	private String prenom;

    @Column(nullable=false)
	private String nom;

	private Integer absences;

	@ElementCollection(targetClass=Integer.class)
	@MapKeyClass(String.class)
    @MapKeyColumn(name="module")
    private Map<String, Integer> notes = new HashMap<String, Integer>();

	public Etudiant() {
		super();
	}

    public Etudiant(String prenom, String nom) {
		super();
		this.prenom = prenom;
		this.nom = nom;
		this.setAbsences(0);
		this.notes = new HashMap<String, Integer>();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	public Integer getAbsences() {
		return absences;
	}

	public void addAbsences() {
		this.absences ++;
	}

	public void setAbsences(int absences) {
		this.absences = absences;
	}

	public Map<String, Integer> getNotes() {
		return notes;
	}

	public void addNotes(String module, Integer note) {
		this.notes.put(module, note);
	}

	public String getMoyenne() {
		double moyenne = 0.0;
		for (Map.Entry<String, Integer> note : notes.entrySet()) {
			moyenne += note.getValue();
		}
		moyenne = moyenne/notes.size();
		return String.format("%.2f", moyenne);
	}


}
