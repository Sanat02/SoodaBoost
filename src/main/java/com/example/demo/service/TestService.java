package com.example.demo.service;

import com.example.demo.dto.TestDto;
import com.example.demo.model.Test;
import com.example.demo.repository.AnswerRepository;
import com.example.demo.repository.QuestionRepository;
import com.example.demo.repository.TestRepository;
import com.example.demo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class TestService {
    private final TestRepository testRepository;
    private final UserRepository userRepository;
    private final QuestionRepository questionRepository;
    private final AnswerRepository answerRepository;

    public void saveTest(int userId, int score) {
        Date currentDate = new Date();
        String pas = "";
        if (score >= 4) {
            pas = "Passed";
        } else {
            pas = "Failure";
        }
        testRepository.save(Test.builder()
                .user(userRepository.findById(userId).orElse(null))
                .testDate(new Timestamp(currentDate.getTime()))
                .score(score)
                .passed(pas)
                .build());

    }

    public TestDto getTestByUserId(int userId) {
        Test test = testRepository.findByUserId(userId).orElse(null);
        if (test == null) {
            return null;
        } else {
            return TestDto.builder()
                    .testDate(test.getTestDate())
                    .userId(test.getUser().getId())
                    .passed(test.getPassed())
                    .percentage((int) (((double) test.getScore() / 6) * 100))
                    .score(test.getScore())
                    .build();
        }
    }

    public boolean hasThirtyDaysPassed(Timestamp timestamp) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date()); // Current time
        calendar.add(Calendar.DAY_OF_MONTH, -30);

        Timestamp thirtyDaysAgoTimestamp = new Timestamp(calendar.getTime().getTime());

        return timestamp.before(thirtyDaysAgoTimestamp);
    }

    public List<TestDto> getAllTests() {
        List<Test> tests = testRepository.findAll();
        return tests.stream().
                map(e -> TestDto.builder()
                        .id(e.getId())
                        .username(e.getUser().getFio())
                        .userId(e.getUser().getId())
                        .testDate(e.getTestDate())
                        .score(e.getScore())
                        .percentage((int) (((double) e.getScore() / 6) * 100))
                        .passed(e.getPassed())
                        .answers(answerRepository.findAnswerByUserId(e.getUser().getId()).size())
                        .asks(questionRepository.findQuestionByUserId(e.getUser().getId()).size())
                        .activeness(calculateActiveness(answerRepository.findAnswerByUserId(e.getUser().getId()).size() +
                                questionRepository.findQuestionByUserId(e.getUser().getId()).size()))
                        .build()
                ).collect(Collectors.toList());
    }

    private String calculateActiveness(int number) {
        if (number <= 2) {
            return "low";
        } else if ((number == 3 || number == 4)) {
            return "medium";
        } else {
            return "high";
        }
    }


}
