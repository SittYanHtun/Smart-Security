package SittYanHtun.SmartSecurity.models;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.time.Period;

@Entity
@Table
public class Accounts {

    @Id
    @SequenceGenerator(
            name = "account_sequence",
            sequenceName = "account_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "account_sequence"
    )
    private Long id;
    private LocalDate createdat;
    private String name;
    private LocalDate dob;
    @Transient
    private Integer age;
    private String role;
    private String email;
    private String password;
    private String phone;
    private String profile;

    public Accounts() {}

    public Accounts(LocalDate createdat, String name, LocalDate dob, String role,
                    String email, String password, String phoneno, String profile) {
        this.createdat = createdat;
        this.name = name;
        this.dob = dob;
        this.role = role;
        this.email = email;
        this.password = password;
        this.phone = phoneno;
        this.profile = profile;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getCreatedat() {
        return createdat;
    }

    public void setCreatedat(LocalDate created_at) {
        this.createdat = created_at;
    }

    public String getName() {
        return name;
    }

    public void setName(String user_name) {
        this.name = user_name;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public Integer getAge() {
        return Period.between(this.dob, LocalDate.now()).getYears();
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone_no) {
        this.phone = phone_no;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile_img) {
        this.profile = profile_img;
    }

    @Override
    public String toString() {
        return "Accounts{" +
                "id=" + id +
                ", created_at=" + createdat +
                ", user_name='" + name + '\'' +
                ", dob=" + dob +
                ", age=" + age +
                ", role='" + role + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phone_no='" + phone + '\'' +
                ", profile_img='" + profile + '\'' +
                '}';
    }
}
