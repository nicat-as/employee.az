package az.employee.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class User extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = 8178464419829940104L;
    private long id;
    private String name;
    private String surname;
    private List<Role> roleList;
    private UserStatus status;
    private String email;
    private String password;
    private String phone;
    private String mobile;



    public User() {
        this.id = 0;
        this.name = "";
        this.surname = "";
        this.roleList = new ArrayList<>();
        this.status = UserStatus.PENDING;
        this.email = "";
        this.password = "";
        this.phone = "";
        this.mobile = "";
    }

    @Override
    public long getId() {
        return id;
    }

    @Override
    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
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

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id &&
                name.equals(user.name) &&
                surname.equals(user.surname) &&
                roleList.equals(user.roleList) &&
                status == user.status &&
                email.equals(user.email) &&
                password.equals(user.password) &&
                phone.equals(user.phone) &&
                mobile.equals(user.mobile);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, surname, roleList, status, email, password, phone, mobile);
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", roleList=" + roleList +
                ", status=" + status +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
