package com.example.demo.controller;


import com.example.demo.dto.UserDto;
import com.example.demo.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequiredArgsConstructor
@RequestMapping("/register")
public class RegistrationController {
    private final UserService userService;


    @GetMapping
    public String register() {
        return "pages-register";
    }

    @PostMapping()
    @ResponseStatus(HttpStatus.SEE_OTHER)
    public String addUser(
            @RequestParam(name = "fio") String fio,
            @RequestParam(name = "email") String email,
            @RequestParam(name = "password") String password,
            @RequestParam(name = "phone_number") String phoneNumber,
            @RequestParam(name = "role") int role,
            Model model
    ) {
        UserDto userDto = UserDto.builder()
                .password(password)
                .fio(fio)
                .email(email)
                .phoneNumber(phoneNumber)
                .build();
        userService.save(userDto, role);
        return "redirect:/login";

    }


}
