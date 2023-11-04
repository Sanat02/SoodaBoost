package com.example.demo.service;

import com.example.demo.dto.AnswerDto;
import com.example.demo.model.Answer;
import com.example.demo.model.Question;
import com.example.demo.repository.AnswerRepository;
import com.example.demo.repository.QuestionRepository;
import com.example.demo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AnswerService {
    private final AnswerRepository answerRepository;
    private final UserRepository userRepository;
    private final QuestionRepository questionRepository;

    public void saveAnswer(String answer, int questionId, int userId) {
        Date currentDate = new Date();
        answerRepository.save(Answer.builder()
                .answer(answer)
                .answerDate((new Timestamp(currentDate.getTime())))
                .user(userRepository.findById(userId).orElseThrow())
                .question(questionRepository.findById(questionId).orElseThrow())
                .build());
    }

    public List<AnswerDto> getAnswersByQuestionId(int questionId) {
        List<Answer> answers = answerRepository.findAnswerByQuestionId(questionId);
        List<Answer> sortedAnswers = answers.stream()
                .sorted(Comparator.comparing(Answer::getAnswerDate).reversed()).collect(Collectors.toList());
        return sortedAnswers.stream()
                .map(e -> AnswerDto.builder()
                        .id(e.getId())
                        .answer(e.getAnswer())
                        .userName(e.getUser().getFio())
                        .answerDate(e.getAnswerDate())
                        .build()
                ).collect(Collectors.toList());
    }
}
