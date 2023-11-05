package com.example.demo.controller;

import com.example.demo.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/profile")
public class ProfileController {
    private final UserService userService;

    @GetMapping
    public String home(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        return "users-profile";
    }
}
