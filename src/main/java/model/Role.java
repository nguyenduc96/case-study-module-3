package model;

import java.time.LocalDate;

public class Role {
    private int id;
    private String name;
    private boolean isActive;
    private String note;

    public Role() {
    }

    public Role(int id, String name, boolean isActive) {
        this.id = id;
        this.name = name;
        this.isActive = isActive;
    }

    public Role(int id, String name, boolean isActive, String note) {
        this.id = id;
        this.name = name;
        this.isActive = isActive;
        this.note = note;
    }

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

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
