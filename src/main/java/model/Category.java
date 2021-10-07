package model;

public class Category {
    private int id;
    private String name;
    private String image;
    private boolean isActive;
    private String note;

    public Category() {
    }

    public Category(String name, String image, boolean isActive) {
        this.name = name;
        this.image = image;
        this.isActive = isActive;
    }

    public Category(int id, String name, String image, boolean isActive) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.isActive = isActive;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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
