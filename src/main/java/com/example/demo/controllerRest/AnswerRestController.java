package com.example.demo.controllerRest;

import com.example.demo.dto.AnswerDto;
import com.example.demo.dto.QuestionDto;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.AnswerService;
import com.example.demo.service.QuestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping
@RequiredArgsConstructor
public class AnswerRestController {
    private final AnswerService answerService;
    private final UserRepository userRepository;

    @PostMapping("forum/answer/{questionId}")
    public HttpStatus addAnswer(@RequestBody String answer, @PathVariable int questionId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        answerService.saveAnswer(answer, questionId, user.getId());
        return HttpStatus.OK;
    }

    @GetMapping("forum/answer1/{questionId}")
    public List<AnswerDto> getAnswersByQuestionId(@PathVariable int questionId) {
        List<AnswerDto> answers = answerService.getAnswersByQuestionId(questionId);
        return answers;
    }
}
