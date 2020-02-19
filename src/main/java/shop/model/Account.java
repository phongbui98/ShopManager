package shop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {

    private int id;

    private String fullname;

    private String email;

    private String password;

    private String address;

    private String role;

    private int active;

    private Set<Order> orders;
}
