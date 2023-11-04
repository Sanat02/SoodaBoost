package com.example.demo.service;

import com.example.demo.model.Complain;
import com.example.demo.repository.ComplainRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;

@Service
@RequiredArgsConstructor
public class ComplainService {
    private final ComplainRepository complainRepository;

    public void saveComplain(int senderId, int questionId) {
        if (!complainRepository.existsComplainBySenderIdAndQuestionId(senderId, questionId)) {
            Date currentDate = new Date();
            complainRepository.save(Complain.builder()
                    .senderId(senderId)
                    .questionId(questionId)
                    .complainDate(new Timestamp(currentDate.getTime()))
                    .build());
        }
    }
}
