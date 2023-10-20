package SittYanHtun.SmartSecurity.controllers;

import SittYanHtun.SmartSecurity.models.Accounts;
import SittYanHtun.SmartSecurity.services.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "register")
public class RegisterController {

    private final RegisterService registerService;

    @Autowired
    public RegisterController(RegisterService registerService) {
        this.registerService = registerService;
    }

    @PostMapping
    public List<Accounts> registerNewAccount(@RequestBody Accounts account) {
        return registerService.addNewAccount(account);
    }
}
