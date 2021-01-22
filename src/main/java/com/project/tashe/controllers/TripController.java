package com.project.tashe.controllers;

import com.project.tashe.models.*;
import com.project.tashe.services.TripService;
import com.project.tashe.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TripController {
    private final TripService tripService;
    private final UserService userService;

    public TripController(TripService tripService, UserService userService) {
        this.tripService = tripService;
        this.userService = userService;
    }

    @RequestMapping("/trips")
    public List<Trip> tripsPage(Model model) {
        return tripService.getAllTrips();
//        model.addAttribute("trips", tripService.getAllTrips());
//        return "AllTrips.jsp";
    }

    @RequestMapping("/trips/{id}")
    public Trip tripInfoPage(@PathVariable("id") Long id, Model model) {
        return tripService.getTripById(id);
//        model.addAttribute("trip", tripService.getTripById(id));
//        return "tripInfoPage.jsp";
    }

    @RequestMapping("/trips/joined")
    public String usertripsPage(Principal principal, Model model) {
        //String username = principal.getName();
        //User user = userService.findByUsername(username);
       // return user.getTrips();
//        model.addAttribute("usertrips", user.getTrips());
        return "UserProfile.jsp";
    }

    //    =========================================================================

    @RequestMapping("/admin/controls")
    public String newTripLandmarkForm(@ModelAttribute("trip") Trip trip, @ModelAttribute("landmark") Landmark landmark, Model model) {
        model.addAttribute("cities", City.CITIES);
        model.addAttribute("categories", Category.CATEGORIES);
        model.addAttribute("activities", Activity.ACTIVITIES);
        model.addAttribute("landmarks", tripService.getAllLandmarks());
        return "adminControlPanel.jsp";
    }

    //    =========================================================================

    @RequestMapping(value = "/admin/addlandmark", method = RequestMethod.POST)
    public String createLandmark(@Valid @ModelAttribute("landmark") Landmark landmark, Model model, BindingResult result) {
        if(result.hasErrors()) {
            model.addAttribute("cities", City.CITIES);
            model.addAttribute("categories", Category.CATEGORIES);
            model.addAttribute("activities", Activity.ACTIVITIES);
            model.addAttribute("landmarks", tripService.getAllLandmarks());
            return "adminControlPanel.jsp";
        }
        tripService.createLandmark(landmark);
        return "redirect:/admin/controls";
    }

    //    =========================================================================

    @RequestMapping(value = "/admin/addtrip", method = RequestMethod.POST)
    public String createTrip(@Valid @ModelAttribute("trip") Trip trip, Model model, BindingResult result) {
        if(result.hasErrors()) {
            model.addAttribute("cities", City.CITIES);
            model.addAttribute("categories", Category.CATEGORIES);
            model.addAttribute("activities", Activity.ACTIVITIES);
            model.addAttribute("landmarks", tripService.getAllLandmarks());
            return "adminControlPanel.jsp";
        }
        tripService.createTrip(trip);
        Trip newTrip = tripService.getTripById(trip.getId());
        ArrayList<Landmark> newLandmarks = new ArrayList<Landmark>(newTrip.getLandmarks());
        int i = 1;
        for (Landmark landmark: newLandmarks) {
            TripLandmark newTripLandmark = tripService.getTripLandmarkByLandmark(landmark);
            if (landmark.getCity().equals(newTrip.getLandmarks().get(0).getCity())) {
                newTripLandmark.setRoute(0);
                tripService.createTripLandmark(newTripLandmark);
            }else {
                newTripLandmark.setRoute(i);
                tripService.createTripLandmark(newTripLandmark);
                i++;
            }
        }
        return "redirect:/admin/controls";
    }

    //    =========================================================================


    //    @RequestMapping(value = "/trips", method = RequestMethod.POST)
//    public String addTrip(@ModelAttribute("trip") Trip trip){
//    }
    @RequestMapping("/landmarks/new")
    public String newLandmarkForm(@ModelAttribute("landmark") Landmark landmark) {
        return "admin.jsp";
    }

    @RequestMapping(value = "/landmarks", method = RequestMethod.POST)
    public String addLandmark(@ModelAttribute("landmark") Landmark landmark) {
        tripService.createLandmark(landmark);
        return "redirect:/landmarks/new";
    }

}
