package SittYanHtun.SmartSecurity.controllers;

import SittYanHtun.SmartSecurity.models.Accounts;
import SittYanHtun.SmartSecurity.services.LoginService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "login")
public class LoginController {

    private final LoginService loginService;

    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    @GetMapping
    public List<Accounts> getAccount() {
        return loginService.getAllAccounts();
    }

    @PutMapping(path = "{email}")
    public List<Accounts> login(
            @PathVariable("email") String email,
            @RequestParam(required = true) String password
    ) {
        return loginService.Login(email, password);
    }
}
