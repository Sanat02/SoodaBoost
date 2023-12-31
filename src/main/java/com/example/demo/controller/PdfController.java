package com.example.demo.controller;


import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;




import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;


@Controller
public class PdfController {

    @GetMapping("/pdf")
    public ResponseEntity<InputStreamResource> downloadPdf() throws IOException {
        String pdfFilePath = "C:/Users/User/Downloads/GOS-main/GOS-main/data/pdf/p1.pdf";

        HttpHeaders headers = new HttpHeaders();
        headers.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=p1.pdf");

        InputStream inputStream = new FileInputStream(pdfFilePath);
        InputStreamResource resource = new InputStreamResource(inputStream);

        return ResponseEntity.ok()
                .headers(headers)
                .contentType(MediaType.APPLICATION_PDF)
                .body(resource);
    }
}
