package SittYanHtun.SmartSecurity.services;

import SittYanHtun.SmartSecurity.helper.LocationCalculation;
import SittYanHtun.SmartSecurity.models.Hospital;
import SittYanHtun.SmartSecurity.repository.HospitalRepository;
import org.springframework.data.geo.Point;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HospitalService {

    private final HospitalRepository hospitalRepository;

    public  HospitalService(HospitalRepository hospitalRepository) {
        this.hospitalRepository = hospitalRepository;
    }

    public List<Hospital> GetHospitalByDistance(Point location, Double distance) {
        List<Hospital> availableHospital = new ArrayList<>();

        List<Hospital> hospitals = hospitalRepository.findAll();

        if (hospitals.isEmpty()) {
            throw new IllegalStateException("Hospital is not Available");
        }

        for (Hospital hospital : hospitals) {
            if (LocationCalculation.isWithinRadius(location.getX(), location.getY(), hospital.getLatitude(), hospital.getLongitude(), distance)) {
                availableHospital.add(hospital);
            }
        }

        if (availableHospital.isEmpty()) {
            throw new IllegalStateException("There is no available hospital within " + distance + " miles");
        }

        return availableHospital;
    }

}
