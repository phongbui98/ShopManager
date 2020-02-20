package shop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    private int id;

    @Column(name = "product_code")
    private String code;

    @Column(name = "product_name")
    private String name;

    @Column(name = "product_image")
    private String image;

    @Column(name = "product_price")
    private Double price;

    @Column(name = "product_amount")
    private int amount;

    @Column(name = "product_sold")
    private int sold;

    @Column(name = "product_description")
    private String description;

    @Column(name = "product_active")
    private int active;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "product")
    private Set<OrderDetail> orderDetails;
}

