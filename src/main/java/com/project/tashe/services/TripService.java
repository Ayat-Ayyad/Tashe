package com.project.tashe.services;

import com.project.tashe.models.Trip;
import com.project.tashe.repositories.LandmarkRepository;
import com.project.tashe.repositories.TripRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TripService {
    private final TripRepository tripRepository;
    private final LandmarkRepository landmarkRepository;

    public TripService(TripRepository tripRepository, LandmarkRepository landmarkRepository) {
        this.tripRepository = tripRepository;
        this.landmarkRepository = landmarkRepository;
    }
    public List<Trip> getAllTrips(){
        return tripRepository.findAll();
    }
    public List<Trip> getAllTripsOrderByPrice(){
        return tripRepository.findAllByOrderByPriceAsc();
    }
    public List<Trip> getAllTripsOrderByDate(){
        return tripRepository.findAllByOrderByDateAsc();
    }
}

