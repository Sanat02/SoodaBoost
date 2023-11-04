package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Builder
public class QuestionDto {
    private int id;
    private Timestamp questionDate;
    private String question;
    private String userName;
    private int userId;
}
