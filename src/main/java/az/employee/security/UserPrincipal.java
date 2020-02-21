package az.employee.security;

import az.employee.domain.User;
import az.employee.domain.UserStatus;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UserPrincipal implements UserDetails, Serializable {

    private static final long serialVersionUID = -6222031524280174655L;
    private User user;

    public UserPrincipal(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<>();
        // authorities - permission + role

        // role based authority-ler ucun ROLE_ prefix vacibdir
        user.getRoleList().forEach(role -> {
            SimpleGrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role.name());
            authorities.add(authority);
        });
        return authorities;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return !(user.getStatus() == UserStatus.DELETED);
    }

    @Override
    public boolean isAccountNonLocked() {
        return !(user.getStatus() == UserStatus.DEACTIVE);
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return user.getStatus() == UserStatus.ACTIVE;
    }

    @Override
    public String toString() {
        return "UserPrincipal{" +
                "user=" + user +
                '}';
    }
}
