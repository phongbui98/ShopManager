package shop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {

    private int id;

    private String code;

    private String name;

    private String image;

    private Double price;

    private int amount;

    private int sold;

    private String description;

    private int active;

    private Category category;

    private Set<OrderDetail> orderDetails;
}
