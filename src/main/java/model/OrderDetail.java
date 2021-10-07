package model;

public class OrderDetail {
    private int id;
    private int product_id;
    private Product product;
    private int order_id;
    private int quantity;
    private boolean isActive;
    private double beforeDiscountMoney;
    private double afterDiscountMoney;

    public OrderDetail() {
    }

    public OrderDetail(int id, int product_id, int order_id, int quantity, boolean isActive) {
        this.id = id;
        this.product_id = product_id;
        this.order_id = order_id;
        this.quantity = quantity;
        this.isActive = isActive;
    }

    public OrderDetail(int id, int product_id, int order_id, int quantity, boolean isActive, double beforeDiscountMoney, double afterDiscountMoney) {
        this.id = id;
        this.product_id = product_id;
        this.order_id = order_id;
        this.quantity = quantity;
        this.isActive = isActive;
        this.beforeDiscountMoney = beforeDiscountMoney;
        this.afterDiscountMoney = afterDiscountMoney;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public double getBeforeDiscountMoney() {
        return beforeDiscountMoney;
    }

    public void setBeforeDiscountMoney(double beforeDiscountMoney) {
        this.beforeDiscountMoney = beforeDiscountMoney;
    }

    public double getAfterDiscountMoney() {
        return afterDiscountMoney;
    }

    public void setAfterDiscountMoney(double afterDiscountMoney) {
        this.afterDiscountMoney = afterDiscountMoney;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
