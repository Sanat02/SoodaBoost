package com.example.demo.repository;

import com.example.demo.model.Click;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClickRepository extends JpaRepository<Click, Integer> {

    boolean existsByUserIdAndCompanyId(int userId, int companyId);
}
