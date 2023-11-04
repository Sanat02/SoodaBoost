package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class CompanyDto {
    private  int id;
    private String companyName;
    private String description;
    private String address;
    private int categoryId;
    private int userId;
    private String categoryName;
    private String userName;
}
