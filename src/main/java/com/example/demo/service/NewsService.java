package com.example.demo.service;

import com.example.demo.dto.NewsDto;
import com.example.demo.model.News;
import com.example.demo.repository.NewsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class NewsService {
    private final NewsRepository newsRepository;

    public List<NewsDto> getAllNews() {
        List<News> news = newsRepository.findAll();
        return news.stream()
                .map(e -> NewsDto.builder()
                        .newsDate(e.getNewsDate())
                        .description(e.getDescription())
                        .title(e.getTitle())
                        .build()
                ).collect(Collectors.toList());
    }
}
