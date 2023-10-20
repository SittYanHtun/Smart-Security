package SittYanHtun.SmartSecurity;

import SittYanHtun.SmartSecurity.models.Accounts;
import SittYanHtun.SmartSecurity.models.Hospital;
import SittYanHtun.SmartSecurity.repository.HospitalRepository;
import SittYanHtun.SmartSecurity.repository.LoginRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.util.List;

import static java.time.Month.*;

@Configuration
public class TestData {

    @Bean
    CommandLineRunner commandLineRunner(LoginRepository repository) {
        return args -> {
            Accounts acc1 = new Accounts(
                    LocalDate.of(2023, OCTOBER, 13),
                    "Sitt Yan Htun",
                    LocalDate.of(2002, MARCH, 15),
                    "user",
                    "sittyanhtun@gmail.com",
                    "password",
                    "09956612067",
                    "somethings will be here"

            );
            Accounts acc2 = new Accounts(
                    LocalDate.of(2023, OCTOBER, 13),
                    "Khin Yadanar Thein",
                    LocalDate.of(2000, SEPTEMBER, 11),
                    "user",
                    "khinyadanarthein718@gmail.com",
                    "password",
                    "09970486023",
                    "somethings will be here tooo."

            );
            repository.saveAll(List.of(acc1, acc2));
        };
    }

    @Bean
    CommandLineRunner commandLineRunner2(HospitalRepository hospitalRepository) {
        return args -> {
            Hospital h1 = new Hospital(
                    "Yangon General Hospital",
                    4.1,
                    "Bo Gyoke Rd, Yangon",
                    "www.yangongeneralhospital.com",
                    "01256112",
                    16.779174,
                    96.148970
            );
            Hospital h2 = new Hospital(
                    "New Yangon General Hospital",
                    4.2,
                    "Bogyoke Aung San Street x Pyay Street Corner, Lanmadaw Tsp, Yangon",
                    "www.newyangongeneralhospital.com",
                    "01384493",
                    16.781466,
                    96.144920
            );
            Hospital h3 = new Hospital(
                    "Asia Royal Hospital",
                    3.8,
                    "14 Baho Rd, Yangon",
                    "www.asiaroyalhospital.com",
                    "012304999",
                    16.797774,
                    96.131143
            );
            Hospital h4 = new Hospital(
                    "Grand Hantha International Hospital",
                    3.1,
                    "No.3, Corner of Nar Nat Taw Street & Kyee Myindaing Kanner Rd, Yangon",
                    "www.grandhanthahospital.com",
                    "09422049911",
                    16.821491,
                    96.123057
            );
            Hospital h5 = new Hospital(
                    "Kyi Myin Daing Orthollogyical Hospital",
                    2.8,
                    "Hanthawaddy Rd, Yangon",
                    "www.kyimyindaing.com",
                    "01527087",
                    16.819033,
                    96.122731
            );
            Hospital h6 = new Hospital(
                    "Ma Har Myaing Hospital",
                    4.0,
                    "Pyay Rd, Yangon",
                    "www.maharmyainghospital.com",
                    "01537918",
                    16.808114,
                    96.136373
            );
            Hospital h7 = new Hospital(
                    "Kan Thar Yar Hospital",
                    4.0,
                    "Pyay Rd, Yangon",
                    "www.kantharyarhospital.com",
                    "01505284",
                    16.841532,
                    96.136558
            );
            Hospital h8 = new Hospital(
                    "Thamine General Hospital",
                    4.0,
                    "Insine Rd, Yangon",
                    "www.thaminegeneralhospital.com",
                    "019669311",
                    16.862750,
                    96.122061
            );
            Hospital h9 = new Hospital(
                    "Ar Yu International Hospital",
                    4.0,
                    "400 Kyaik Ka San Rd, Yangon",
                    "www.aryuinternationalhospital.com",
                    "019376200",
                    16.812765,
                    96.175737
            );
            Hospital h10 = new Hospital(
                    "OSC Hospital",
                    3.6,
                    "Thudhamma Rd, Yangon",
                    "www.oschospital.com",
                    "01656176",
                    16.884723,
                    96.155109
            );
            hospitalRepository.saveAll(List.of(h1,h2,h3,h4,h5,h6,h7,h8,h9,h10));
        };
    }

}
