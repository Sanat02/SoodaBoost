package com.example.demo.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class VideoDto {
    private int id;
    private String filename;
    private String description;
}
