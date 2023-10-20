package SittYanHtun.SmartSecurity.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table
public class RelationShip {

    @Id
    private Long user_id;
    private Long sharing_id;

    public RelationShip() {}

    public RelationShip(Long user_id, Long sharing_id) {
        this.user_id = user_id;
        this.sharing_id = sharing_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Long getSharing_id() {
        return sharing_id;
    }

    public void setSharing_id(Long sharing_id) {
        this.sharing_id = sharing_id;
    }
}
