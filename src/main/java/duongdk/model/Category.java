package duongdk.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {

    private int id;

    private String code;

    private String name;

    private int active;

    private Set<Product> products;
}
