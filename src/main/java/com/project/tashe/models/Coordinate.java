package com.project.tashe.models;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
@Entity
@Table(name = "coodinates")
public class Coordinate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty(message = "REQUIRED!")
    private Double longitude;
    @NotEmpty(message = "REQUIRED!")
    private Double latitude;
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "landmark_id")
    private Landmark landmark;

    public Coordinate() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Landmark getLandmark() {
        return landmark;
    }

    public void setLandmark(Landmark landmark) {
        this.landmark = landmark;
    }
}
