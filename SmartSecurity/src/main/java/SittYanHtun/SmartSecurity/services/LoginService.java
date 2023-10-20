package SittYanHtun.SmartSecurity.services;

import SittYanHtun.SmartSecurity.models.Accounts;
import SittYanHtun.SmartSecurity.repository.LoginRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LoginService {

    private final LoginRepository loginRepository;

    public LoginService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    public List<Accounts> Login(String email, String password) {
        Accounts user = loginRepository.findAccountsByEmail(email)
                .orElseThrow(() -> new IllegalStateException("Email doesn't exist"));

        if (!user.getPassword().equals(password)) {
            throw new IllegalStateException("Password doesn't match");
        }

        List<Accounts> userList = new ArrayList<>();
        userList.add(user);
        return userList;
    }

    public List<Accounts> getAllAccounts() {
        return loginRepository.findAll();
    }
}
