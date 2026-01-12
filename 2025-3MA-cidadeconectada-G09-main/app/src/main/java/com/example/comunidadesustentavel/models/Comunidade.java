package com.example.comunidadesustentavel.models;

public class Comunidade {
    private int id;
    private String nome;
    private double latitude;
    private double longitude;
    private String regiao;
    private String data;

    // Construtor
    public Comunidade(int id, String nome, double latitude, double longitude, String regiao, String data) {
        this.id = id;
        this.nome = nome;
        this.latitude = latitude;
        this.longitude = longitude;
        this.regiao = regiao;
        this.data = data;
    }

    // Getters
    public int getId() { return id; }
    public String getNome() { return nome; }
    public double getLatitude() { return latitude; }
    public double getLongitude() { return longitude; }
    public String getRegiao() { return regiao; }
    public String getData() { return data; }
}