package com.project.tashe.services;

import com.project.tashe.models.Landmark;
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

    public List<Trip> getAllTrips() {
        return tripRepository.findAll();
    }

    public List<Trip> getAllTripsOrderByPrice() {
        return tripRepository.findAllByOrderByPriceAsc();
    }

    public List<Trip> getAllTripsOrderByDate() {
        return tripRepository.findAllByOrderByDateAsc();
    }

    public Trip getTripById(Long id) {
        return tripRepository.findById(id).orElse(null);
    }

    public Trip createTrip(Trip trip){
        return tripRepository.save(trip);
    }


    public TripLandmark getTripLandmarkByTripId(Long id) {
        return tripLandmarkRepository.findByTripIdOrderByRouteAsc(id);
    }
    public List<Landmark> getAllLandmarks(){
        return landmarkRepository.findAll();
    }
    public Landmark createLandmark(Landmark landmark){
        return landmarkRepository.save(landmark);
    }
}

