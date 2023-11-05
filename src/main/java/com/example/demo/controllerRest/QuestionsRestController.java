package com.example.demo.controllerRest;


import com.example.demo.dto.QuestionDto;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.QuestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/question")
@RequiredArgsConstructor
public class QuestionsRestController {
    private final QuestionService questionService;
    private final UserRepository userRepository;

    @PostMapping()
    public HttpStatus addMessage(@RequestBody Map<String, String> request) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        questionService.saveQuestion(request.get("question"), user.getId(), request.get("category"));
        return HttpStatus.OK;
    }

    @GetMapping()
    public List<QuestionDto> getMessagesByEmployerId(@RequestParam(name = "value", defaultValue = "8") String value) {
        List<QuestionDto> questions = new ArrayList<>();
        if (value.equalsIgnoreCase("undefined") || value.equalsIgnoreCase("8")) {
            questions = questionService.getQuestions();
        } else {
            questions = questionService.getQuestionsByKey(Integer.parseInt(value));
        }
        return questions;
    }
}
