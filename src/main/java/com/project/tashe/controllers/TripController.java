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
    public String tripsPage(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("trips", tripService.getAllTrips());
        model.addAttribute("user", userService.findByUsername(username));
        return "AllTrips.jsp";
    }

    @RequestMapping("/trips/{id}")
    public String tripInfoPage(@PathVariable("id") Long id, Model model) {
        List<TripLandmark> tripLandmarks = tripService.getTripLandmarkByTripId(id);
        ArrayList<String> landmarks = new ArrayList<>();
        for (TripLandmark tripLandmark : tripLandmarks) {
            landmarks.add(
                    tripLandmark.getLandmark().getCity() + "," + tripLandmark.getLandmark().getLandmarkName() + "," + tripLandmark.getLandmark().getActivity()
            );
        }
        model.addAttribute("trip", tripService.getTripById(id));
        model.addAttribute("landmarks", landmarks);

        return "tripInfoPage.jsp";
    }


    @RequestMapping("/trips/{id}/join")
    public String joinTrip(@PathVariable("id") Long id, Principal principal) {
        Trip trip = tripService.getTripById(id);
        List<User> joinedUsers = trip.getUsers();
        String username = principal.getName();
        User user = userService.findByUsername(username);
        joinedUsers.add(user);
        trip.setUsers(joinedUsers);
        tripService.createTrip(trip);

        return "redirect:/trips";
    }


    @RequestMapping("/trips/joined")
    public String userTripsPage(Principal principal, Model model) {
        String username = principal.getName();
        User user = userService.findByUsername(username);
        model.addAttribute("trips", user.getTrips());
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
        if (result.hasErrors()) {
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
        if (result.hasErrors()) {
            model.addAttribute("cities", City.CITIES);
            model.addAttribute("categories", Category.CATEGORIES);
            model.addAttribute("activities", Activity.ACTIVITIES);
            model.addAttribute("landmarks", tripService.getAllLandmarks());
            return "adminControlPanel.jsp";
        }
        Trip newTrip = tripService.createTrip(trip);
        int i = 0;
        for (Landmark landmark : newTrip.getLandmarks()) {
            TripLandmark newTripLandmark = tripService.getTripLandmarkByTripAndLandmark(newTrip, landmark);
            newTripLandmark.setRoute(i);
            tripService.createTripLandmark(newTripLandmark);
            i++;
        }
        return "redirect:/admin/controls";
    }
}
