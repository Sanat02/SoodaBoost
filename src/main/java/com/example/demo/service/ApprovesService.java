package com.example.demo.service;

import com.example.demo.dto.ApprovesDto;
import com.example.demo.model.Approves;
import com.example.demo.repository.ApprovedRepository;
import com.example.demo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ApprovesService {
    private final ApprovedRepository approvedRepository;
    private final UserRepository userRepository;

    public List<ApprovesDto> getAllApproves() {
        List<Approves> approves = approvedRepository.findAll();
        return approves.stream()
                .map(e -> ApprovesDto.builder()
                        .id(e.getId())
                        .userId(e.getUserId())
                        .companyId(e.getCompanyId())
                        .userName(userRepository.findById(e.getUserId()).orElseThrow().getFio())
                        .build()
                ).collect(Collectors.toList());
    }
}
