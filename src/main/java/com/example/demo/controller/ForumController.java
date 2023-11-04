package com.example.demo.controller;

import com.example.demo.dto.QuestionDto;
import com.example.demo.model.Question;
import com.example.demo.service.QuestionService;
import com.example.demo.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/forum")
public class ForumController {
    private final UserService userService;
    private final QuestionService questionService;
    @GetMapping
    public String forum(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        return "forum";
    }

    @GetMapping("/answer/{questionId}")
    public String answer(Model model, @PathVariable int questionId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userService.getUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("question",questionService.getQuestionById(questionId));
        model.addAttribute("user", user);
        return "answer";
    }
    @GetMapping("/history/{userId}")
    public String history(Model model,@PathVariable int userId) {
        List<QuestionDto> questions=questionService.getQuestionsByUserId(userId);
        var user=userService.getUserById(userId).orElseThrow();
        model.addAttribute("user", user);
        model.addAttribute("questions", questions);
        return "history";
    }
}
