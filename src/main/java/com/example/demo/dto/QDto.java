package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class QDto {
    private int id;
    private String question;
    private String category;
}
