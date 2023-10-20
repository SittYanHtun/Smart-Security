package SittYanHtun.SmartSecurity.repository;

import SittYanHtun.SmartSecurity.models.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface HospitalRepository extends JpaRepository<Hospital, String> {

    Optional<Hospital> findHospitalByLatitude(Double latitude);

    Optional<Hospital> findHospitalById(Long id);
}
