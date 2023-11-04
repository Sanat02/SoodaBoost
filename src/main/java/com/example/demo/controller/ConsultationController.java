package com.example.demo.controller;

import com.example.demo.dto.TestDto;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.TestService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/consultation")
public class ConsultationController {
    private final TestService testService;
    private final UserRepository userRepository;
    @GetMapping
    public String consult(Model model) {
        List<TestDto> tests=testService.getAllTests();
        model.addAttribute("tests",tests);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        return "consultation";
    }

}
