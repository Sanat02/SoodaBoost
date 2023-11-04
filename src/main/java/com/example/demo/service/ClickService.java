package com.example.demo.service;

import com.example.demo.model.Click;
import com.example.demo.repository.ClickRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;

@Service
@RequiredArgsConstructor
public class ClickService {
    private final ClickRepository clickRepository;

    public void saveClick(int userId, int companyId) {
        if (!clickRepository.existsByUserIdAndCompanyId(userId, companyId)) {
            Date currentDate = new Date();
            clickRepository.save(Click.builder()
                    .clickDate(new Timestamp(currentDate.getTime()))
                    .companyId(companyId)
                    .userId(userId)
                    .build());
        }
    }

    public boolean isClicked(int userId, int companyId) {
        return clickRepository.existsByUserIdAndCompanyId(userId, companyId);
    }
}
