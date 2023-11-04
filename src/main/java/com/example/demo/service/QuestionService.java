package com.example.demo.service;

import com.example.demo.dto.QuestionDto;
import com.example.demo.dto.UserDto;
import com.example.demo.model.KeyWords;
import com.example.demo.model.Question;
import com.example.demo.model.QuestionsKey;
import com.example.demo.model.User;
import com.example.demo.repository.KeyWordsRepository;
import com.example.demo.repository.QuestionRepository;
import com.example.demo.repository.QuestionsKeyRepository;
import com.example.demo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class QuestionService {
    private final QuestionRepository questionRepository;
    private final UserRepository userRepository;
    private final QuestionsKeyRepository questionsKeyRepository;
    private final KeyWordsRepository keyWordsRepository;


    public void saveQuestion(String question, int userId, String category) {
        Date currentDate = new Date();
        int questionId = questionRepository.save(Question.builder()
                .question(question)
                .questionDate(new Timestamp(currentDate.getTime()))
                .user(userRepository.findById(userId).orElse(null))
                .build()).getId();
        questionsKeyRepository.save(QuestionsKey.builder()
                .question(questionRepository.findById(questionId).orElseThrow())
                .keyWords(keyWordsRepository.findById(Integer.parseInt(category)).orElseThrow())
                .build());

    }

    public List<QuestionDto> getQuestions() {
        List<Question> questions = questionRepository.findAll();
        List<Question> sortedQuestionsDescending = questions.stream()
                .sorted(Comparator.comparing(Question::getQuestionDate).reversed())
                .collect(Collectors.toList());
        return sortedQuestionsDescending.stream()
                .map(e -> QuestionDto.builder()
                        .id(e.getId())
                        .question(e.getQuestion())
                        .questionDate(e.getQuestionDate())
                        .userId(e.getUser().getId())
                        .userName(e.getUser().getFio())
                        .build()
                ).collect(Collectors.toList());

    }

    public QuestionDto getQuestionById(int questionId) {
        Question question = questionRepository.findById(questionId).orElse(null);
        return QuestionDto.builder()
                .id(questionId)
                .questionDate(question.getQuestionDate())
                .userName(question.getUser().getFio())
                .question(question.getQuestion())
                .build();
    }

    public List<QuestionDto> getQuestionsByKey(int key) {
        List<QuestionsKey> questionsKeys = questionsKeyRepository.findQuestionsKeyByKeyWordsId(key);
        List<Question> list = questionsKeys.stream().
                map(e -> questionRepository.findById(e.getQuestion().getId()).orElseThrow()
                ).collect(Collectors.toList());
        return list.stream()
                .map(e -> QuestionDto.builder()
                        .id(e.getId())
                        .questionDate(e.getQuestionDate())
                        .question(e.getQuestion())
                        .userName(e.getUser().getFio())
                        .userId(e.getUser().getId())
                        .build()).collect(Collectors.toList());
    }

    public List<QuestionDto> getQuestionsByUserId(int userId) {
        List<Question> questions = questionRepository.findQuestionByUserId(userId);
        return questions.stream()
                .map(e -> QuestionDto.builder()
                        .id(e.getId())
                        .question(e.getQuestion())
                        .questionDate(e.getQuestionDate())
                        .userId(e.getUser().getId())
                        .userName(e.getUser().getFio())
                        .build()
                ).collect(Collectors.toList());
    }
}
