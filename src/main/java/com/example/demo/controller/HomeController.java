package com.example.demo.controller;

import com.example.demo.service.NewsService;
import com.example.demo.service.TestService;
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
@RequestMapping("")
public class HomeController {
    private final UserService userService;
    private final TestService testService;
    private final NewsService newsService;


    @GetMapping
    public String home(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        model.addAttribute("userSize", userService.getAllUsersSize(1));
        model.addAttribute("companySize", userService.getAllUsersSize(3));
        model.addAttribute("testSize", testService.getAllTests().size());
        model.addAttribute("news", newsService.getAllNews());
        return "index";
    }
}
