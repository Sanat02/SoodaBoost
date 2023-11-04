package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Builder
public class NewsDto {
    private int id;
    private Timestamp newsDate;
    private String title;
    private String description;
}
