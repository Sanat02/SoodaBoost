package com.example.demo.controller;

import com.example.demo.dto.UserDto;
import com.example.demo.model.User;
import com.example.demo.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/info")
public class UserInfoController {
    private final UserService userService;

    @GetMapping("/{userId}")
    public String info(Model model, @PathVariable int userId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        UserDto searchedUser = userService.mapToUserDto(userService.getUserById(userId).orElseThrow());
        model.addAttribute("searchedUser", searchedUser);
        return "user-info";
    }
}
