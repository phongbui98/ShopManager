package shop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {

    private int id;

    private Date date;

    private Account account;

    private Set<OrderDetail> orderDetails;
}
