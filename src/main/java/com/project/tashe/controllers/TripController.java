package com.project.tashe.controllers;

import com.project.tashe.models.Landmark;
import com.project.tashe.models.Trip;
import com.project.tashe.models.User;
import com.project.tashe.services.TripService;
import com.project.tashe.services.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
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
//        return "tripsPage.jsp";
    }

    @RequestMapping("/trips/{id}")
    public Trip tripInfoPage(@PathVariable("id") Long id, Model model) {
        return tripService.getTripById(id);
//        model.addAttribute("trip", tripService.getTripById(id));
//        return "tripInfoPage.jsp";
    }

    @RequestMapping("/trips/joined")
    public List<Trip> usertripsPage(Principal principal, Model model) {
        String username = principal.getName();
        User user = userService.findByUsername(username);
        return user.getTrips();
//        model.addAttribute("usertrips", user.getTrips());
//        return "usertripsPage.jsp";
    }

    @RequestMapping("/trips/new")
    public String newtripForm(@ModelAttribute("trip") Trip trip) {
        return "newtripForm.jsp";
    }
//    @RequestMapping(value = "/trips", method = RequestMethod.POST)
//    public String addTrip(@ModelAttribute("trip") Trip trip){
//    }
    @RequestMapping("/landmarks/new")
    public String newLandmarkForm(@ModelAttribute("landmark") Landmark landmark) {
        return "newLandmarkForm.jsp";
    }

    @RequestMapping(value = "/landmarks", method = RequestMethod.POST)
    public String addLandmark(@ModelAttribute("landmark") Landmark landmark){
        tripService.createLandmark(landmark);
        return "redirect:/admin";
    }

}
