package SittYanHtun.SmartSecurity.repository;

import SittYanHtun.SmartSecurity.models.Accounts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface LoginRepository extends JpaRepository<Accounts, Long> {

    Optional<Accounts> findAccountsByEmail(String email);
}
