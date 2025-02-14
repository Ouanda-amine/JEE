package org.example.demo2.bean;

public class Employee {
    private int id;
    private String name;
    private String prenom;
    private String email;
    private String poste;
    private String salaire;

    public Employee( String name, String prenom, String email, String poste, String salaire) {
        this.name = name;
        this.prenom = prenom;
        this.email = email;
        this.poste = poste;
        this.salaire = salaire;
    }
    public Employee() {}


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public String getSalaire() {
        return salaire;
    }

    public void setSalaire(String salaire) {
        this.salaire = salaire;
    }
}
