package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Builder
public class ClickDto {
    private int id;
    private Timestamp clickDate;
    private int companyId;
    private int userId;
}
