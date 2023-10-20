package SittYanHtun.SmartSecurity.controllers;

import SittYanHtun.SmartSecurity.models.Hospital;
import SittYanHtun.SmartSecurity.services.HospitalService;
import org.springframework.data.geo.Point;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(path = "hospital")
public class HospitalController {

    private final HospitalService hospitalService;

    public HospitalController(HospitalService hospitalService) {
        this.hospitalService = hospitalService;
    }

    @PutMapping(path = "{distance}")
    public List<Hospital> getHospitalByDistance(
            @PathVariable("distance") Double distance,
            @RequestParam Double latitude,
            @RequestParam Double longitude
    ) {
        Point location = new Point(latitude, longitude);
        return hospitalService.GetHospitalByDistance(location, distance);
    }
}
