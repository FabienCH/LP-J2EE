package projet;

import projet.data.GestionFactory;
import projet.data.Etudiant;
import projet.data.EtudiantDAO;
import projet.data.Groupe;
import projet.data.GroupeDAO;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class Controller extends HttpServlet{

    private String urlTemplate;
    private String urlIndex;
    private String urlDetailsEtudiant;
    private String urlNotes;
    private String urlDetailsNotes;

    // INIT
    public void init() throws ServletException {
        urlTemplate = getInitParameter("urlTemplate");
        urlIndex = getInitParameter("urlIndex");
        urlDetailsEtudiant = getInitParameter("urlDetailsEtudiant");
        urlNotes = getInitParameter("urlNotes");
        urlDetailsNotes = getInitParameter("urlDetailsNotes");
        GestionFactory.open();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        // On récupère la méthode d'envoi de la requête
        String methode = request.getMethod().toLowerCase();

        // On récupère l'action à exécuter
        String action = request.getPathInfo();
        if (action == null) {
            action = "/index";
        }
        // Exécution action
        if (methode.equals("get") && action.equals("/detailsEtudiant")) {
            doDetailsEtudiant(request, response);
        }
        else if(methode.equals("get") && action.equals("/detailsNotes")){
            // Autres cas
            doDetailsNotes(request, response);
        }
        else if(action.equals("/notes")){
            // Autres cas
            doNotes(request, response);
        }
        else if(action.equals("/index")){
            // Autres cas
            doIndex(request, response);
        }
        loadJSP(urlTemplate, request, response);
    }

    private void doIndex(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        List<Etudiant> etudiants = EtudiantDAO.getAll();
        request.setAttribute("etudiants", etudiants);
        request.setAttribute("content", urlIndex);
    }

    private void doDetailsEtudiant(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        int id = Integer.parseInt(request.getParameter("id"));
        Etudiant etudiant = EtudiantDAO.retrieveById(id);

        request.setAttribute("etudiant", etudiant);
        request.setAttribute("content", urlDetailsEtudiant);
    }

    private void doNotes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        List<Etudiant> etudiants = EtudiantDAO.getAll();
        request.setAttribute("etudiants", etudiants);
        request.setAttribute("content", urlNotes);
    }

    private void doDetailsNotes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        Etudiant etudiant = EtudiantDAO.retrieveById(id);
        System.out.println(etudiant);
        System.out.println(etudiant.getNotes());
        request.setAttribute("etudiant", etudiant);
        request.setAttribute("content", urlDetailsNotes);
    }

    /**
     * Charge la JSP indiquée en paramètre
     *
     * @param url
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void loadJSP(String url, HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        // L'interface RequestDispatcher permet de transférer le contrôle à une
        // autre servlet
        // Deux méthodes possibles :
        // - forward() : donne le contrôle à une autre servlet. Annule le flux
        // de sortie de la servlet courante
        // - include() : inclus dynamiquement une autre servlet
        // + le contrôle est donné à une autre servlet puis revient à la servlet
        // courante (sorte d'appel de fonction).
        // + Le flux de sortie n'est pas supprimé et les deux se cumulent

        ServletContext sc = getServletContext();
        RequestDispatcher rd = sc.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
