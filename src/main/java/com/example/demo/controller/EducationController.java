package com.example.demo.controller;

import com.example.demo.repository.UserRepository;
import com.example.demo.service.MaterialService;
import com.example.demo.service.VideoService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/education")
public class EducationController {
    private final VideoService videoService;
    private final UserRepository userRepository;
    private final MaterialService materialService;

    @GetMapping
    public String education(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        model.addAttribute("videos", videoService.getAllVideos());
        model.addAttribute("materials", materialService.getAllMaterials());
        return "education";
    }
}
