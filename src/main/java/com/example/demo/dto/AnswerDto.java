package com.example.demo.dto;


import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Builder
public class AnswerDto {
    private int id;
    private Timestamp answerDate;
    private String answer;
    private String userName;
    private int userId;
    private int questionId;
}
