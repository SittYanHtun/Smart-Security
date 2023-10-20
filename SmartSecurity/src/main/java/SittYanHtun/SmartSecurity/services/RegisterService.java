package SittYanHtun.SmartSecurity.services;

import SittYanHtun.SmartSecurity.models.Accounts;
import SittYanHtun.SmartSecurity.repository.RegisterRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class RegisterService {

    private final RegisterRepository registerRepository;

    public RegisterService(RegisterRepository registerRepository) {
        this.registerRepository = registerRepository;
    }


    public List<Accounts> addNewAccount(Accounts account) {
        Optional<Accounts> accountOptional = registerRepository.findAccountsByEmail(account.getEmail());
        if (accountOptional.isPresent()) {
            throw new IllegalStateException("Email taken");
        }

        Optional<Accounts> accountOptional2 = registerRepository.findAccountsByPhone(account.getPhone());
        if (accountOptional2.isPresent()) {
            throw new IllegalStateException("Phone taken");
        }

        registerRepository.save(account);

        Accounts user = registerRepository.findAccountsByEmail(account.getEmail())
                .orElseThrow(() -> new IllegalStateException("Email doesn't exist"));

        List<Accounts> userList = new ArrayList<>();
        userList.add(user);
        return userList;
    }
}
