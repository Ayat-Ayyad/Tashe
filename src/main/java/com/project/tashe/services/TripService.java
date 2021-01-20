package com.project.tashe.services;

import com.project.tashe.models.Trip;
import com.project.tashe.models.TripLandmark;
import com.project.tashe.repositories.LandmarkRepository;
import com.project.tashe.repositories.TripLandmarkRepository;
import com.project.tashe.repositories.TripRepository;
import org.springframework.stereotype.Service;

import java.security.PublicKey;
import java.util.List;

@Service
public class TripService {
    private final TripRepository tripRepository;
    private final LandmarkRepository landmarkRepository;
    private final TripLandmarkRepository tripLandmarkRepository;

    public TripService(TripRepository tripRepository, LandmarkRepository landmarkRepository, TripLandmarkRepository tripLandmarkRepository) {
        this.tripRepository = tripRepository;
        this.landmarkRepository = landmarkRepository;
        this.tripLandmarkRepository = tripLandmarkRepository;
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
    public List<TripLandmark> getAllTripLandmarkByAcivity(String activity){
        return tripLandmarkRepository.findAllByActivity(activity);
    }
    public TripLandmark getTripLandmarkByTripId(Long id){
        return tripLandmarkRepository.findByTripIdOrderByRouteAsc(id);
    }
}

