package com.example.demo.controller;


import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.io.IOException;

@Controller
public class VideoConroller {
    @GetMapping("/video/{filename}")
    public ResponseEntity<byte[]> getVideo(@PathVariable String filename) throws IOException {
        Resource videoResource = new FileSystemResource("C:/Users/User/Downloads/GOS-main/GOS-main/data/videos/" + filename);

        byte[] videoBytes = videoResource.getInputStream().readAllBytes();

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_OCTET_STREAM)
                .body(videoBytes);
    }
}
