
package com.emergentes.modelo;

public class Tarea {

    private int id;
    private String tarea;
    public Tarea() {
        this.id = 0;
        this.tarea = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }
    
}
