    package model;

    import java.sql.Date;

    public class User {
        private int id;
        private String username;
        private String password;
        private String first_name;
        private String last_name;
        private String number_phone;
        private String email;
        private String address;
        private String sex;
        private boolean isActive;
        private int role_id;
        private Role role;
        private Date date_of_birth;
        private Date created_at;
        private String note;


        public User() {
        }

        public User(String username, String password) {
            this.username = username;
            this.password = password;
        }

        public User(int id, String username, String password, String first_name, String last_name, String number_phone, String email, String address, String sex, boolean isActive, int role_id, Date date_of_birth, Date created_at) {
            this.id = id;
            this.username = username;
            this.password = password;
            this.first_name = first_name;
            this.last_name = last_name;
            this.number_phone = number_phone;
            this.email = email;
            this.address = address;
            this.sex = sex;
            this.isActive = isActive;
            this.role_id = role_id;
            this.date_of_birth = date_of_birth;
            this.created_at = created_at;
        }

        public User(String password, String first_name, String last_name, String number_phone, String email, String address, String sex, boolean isActive, int role_id, Date date_of_birth) {
            this.password = password;
            this.first_name = first_name;
            this.last_name = last_name;
            this.number_phone = number_phone;
            this.email = email;
            this.address = address;
            this.sex = sex;
            this.isActive = isActive;
            this.role_id = role_id;
            this.date_of_birth = date_of_birth;
        }

        public User(String username, String password, String first_name, String last_name, String number_phone, String email, String address, String sex, boolean isActive, int role_id, Date date_of_birth, Date created_at) {
            this.username = username;
            this.password = password;
            this.first_name = first_name;
            this.last_name = last_name;
            this.number_phone = number_phone;
            this.email = email;
            this.address = address;
            this.sex = sex;
            this.isActive = isActive;
            this.role_id = role_id;
            this.date_of_birth = date_of_birth;
            this.created_at = created_at;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public String getFirst_name() {
            return first_name;
        }

        public void setFirst_name(String first_name) {
            this.first_name = first_name;
        }

        public String getLast_name() {
            return last_name;
        }

        public void setLast_name(String last_name) {
            this.last_name = last_name;
        }

        public String getNumber_phone() {
            return number_phone;
        }

        public void setNumber_phone(String number_phone) {
            this.number_phone = number_phone;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getAddress() {
            return address;
        }

        public void setAddress(String address) {
            this.address = address;
        }

        public String getSex() {
            return sex;
        }

        public void setSex(String sex) {
            this.sex = sex;
        }

        public boolean isActive() {
            return isActive;
        }

        public void setActive(boolean active) {
            isActive = active;
        }

        public int getRole_id() {
            return role_id;
        }

        public void setRole_id(int role_id) {
            this.role_id = role_id;
        }

        public Role getRole() {
            return role;
        }

        public void setRole(Role role) {
            this.role = role;
        }

        public Date getDate_of_birth() {
            return date_of_birth;
        }

        public void setDate_of_birth(Date date_of_birth) {
            this.date_of_birth = date_of_birth;
        }

        public Date getCreated_at() {
            return created_at;
        }

        public void setCreated_at(Date created_at) {
            this.created_at = created_at;
        }

        public String getNote() {
            return note;
        }

        public void setNote(String note) {
            this.note = note;
        }
    }
