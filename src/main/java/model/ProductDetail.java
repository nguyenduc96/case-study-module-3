package model;

public class ProductDetail {
    private int id;
    private int product_id;
    private boolean isActive;
    private String image;
    private String screen_tech;
    private String screen_resolution;
    private String front_camera_tech;
    private String rear_camera_teach;
    private String operator_system;
    private String cpu;
    private String ram;
    private String memory;
    private String connect;
    private String pin;
    private String charge;
    private String note;

    public ProductDetail() {
        this.isActive = true;
        this.image = "";
        this.screen_tech = "";
        this.screen_resolution = "";
        this.front_camera_tech = "";
        this.rear_camera_teach = "";
        this.operator_system = "";
        this.cpu = "";
        this.ram = "";
        this.memory = "";
        this.connect = "";
        this.pin = "";
        this.charge = "";
        this.note = "";
    }

    public ProductDetail(int id, int product_id, boolean isActive, String image, String screen_tech, String screen_resolution, String front_camera_tech, String rear_camera_teach, String operator_system, String cpu, String ram, String memory, String connect, String pin, String charge, String note) {
        this.id = id;
        this.product_id = product_id;
        this.isActive = isActive;
        this.image = image;
        this.screen_tech = screen_tech;
        this.screen_resolution = screen_resolution;
        this.front_camera_tech = front_camera_tech;
        this.rear_camera_teach = rear_camera_teach;
        this.operator_system = operator_system;
        this.cpu = cpu;
        this.ram = ram;
        this.memory = memory;
        this.connect = connect;
        this.pin = pin;
        this.charge = charge;
        this.note = note;
    }

    public ProductDetail(int id, int product_id, boolean isActive, String image, String screen_tech, String screen_resolution, String front_camera_tech, String rear_camera_teach, String operator_system, String cpu, String ram, String memory, String connect, String pin, String charge) {
        this.id = id;
        this.product_id = product_id;
        this.isActive = isActive;
        this.image = image;
        this.screen_tech = screen_tech;
        this.screen_resolution = screen_resolution;
        this.front_camera_tech = front_camera_tech;
        this.rear_camera_teach = rear_camera_teach;
        this.operator_system = operator_system;
        this.cpu = cpu;
        this.ram = ram;
        this.memory = memory;
        this.connect = connect;
        this.pin = pin;
        this.charge = charge;
    }

    public ProductDetail(int product_id, boolean isActive, String image, String screen_tech, String screen_resolution, String front_camera_tech, String rear_camera_teach, String operator_system, String cpu, String ram, String memory, String connect, String pin, String charge) {
        this.product_id = product_id;
        this.isActive = isActive;
        this.image = image;
        this.screen_tech = screen_tech;
        this.screen_resolution = screen_resolution;
        this.front_camera_tech = front_camera_tech;
        this.rear_camera_teach = rear_camera_teach;
        this.operator_system = operator_system;
        this.cpu = cpu;
        this.ram = ram;
        this.memory = memory;
        this.connect = connect;
        this.pin = pin;
        this.charge = charge;
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

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getScreen_tech() {
        return screen_tech;
    }

    public void setScreen_tech(String screen_tech) {
        this.screen_tech = screen_tech;
    }

    public String getScreen_resolution() {
        return screen_resolution;
    }

    public void setScreen_resolution(String screen_resolution) {
        this.screen_resolution = screen_resolution;
    }

    public String getFront_camera_tech() {
        return front_camera_tech;
    }

    public void setFront_camera_tech(String front_camera_tech) {
        this.front_camera_tech = front_camera_tech;
    }

    public String getRear_camera_teach() {
        return rear_camera_teach;
    }

    public void setRear_camera_teach(String rear_camera_teach) {
        this.rear_camera_teach = rear_camera_teach;
    }

    public String getOperator_system() {
        return operator_system;
    }

    public void setOperator_system(String operator_system) {
        this.operator_system = operator_system;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getMemory() {
        return memory;
    }

    public void setMemory(String memory) {
        this.memory = memory;
    }

    public String getConnect() {
        return connect;
    }

    public void setConnect(String connect) {
        this.connect = connect;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getCharge() {
        return charge;
    }

    public void setCharge(String charge) {
        this.charge = charge;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
