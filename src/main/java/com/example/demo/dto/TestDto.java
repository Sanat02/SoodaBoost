package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Builder
public class TestDto {
    private  int id;
    private String username;
    private int userId;
    private Timestamp testDate;
    private int score;
    private String passed;
    private int percentage;
    private int answers;
    private int asks;
    private String activeness;
}
