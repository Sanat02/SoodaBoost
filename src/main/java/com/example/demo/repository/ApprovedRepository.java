package com.example.demo.repository;

import com.example.demo.model.Approves;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApprovedRepository extends JpaRepository<Approves, Integer> {
}
