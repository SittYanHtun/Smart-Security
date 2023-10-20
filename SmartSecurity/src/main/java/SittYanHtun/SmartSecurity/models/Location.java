package SittYanHtun.SmartSecurity.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDateTime;

@Entity
@Table
public class Location {

    @Id
    private Long user_id;
    private Double latitude;
    private Double longitude;
    private LocalDateTime time;

    public Location() {}

    public Location(Long user_id, Double latitude, Double longitude, LocalDateTime time) {
        this.user_id = user_id;
        this.latitude = latitude;
        this.longitude = longitude;
        this.time = time;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public void setTime(LocalDateTime time) {
        this.time = time;
    }
}
