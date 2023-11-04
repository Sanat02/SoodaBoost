package com.example.demo.controller;

import com.example.demo.repository.UserRepository;
import com.example.demo.service.ComplainService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequiredArgsConstructor
@RequestMapping("/complain")
@Controller
public class ComplainController {
    private final UserRepository userRepository;
    private final ComplainService complainService;

    @GetMapping("/{questionId}")
    public String complain(@PathVariable int questionId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        complainService.saveComplain(user.getId(), questionId);
        return "redirect:/forum/answer/" + questionId;
    }
}
