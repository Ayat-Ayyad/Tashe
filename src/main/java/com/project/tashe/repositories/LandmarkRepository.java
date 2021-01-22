package com.project.tashe.repositories;

import com.project.tashe.models.Landmark;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LandmarkRepository extends CrudRepository<Landmark, Long> {
    List<Landmark> findAll();
    List<Landmark> findAllByCity(String city);
}
