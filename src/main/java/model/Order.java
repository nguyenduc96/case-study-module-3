package model;

import java.util.Date;

public class Order {
    private int id;
    private int user_id;
    private String status;
    private boolean isActive;
    private String note;
    private Date created_at;

    public Order() {
    }

    public Order(int user_id, String status, boolean isActive, Date created_at) {
        this.user_id = user_id;
        this.status = status;
        this.isActive = isActive;
        this.created_at = created_at;
    }

    public Order(int id, int user_id, String status, boolean isActive, Date created_at) {
        this.id = id;
        this.user_id = user_id;
        this.status = status;
        this.isActive = isActive;
        this.created_at = created_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }
}
