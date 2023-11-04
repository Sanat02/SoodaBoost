package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ApprovesDto {
    private int id;
    private int userId;
    private int companyId;
    private String userName;

}
