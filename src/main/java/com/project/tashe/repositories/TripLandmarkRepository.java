package com.project.tashe.repositories;

import com.project.tashe.models.Landmark;
import com.project.tashe.models.TripLandmark;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TripLandmarkRepository extends CrudRepository<TripLandmark, Long> {

    TripLandmark findByTripIdOrderByRouteAsc(Long id);
    TripLandmark findByLandmark(Landmark landmark);

}
