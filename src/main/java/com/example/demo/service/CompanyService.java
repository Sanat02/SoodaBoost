package com.example.demo.service;

import com.example.demo.dto.CompanyDto;
import com.example.demo.model.Company;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.CompanyRepository;
import com.example.demo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CompanyService {
    private final CompanyRepository companyRepository;
    private final CategoryRepository categoryRepository;
    private final UserRepository userRepository;


    public List<CompanyDto> getCompanies() {
        List<Company> companies = companyRepository.findAll();
        return companies.stream()
                .map(e -> CompanyDto.builder()
                        .companyName(e.getCompanyName())
                        .description(e.getDescription())
                        .address(e.getAddress())
                        .id(e.getId())
                        .categoryName(categoryRepository.findById(e.getCategoryId()).orElse(null).getName())
                        .userName(userRepository.findById(e.getUserId()).orElse(null).getUsername())
                        .build()
                ).collect(Collectors.toList());
    }

    public CompanyDto getCompanyById(int companyId) {
        Company company = companyRepository.findById(companyId).orElseThrow();
        return CompanyDto.builder()
                .id(company.getId())
                .companyName(company.getCompanyName())
                .userId(company.getUserId())
                .address(company.getAddress())
                .description(company.getDescription())
                .categoryName(categoryRepository.findById(company.getCategoryId()).orElseThrow().getName())
                .address(company.getAddress())
                .build();
    }
}
