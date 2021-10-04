package model;

import java.util.Date;

public class Product {
    private int id;
    private String name;
    private String code;
    private String image;
    private int quantity;
    private double price;
    private double discount;
    private double discount_pct;
    private boolean isActive;
    private int category_id;
    private Category category;
    private int brand_id;
    private Brand brand;
    private String description;
    private Date created_at;
    private Date updated_at;
    private Date deleted_at;
    private String note;

    public Product() {
    }

    public Product(int id, String name, String code, int quantity, double price, boolean isActive, int category_id, int brand_id, String description, Date created_at) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.quantity = quantity;
        this.price = price;
        this.isActive = isActive;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.description = description;
        this.created_at = created_at;
    }

    public Product(String name, String code, String image, int quantity, double price, double discount, double discount_pct, boolean isActive, int category_id, int brand_id, String description, Date created_at) {
        this.name = name;
        this.code = code;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.discount = discount;
        this.discount_pct = discount_pct;
        this.isActive = isActive;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.description = description;
        this.created_at = created_at;
    }

    public Product(int id, String name, String code, String image, int quantity, double price, double discount, double discount_pct, boolean isActive, int category_id, int brand_id, String description, Date created_at) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.discount = discount;
        this.discount_pct = discount_pct;
        this.isActive = isActive;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.description = description;
        this.created_at = created_at;
    }

    public Product(int id, String name, String code, String image, int quantity, double price, double discount, double discount_pct, boolean isActive, int category_id, int brand_id, String description, Date created_at, Date updated_at) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.discount = discount;
        this.discount_pct = discount_pct;
        this.isActive = isActive;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.description = description;
        this.created_at = created_at;
        this.updated_at = updated_at;
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getDiscount_pct() {
        return discount_pct;
    }

    public void setDiscount_pct(double discount_pct) {
        this.discount_pct = discount_pct;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public Date getDeleted_at() {
        return deleted_at;
    }

    public void setDeleted_at(Date deleted_at) {
        this.deleted_at = deleted_at;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
