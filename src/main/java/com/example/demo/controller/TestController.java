package com.example.demo.controller;

import com.example.demo.dto.TestDto;
import com.example.demo.dto.UserDto;
import com.example.demo.service.TestService;
import com.example.demo.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/test")
public class TestController {
    private final TestService testService;
    private final UserService userService;

    @GetMapping
    public String test(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        TestDto test = testService.getTestByUserId(user.getId());
        boolean result = false;
        if (test != null) {
            result = testService.hasThirtyDaysPassed(test.getTestDate());
            if (!result) {
                model.addAttribute("test", test);
            }
        }

        return "tools";
    }

    @PostMapping()
    @ResponseStatus(HttpStatus.SEE_OTHER)
    public String addTest(
            @RequestParam(name = "1") String firstQuestion,
            @RequestParam(name = "2") String secondQuestion,
            @RequestParam(name = "3") String thirdQuestion,
            @RequestParam(name = "4") String fourthQuestion,
            @RequestParam(name = "5") String fifthQuestion,
            @RequestParam(name = "6") String sixthQuestion,
            Model model
    ) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        int score = 0;
        if (firstQuestion.equalsIgnoreCase("d")) {
            score++;
        }
        if (secondQuestion.equalsIgnoreCase("d")) {
            score++;
        }
        if (thirdQuestion.equalsIgnoreCase("d")) {
            score++;
        }
        if (fourthQuestion.equalsIgnoreCase("a")) {
            score++;
        }
        if (fifthQuestion.equalsIgnoreCase("c")) {
            score++;
        }
        if (sixthQuestion.equalsIgnoreCase("d")) {
            score++;
        }
        testService.saveTest(user.getId(), score);

        return "redirect:/test";

    }

}
