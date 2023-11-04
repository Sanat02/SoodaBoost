package com.example.demo.service;

import com.example.demo.dto.VideoDto;
import com.example.demo.model.Video;
import com.example.demo.repository.VideoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class VideoService {
    private final VideoRepository videoRepository;

    public List<VideoDto> getAllVideos() {
        List<Video> videos = videoRepository.findAll();
        return videos.stream()
                .map(e -> VideoDto.builder()
                        .id(e.getId())
                        .filename(e.getFilename())
                        .description(e.getDescription())
                        .build()
                ).collect(Collectors.toList());
    }
}
